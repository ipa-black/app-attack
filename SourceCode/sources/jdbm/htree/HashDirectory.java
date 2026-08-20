package jdbm.htree;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.Iterator;
import jdbm.RecordManager;
import jdbm.helper.FastIterator;
import jdbm.helper.IterationException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class HashDirectory extends HashNode implements Externalizable {
    static final int BIT_SIZE = 8;
    static final int MAX_CHILDREN = 256;
    static final int MAX_DEPTH = 3;
    static final long serialVersionUID = 1;
    private long[] _children;
    private byte _depth;
    private transient long _recid;
    private transient RecordManager _recman;

    public HashDirectory() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashDirectory(byte b2) {
        this._depth = b2;
        this._children = new long[256];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPersistenceContext(RecordManager recordManager, long j) {
        this._recman = recordManager;
        this._recid = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getRecid() {
        return this._recid;
    }

    boolean isEmpty() {
        int i = 0;
        while (true) {
            long[] jArr = this._children;
            if (i >= jArr.length) {
                return true;
            }
            if (jArr[i] != 0) {
                return false;
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object get(Object obj) throws IOException {
        long j = this._children[hashCode(obj)];
        if (j == 0) {
            return null;
        }
        HashNode hashNode = (HashNode) this._recman.fetch(j);
        if (hashNode instanceof HashDirectory) {
            HashDirectory hashDirectory = (HashDirectory) hashNode;
            hashDirectory.setPersistenceContext(this._recman, j);
            return hashDirectory.get(obj);
        }
        return ((HashBucket) hashNode).getValue(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object put(Object obj, Object obj2) throws IOException {
        if (obj2 == null) {
            return remove(obj);
        }
        int hashCode = hashCode(obj);
        long j = this._children[hashCode];
        if (j == 0) {
            HashBucket hashBucket = new HashBucket(this._depth + 1);
            Object addElement = hashBucket.addElement(obj, obj2);
            this._children[hashCode] = this._recman.insert(hashBucket);
            this._recman.update(this._recid, this);
            return addElement;
        }
        HashNode hashNode = (HashNode) this._recman.fetch(j);
        if (hashNode instanceof HashDirectory) {
            HashDirectory hashDirectory = (HashDirectory) hashNode;
            hashDirectory.setPersistenceContext(this._recman, j);
            return hashDirectory.put(obj, obj2);
        }
        HashBucket hashBucket2 = (HashBucket) hashNode;
        if (hashBucket2.hasRoom()) {
            Object addElement2 = hashBucket2.addElement(obj, obj2);
            this._recman.update(j, hashBucket2);
            return addElement2;
        }
        byte b2 = this._depth;
        if (b2 == 3) {
            throw new RuntimeException(new StringBuffer("Cannot create deeper directory. Depth=").append((int) this._depth).toString());
        }
        HashDirectory hashDirectory2 = new HashDirectory((byte) (b2 + 1));
        long insert = this._recman.insert(hashDirectory2);
        hashDirectory2.setPersistenceContext(this._recman, insert);
        this._children[hashCode] = insert;
        this._recman.update(this._recid, this);
        this._recman.delete(j);
        ArrayList keys = hashBucket2.getKeys();
        ArrayList values = hashBucket2.getValues();
        int size = keys.size();
        for (int i = 0; i < size; i++) {
            hashDirectory2.put(keys.get(i), values.get(i));
        }
        return hashDirectory2.put(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object remove(Object obj) throws IOException {
        int hashCode = hashCode(obj);
        long j = this._children[hashCode];
        if (j == 0) {
            return null;
        }
        HashNode hashNode = (HashNode) this._recman.fetch(j);
        if (hashNode instanceof HashDirectory) {
            HashDirectory hashDirectory = (HashDirectory) hashNode;
            hashDirectory.setPersistenceContext(this._recman, j);
            Object remove = hashDirectory.remove(obj);
            if (remove != null && hashDirectory.isEmpty()) {
                this._recman.delete(j);
                this._children[hashCode] = 0;
                this._recman.update(this._recid, this);
            }
            return remove;
        }
        HashBucket hashBucket = (HashBucket) hashNode;
        Object removeElement = hashBucket.removeElement(obj);
        if (removeElement != null) {
            if (hashBucket.getElementCount() >= 1) {
                this._recman.update(j, hashBucket);
            } else {
                this._recman.delete(j);
                this._children[hashCode] = 0;
                this._recman.update(this._recid, this);
            }
        }
        return removeElement;
    }

    private int hashCode(Object obj) {
        return ((obj.hashCode() & hashMask()) >>> ((3 - this._depth) * 8)) % 256;
    }

    int hashMask() {
        return 255 << ((3 - this._depth) * 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FastIterator keys() throws IOException {
        return new HDIterator(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FastIterator values() throws IOException {
        return new HDIterator(false);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(this._depth);
        objectOutput.writeObject(this._children);
    }

    @Override // java.io.Externalizable
    public synchronized void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this._depth = objectInput.readByte();
        this._children = (long[]) objectInput.readObject();
    }

    /* loaded from: classes5.dex */
    public class HDIterator extends FastIterator {
        private HashDirectory _dir;
        private Iterator _iter;
        private boolean _iterateKeys;
        private ArrayList _dirStack = new ArrayList();
        private ArrayList _childStack = new ArrayList();
        private int _child = -1;

        HDIterator(boolean z) throws IOException {
            this._dir = HashDirectory.this;
            this._iterateKeys = z;
            prepareNext();
        }

        @Override // jdbm.helper.FastIterator
        public Object next() {
            Iterator it = this._iter;
            if (it != null && it.hasNext()) {
                return this._iter.next();
            }
            try {
                prepareNext();
                Iterator it2 = this._iter;
                if (it2 == null || !it2.hasNext()) {
                    return null;
                }
                return next();
            } catch (IOException e2) {
                throw new IterationException(e2);
            }
        }

        private void prepareNext() throws IOException {
            int i;
            ArrayList arrayList;
            ArrayList arrayList2;
            long j = 0;
            do {
                int i2 = this._child + 1;
                this._child = i2;
                if (i2 < 256) {
                    j = this._dir._children[this._child];
                } else if (this._dirStack.isEmpty()) {
                    return;
                } else {
                    this._dir = (HashDirectory) this._dirStack.remove(arrayList.size() - 1);
                    this._child = ((Integer) this._childStack.remove(arrayList2.size() - 1)).intValue();
                }
                i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            } while (i == 0);
            if (i != 0) {
                HashNode hashNode = (HashNode) HashDirectory.this._recman.fetch(j);
                if (hashNode instanceof HashDirectory) {
                    this._dirStack.add(this._dir);
                    this._childStack.add(new Integer(this._child));
                    HashDirectory hashDirectory = (HashDirectory) hashNode;
                    this._dir = hashDirectory;
                    this._child = -1;
                    hashDirectory.setPersistenceContext(HashDirectory.this._recman, j);
                    prepareNext();
                    return;
                }
                HashBucket hashBucket = (HashBucket) hashNode;
                if (this._iterateKeys) {
                    this._iter = hashBucket.getKeys().iterator();
                    return;
                } else {
                    this._iter = hashBucket.getValues().iterator();
                    return;
                }
            }
            throw new Error("child_recid cannot be 0");
        }
    }
}
