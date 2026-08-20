package jdbm.btree;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import jdbm.helper.Serializer;
import jdbm.helper.Tuple;
import jdbm.helper.TupleBrowser;
/* loaded from: classes5.dex */
public final class BPage implements Serializer {
    private static final boolean DEBUG = false;
    static final long serialVersionUID = 1;
    transient BTree _btree;
    protected long[] _children;
    protected int _first;
    protected boolean _isLeaf;
    protected Object[] _keys;
    protected long _next;
    protected long _previous;
    protected transient long _recid;
    protected Object[] _values;

    public BPage() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BPage(BTree bTree, BPage bPage, BPage bPage2) throws IOException {
        this._btree = bTree;
        this._isLeaf = false;
        this._first = bTree._pageSize - 2;
        Object[] objArr = new Object[this._btree._pageSize];
        this._keys = objArr;
        objArr[this._btree._pageSize - 2] = bPage2.getLargestKey();
        this._keys[this._btree._pageSize - 1] = bPage.getLargestKey();
        long[] jArr = new long[this._btree._pageSize];
        this._children = jArr;
        jArr[this._btree._pageSize - 2] = bPage2._recid;
        this._children[this._btree._pageSize - 1] = bPage._recid;
        this._recid = this._btree._recman.insert(this, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BPage(BTree bTree, Object obj, Object obj2) throws IOException {
        this._btree = bTree;
        this._isLeaf = true;
        this._first = bTree._pageSize - 2;
        Object[] objArr = new Object[this._btree._pageSize];
        this._keys = objArr;
        objArr[this._btree._pageSize - 2] = obj;
        this._keys[this._btree._pageSize - 1] = null;
        Object[] objArr2 = new Object[this._btree._pageSize];
        this._values = objArr2;
        objArr2[this._btree._pageSize - 2] = obj2;
        this._values[this._btree._pageSize - 1] = null;
        this._recid = this._btree._recman.insert(this, this);
    }

    BPage(BTree bTree, boolean z) throws IOException {
        this._btree = bTree;
        this._isLeaf = z;
        this._first = bTree._pageSize / 2;
        this._keys = new Object[this._btree._pageSize];
        if (z) {
            this._values = new Object[this._btree._pageSize];
        } else {
            this._children = new long[this._btree._pageSize];
        }
        this._recid = this._btree._recman.insert(this, this);
    }

    Object getLargestKey() {
        return this._keys[this._btree._pageSize - 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEmpty() {
        return this._isLeaf ? this._first == this._values.length - 1 : this._first == this._children.length - 1;
    }

    boolean isFull() {
        return this._first == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TupleBrowser find(int i, Object obj) throws IOException {
        int findChildren = findChildren(obj);
        int i2 = i - 1;
        if (i2 == 0) {
            return new Browser(this, findChildren);
        }
        return childBPage(findChildren).find(i2, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TupleBrowser findFirst() throws IOException {
        if (this._isLeaf) {
            return new Browser(this, this._first);
        }
        return childBPage(this._first).findFirst();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InsertResult insert(int i, Object obj, Object obj2, boolean z) throws IOException {
        long j;
        InsertResult insertResult;
        int findChildren = findChildren(obj);
        int i2 = i - 1;
        if (i2 == 0) {
            insertResult = new InsertResult();
            if (compare(obj, this._keys[findChildren]) == 0) {
                insertResult._existing = this._values[findChildren];
                if (z) {
                    this._values[findChildren] = obj2;
                    this._btree._recman.update(this._recid, this, this);
                }
                return insertResult;
            }
            j = -1;
        } else {
            BPage childBPage = childBPage(findChildren);
            InsertResult insert = childBPage.insert(i2, obj, obj2, z);
            if (insert._existing != null || insert._overflow == null) {
                return insert;
            }
            Object largestKey = insert._overflow.getLargestKey();
            j = insert._overflow._recid;
            this._keys[findChildren] = childBPage.getLargestKey();
            insert._overflow = null;
            insertResult = insert;
            obj = largestKey;
        }
        if (!isFull()) {
            if (i2 == 0) {
                insertEntry(this, findChildren - 1, obj, obj2);
            } else {
                insertChild(this, findChildren - 1, obj, j);
            }
            this._btree._recman.update(this._recid, this, this);
            return insertResult;
        }
        int i3 = this._btree._pageSize >> 1;
        BPage bPage = new BPage(this._btree, this._isLeaf);
        if (findChildren < i3) {
            if (i2 == 0) {
                copyEntries(this, 0, bPage, i3, findChildren);
                int i4 = i3 + findChildren;
                setEntry(bPage, i4, obj, obj2);
                copyEntries(this, findChildren, bPage, i4 + 1, (i3 - findChildren) - 1);
            } else {
                copyChildren(this, 0, bPage, i3, findChildren);
                int i5 = i3 + findChildren;
                setChild(bPage, i5, obj, j);
                copyChildren(this, findChildren, bPage, i5 + 1, (i3 - findChildren) - 1);
            }
        } else if (i2 == 0) {
            copyEntries(this, 0, bPage, i3, i3);
            copyEntries(this, i3, this, i3 - 1, findChildren - i3);
            setEntry(this, findChildren - 1, obj, obj2);
        } else {
            copyChildren(this, 0, bPage, i3, i3);
            copyChildren(this, i3, this, i3 - 1, findChildren - i3);
            setChild(this, findChildren - 1, obj, j);
        }
        this._first = i3 - 1;
        for (int i6 = 0; i6 < this._first; i6++) {
            if (i2 == 0) {
                setEntry(this, i6, null, null);
            } else {
                setChild(this, i6, null, -1L);
            }
        }
        if (this._isLeaf) {
            bPage._previous = this._previous;
            bPage._next = this._recid;
            long j2 = this._previous;
            if (j2 != 0) {
                BPage loadBPage = loadBPage(j2);
                loadBPage._next = bPage._recid;
                this._btree._recman.update(this._previous, loadBPage, this);
            }
            this._previous = bPage._recid;
        }
        this._btree._recman.update(this._recid, this, this);
        this._btree._recman.update(bPage._recid, bPage, this);
        insertResult._overflow = bPage;
        return insertResult;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RemoveResult remove(int i, Object obj) throws IOException {
        RemoveResult remove;
        int i2 = this._btree._pageSize / 2;
        int findChildren = findChildren(obj);
        int i3 = i - 1;
        if (i3 == 0) {
            if (compare(this._keys[findChildren], obj) != 0) {
                throw new IllegalArgumentException(new StringBuffer("Key not found: ").append(obj).toString());
            }
            remove = new RemoveResult();
            remove._value = this._values[findChildren];
            removeEntry(this, findChildren);
            this._btree._recman.update(this._recid, this, this);
        } else {
            BPage childBPage = childBPage(findChildren);
            remove = childBPage.remove(i3, obj);
            this._keys[findChildren] = childBPage.getLargestKey();
            this._btree._recman.update(this._recid, this, this);
            if (remove._underflow) {
                int i4 = i2 + 1;
                if (childBPage._first != i4) {
                    throw new IllegalStateException("Error during underflow [1]");
                }
                if (findChildren < this._children.length - 1) {
                    BPage childBPage2 = childBPage(findChildren + 1);
                    int i5 = childBPage2._first;
                    if (i5 < i2) {
                        int i6 = ((i2 - i5) + 1) / 2;
                        childBPage2._first = i5 + i6;
                        childBPage._first -= i6;
                        if (childBPage._isLeaf) {
                            copyEntries(childBPage, i4, childBPage, i4 - i6, i2 - 1);
                            copyEntries(childBPage2, i5, childBPage, (i2 * 2) - i6, i6);
                        } else {
                            copyChildren(childBPage, i4, childBPage, i4 - i6, i2 - 1);
                            copyChildren(childBPage2, i5, childBPage, (i2 * 2) - i6, i6);
                        }
                        for (int i7 = i5; i7 < i5 + i6; i7++) {
                            if (childBPage2._isLeaf) {
                                setEntry(childBPage2, i7, null, null);
                            } else {
                                setChild(childBPage2, i7, null, -1L);
                            }
                        }
                        this._keys[findChildren] = childBPage.getLargestKey();
                        this._btree._recman.update(this._recid, this, this);
                        this._btree._recman.update(childBPage2._recid, childBPage2, this);
                        this._btree._recman.update(childBPage._recid, childBPage, this);
                    } else if (i5 != i2) {
                        throw new IllegalStateException("Error during underflow [2]");
                    } else {
                        childBPage2._first = 1;
                        if (childBPage._isLeaf) {
                            copyEntries(childBPage, i4, childBPage2, 1, i2 - 1);
                        } else {
                            copyChildren(childBPage, i4, childBPage2, 1, i2 - 1);
                        }
                        this._btree._recman.update(childBPage2._recid, childBPage2, this);
                        if (this._isLeaf) {
                            int i8 = this._first;
                            copyEntries(this, i8, this, i8 + 1, findChildren - i8);
                            setEntry(this, this._first, null, null);
                        } else {
                            int i9 = this._first;
                            copyChildren(this, i9, this, i9 + 1, findChildren - i9);
                            setChild(this, this._first, null, -1L);
                        }
                        this._first++;
                        this._btree._recman.update(this._recid, this, this);
                        long j = childBPage._previous;
                        if (j != 0) {
                            BPage loadBPage = loadBPage(j);
                            loadBPage._next = childBPage._next;
                            this._btree._recman.update(loadBPage._recid, loadBPage, this);
                        }
                        long j2 = childBPage._next;
                        if (j2 != 0) {
                            BPage loadBPage2 = loadBPage(j2);
                            loadBPage2._previous = childBPage._previous;
                            this._btree._recman.update(loadBPage2._recid, loadBPage2, this);
                        }
                        this._btree._recman.delete(childBPage._recid);
                    }
                } else {
                    int i10 = findChildren - 1;
                    BPage childBPage3 = childBPage(i10);
                    int i11 = childBPage3._first;
                    if (i11 < i2) {
                        int i12 = ((i2 - i11) + 1) / 2;
                        childBPage3._first = i11 + i12;
                        childBPage._first -= i12;
                        if (childBPage._isLeaf) {
                            int i13 = i2 * 2;
                            copyEntries(childBPage3, i13 - i12, childBPage, i4 - i12, i12);
                            copyEntries(childBPage3, i11, childBPage3, i11 + i12, (i13 - i11) - i12);
                        } else {
                            int i14 = i2 * 2;
                            copyChildren(childBPage3, i14 - i12, childBPage, i4 - i12, i12);
                            copyChildren(childBPage3, i11, childBPage3, i11 + i12, (i14 - i11) - i12);
                        }
                        for (int i15 = i11; i15 < i11 + i12; i15++) {
                            if (childBPage3._isLeaf) {
                                setEntry(childBPage3, i15, null, null);
                            } else {
                                setChild(childBPage3, i15, null, -1L);
                            }
                        }
                        this._keys[i10] = childBPage3.getLargestKey();
                        this._btree._recman.update(this._recid, this, this);
                        this._btree._recman.update(childBPage3._recid, childBPage3, this);
                        this._btree._recman.update(childBPage._recid, childBPage, this);
                    } else if (i11 != i2) {
                        throw new IllegalStateException("Error during underflow [3]");
                    } else {
                        childBPage._first = 1;
                        if (childBPage._isLeaf) {
                            copyEntries(childBPage3, i2, childBPage, 1, i2);
                        } else {
                            copyChildren(childBPage3, i2, childBPage, 1, i2);
                        }
                        this._btree._recman.update(childBPage._recid, childBPage, this);
                        if (this._isLeaf) {
                            int i16 = this._first;
                            copyEntries(this, i16, this, i16 + 1, i10 - i16);
                            setEntry(this, this._first, null, null);
                        } else {
                            int i17 = this._first;
                            copyChildren(this, i17, this, i17 + 1, i10 - i17);
                            setChild(this, this._first, null, -1L);
                        }
                        this._first++;
                        this._btree._recman.update(this._recid, this, this);
                        long j3 = childBPage3._previous;
                        if (j3 != 0) {
                            BPage loadBPage3 = loadBPage(j3);
                            loadBPage3._next = childBPage3._next;
                            this._btree._recman.update(loadBPage3._recid, loadBPage3, this);
                        }
                        long j4 = childBPage3._next;
                        if (j4 != 0) {
                            BPage loadBPage4 = loadBPage(j4);
                            loadBPage4._previous = childBPage3._previous;
                            this._btree._recman.update(loadBPage4._recid, loadBPage4, this);
                        }
                        this._btree._recman.delete(childBPage3._recid);
                    }
                }
            }
        }
        remove._underflow = this._first > i2;
        return remove;
    }

    private int findChildren(Object obj) {
        int i = this._first;
        int i2 = this._btree._pageSize - 1;
        while (i < i2) {
            int i3 = (i + i2) / 2;
            if (compare(this._keys[i3], obj) < 0) {
                i = i3 + 1;
            } else {
                i2 = i3;
            }
        }
        return i2;
    }

    private static void insertEntry(BPage bPage, int i, Object obj, Object obj2) {
        Object[] objArr = bPage._keys;
        Object[] objArr2 = bPage._values;
        int i2 = bPage._first;
        int i3 = (i - i2) + 1;
        int i4 = i2 - 1;
        System.arraycopy(objArr, i2, objArr, i4, i3);
        System.arraycopy(objArr2, i2, objArr2, i4, i3);
        bPage._first--;
        objArr[i] = obj;
        objArr2[i] = obj2;
    }

    private static void insertChild(BPage bPage, int i, Object obj, long j) {
        Object[] objArr = bPage._keys;
        long[] jArr = bPage._children;
        int i2 = bPage._first;
        int i3 = (i - i2) + 1;
        int i4 = i2 - 1;
        System.arraycopy(objArr, i2, objArr, i4, i3);
        System.arraycopy(jArr, i2, jArr, i4, i3);
        bPage._first--;
        objArr[i] = obj;
        jArr[i] = j;
    }

    private static void removeEntry(BPage bPage, int i) {
        Object[] objArr = bPage._keys;
        Object[] objArr2 = bPage._values;
        int i2 = bPage._first;
        int i3 = i - i2;
        int i4 = i2 + 1;
        System.arraycopy(objArr, i2, objArr, i4, i3);
        objArr[i2] = null;
        System.arraycopy(objArr2, i2, objArr2, i4, i3);
        objArr2[i2] = null;
        bPage._first++;
    }

    private static void setEntry(BPage bPage, int i, Object obj, Object obj2) {
        bPage._keys[i] = obj;
        bPage._values[i] = obj2;
    }

    private static void setChild(BPage bPage, int i, Object obj, long j) {
        bPage._keys[i] = obj;
        bPage._children[i] = j;
    }

    private static void copyEntries(BPage bPage, int i, BPage bPage2, int i2, int i3) {
        System.arraycopy(bPage._keys, i, bPage2._keys, i2, i3);
        System.arraycopy(bPage._values, i, bPage2._values, i2, i3);
    }

    private static void copyChildren(BPage bPage, int i, BPage bPage2, int i2, int i3) {
        System.arraycopy(bPage._keys, i, bPage2._keys, i2, i3);
        System.arraycopy(bPage._children, i, bPage2._children, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BPage childBPage(int i) throws IOException {
        return loadBPage(this._children[i]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BPage loadBPage(long j) throws IOException {
        BPage bPage = (BPage) this._btree._recman.fetch(j, this);
        bPage._recid = j;
        bPage._btree = this._btree;
        return bPage;
    }

    private final int compare(Object obj, Object obj2) {
        if (obj == null) {
            return 1;
        }
        if (obj2 == null) {
            return -1;
        }
        return this._btree._comparator.compare(obj, obj2);
    }

    static byte[] readByteArray(ObjectInput objectInput) throws IOException {
        int readInt = objectInput.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        objectInput.readFully(bArr);
        return bArr;
    }

    static void writeByteArray(ObjectOutput objectOutput, byte[] bArr) throws IOException {
        if (bArr == null) {
            objectOutput.writeInt(-1);
            return;
        }
        objectOutput.writeInt(bArr.length);
        objectOutput.write(bArr);
    }

    private void dump(int i) {
        String str = "";
        for (int i2 = 0; i2 < i; i2++) {
            str = new StringBuffer().append(str).append("    ").toString();
        }
        System.out.println(new StringBuffer().append(str).append("-------------------------------------- BPage recid=").append(this._recid).toString());
        System.out.println(new StringBuffer().append(str).append("first=").append(this._first).toString());
        for (int i3 = 0; i3 < this._btree._pageSize; i3++) {
            if (this._isLeaf) {
                System.out.println(new StringBuffer().append(str).append("BPage [").append(i3).append("] ").append(this._keys[i3]).append(" ").append(this._values[i3]).toString());
            } else {
                System.out.println(new StringBuffer().append(str).append("BPage [").append(i3).append("] ").append(this._keys[i3]).append(" ").append(this._children[i3]).toString());
            }
        }
        System.out.println(new StringBuffer().append(str).append("--------------------------------------").toString());
    }

    void dumpRecursive(int i, int i2) throws IOException {
        int i3 = i - 1;
        int i4 = i2 + 1;
        if (i3 > 0) {
            for (int i5 = this._first; i5 < this._btree._pageSize && this._keys[i5] != null; i5++) {
                BPage childBPage = childBPage(i5);
                childBPage.dump(i4);
                childBPage.dumpRecursive(i3, i4);
            }
        }
    }

    private void assertConsistency() {
        int i = this._first;
        while (i < this._btree._pageSize - 1) {
            Object[] objArr = this._keys;
            i++;
            if (compare((byte[]) objArr[i], (byte[]) objArr[i]) >= 0) {
                dump(0);
                throw new Error("BPage not ordered");
            }
        }
    }

    void assertConsistencyRecursive(int i) throws IOException {
        assertConsistency();
        int i2 = i - 1;
        if (i2 > 0) {
            for (int i3 = this._first; i3 < this._btree._pageSize && this._keys[i3] != null; i3++) {
                BPage childBPage = childBPage(i3);
                if (compare((byte[]) this._keys[i3], childBPage.getLargestKey()) != 0) {
                    dump(0);
                    childBPage.dump(0);
                    throw new Error("Invalid child subordinate key");
                }
                childBPage.assertConsistencyRecursive(i2);
            }
        }
    }

    @Override // jdbm.helper.Serializer
    public Object deserialize(byte[] bArr) throws IOException {
        BPage bPage = new BPage();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
        boolean readBoolean = objectInputStream.readBoolean();
        bPage._isLeaf = readBoolean;
        if (readBoolean) {
            bPage._previous = objectInputStream.readLong();
            bPage._next = objectInputStream.readLong();
        }
        bPage._first = objectInputStream.readInt();
        bPage._keys = new Object[this._btree._pageSize];
        try {
            for (int i = bPage._first; i < this._btree._pageSize; i++) {
                if (this._btree._keySerializer == null) {
                    bPage._keys[i] = objectInputStream.readObject();
                } else {
                    byte[] readByteArray = readByteArray(objectInputStream);
                    if (readByteArray != null) {
                        bPage._keys[i] = this._btree._keySerializer.deserialize(readByteArray);
                    }
                }
            }
            if (bPage._isLeaf) {
                bPage._values = new Object[this._btree._pageSize];
                try {
                    for (int i2 = bPage._first; i2 < this._btree._pageSize; i2++) {
                        if (this._btree._valueSerializer == null) {
                            bPage._values[i2] = objectInputStream.readObject();
                        } else {
                            byte[] readByteArray2 = readByteArray(objectInputStream);
                            if (readByteArray2 != null) {
                                bPage._values[i2] = this._btree._valueSerializer.deserialize(readByteArray2);
                            }
                        }
                    }
                } catch (ClassNotFoundException e2) {
                    throw new IOException(e2.getMessage());
                }
            } else {
                bPage._children = new long[this._btree._pageSize];
                for (int i3 = bPage._first; i3 < this._btree._pageSize; i3++) {
                    bPage._children[i3] = objectInputStream.readLong();
                }
            }
            objectInputStream.close();
            byteArrayInputStream.close();
            return bPage;
        } catch (ClassNotFoundException e3) {
            throw new IOException(e3.getMessage());
        }
    }

    @Override // jdbm.helper.Serializer
    public byte[] serialize(Object obj) throws IOException {
        BPage bPage = (BPage) obj;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        objectOutputStream.writeBoolean(bPage._isLeaf);
        if (bPage._isLeaf) {
            objectOutputStream.writeLong(bPage._previous);
            objectOutputStream.writeLong(bPage._next);
        }
        objectOutputStream.writeInt(bPage._first);
        for (int i = bPage._first; i < this._btree._pageSize; i++) {
            if (this._btree._keySerializer == null) {
                objectOutputStream.writeObject(bPage._keys[i]);
            } else if (bPage._keys[i] != null) {
                writeByteArray(objectOutputStream, this._btree._keySerializer.serialize(bPage._keys[i]));
            } else {
                writeByteArray(objectOutputStream, null);
            }
        }
        if (bPage._isLeaf) {
            for (int i2 = bPage._first; i2 < this._btree._pageSize; i2++) {
                if (this._btree._valueSerializer == null) {
                    objectOutputStream.writeObject(bPage._values[i2]);
                } else if (bPage._values[i2] != null) {
                    writeByteArray(objectOutputStream, this._btree._valueSerializer.serialize(bPage._values[i2]));
                } else {
                    writeByteArray(objectOutputStream, null);
                }
            }
        } else {
            for (int i3 = bPage._first; i3 < this._btree._pageSize; i3++) {
                objectOutputStream.writeLong(bPage._children[i3]);
            }
        }
        objectOutputStream.flush();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        objectOutputStream.close();
        byteArrayOutputStream.close();
        return byteArray;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class InsertResult {
        Object _existing;
        BPage _overflow;

        InsertResult() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class RemoveResult {
        boolean _underflow;
        Object _value;

        RemoveResult() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class Browser extends TupleBrowser {
        private int _index;
        private BPage _page;

        Browser(BPage bPage, int i) {
            this._page = bPage;
            this._index = i;
        }

        @Override // jdbm.helper.TupleBrowser
        public boolean getNext(Tuple tuple) throws IOException {
            if (this._index < this._page._btree._pageSize) {
                if (this._page._keys[this._index] == null) {
                    return false;
                }
            } else if (this._page._next != 0) {
                BPage bPage = this._page;
                BPage loadBPage = bPage.loadBPage(bPage._next);
                this._page = loadBPage;
                this._index = loadBPage._first;
            }
            tuple.setKey(this._page._keys[this._index]);
            tuple.setValue(this._page._values[this._index]);
            this._index++;
            return true;
        }

        @Override // jdbm.helper.TupleBrowser
        public boolean getPrevious(Tuple tuple) throws IOException {
            if (this._index == this._page._first) {
                if (this._page._previous == 0) {
                    return false;
                }
                BPage bPage = this._page;
                BPage loadBPage = bPage.loadBPage(bPage._previous);
                this._page = loadBPage;
                this._index = loadBPage._btree._pageSize;
            }
            this._index--;
            tuple.setKey(this._page._keys[this._index]);
            tuple.setValue(this._page._values[this._index]);
            return true;
        }
    }
}
