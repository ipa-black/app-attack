package jdbm.btree;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.Comparator;
import jdbm.RecordManager;
import jdbm.btree.BPage;
import jdbm.helper.Serializer;
import jdbm.helper.Tuple;
import jdbm.helper.TupleBrowser;
/* loaded from: classes5.dex */
public class BTree implements Externalizable {
    private static final boolean DEBUG = false;
    public static final int DEFAULT_SIZE = 16;
    static final long serialVersionUID = 1;
    private transient BPage _bpageSerializer;
    protected Comparator _comparator;
    protected int _entries;
    private int _height;
    protected Serializer _keySerializer;
    protected int _pageSize;
    private transient long _recid;
    protected transient RecordManager _recman;
    private transient long _root;
    protected Serializer _valueSerializer;

    public static BTree createInstance(RecordManager recordManager, Comparator comparator) throws IOException {
        return createInstance(recordManager, comparator, null, null, 16);
    }

    public static BTree createInstance(RecordManager recordManager, Comparator comparator, Serializer serializer, Serializer serializer2) throws IOException {
        return createInstance(recordManager, comparator, serializer, serializer2, 16);
    }

    public static BTree createInstance(RecordManager recordManager, Comparator comparator, Serializer serializer, Serializer serializer2, int i) throws IOException {
        if (recordManager != null) {
            if (comparator == null) {
                throw new IllegalArgumentException("Argument 'comparator' is null");
            }
            if (!(comparator instanceof Serializable)) {
                throw new IllegalArgumentException("Argument 'comparator' must be serializable");
            }
            if (serializer != null && !(serializer instanceof Serializable)) {
                throw new IllegalArgumentException("Argument 'keySerializer' must be serializable");
            }
            if (serializer2 == null || (serializer2 instanceof Serializable)) {
                if ((i & 1) != 0) {
                    throw new IllegalArgumentException("Argument 'pageSize' must be even");
                }
                BTree bTree = new BTree();
                bTree._recman = recordManager;
                bTree._comparator = comparator;
                bTree._keySerializer = serializer;
                bTree._valueSerializer = serializer2;
                bTree._pageSize = i;
                BPage bPage = new BPage();
                bTree._bpageSerializer = bPage;
                bPage._btree = bTree;
                bTree._recid = recordManager.insert(bTree);
                return bTree;
            }
            throw new IllegalArgumentException("Argument 'valueSerializer' must be serializable");
        }
        throw new IllegalArgumentException("Argument 'recman' is null");
    }

    public static BTree load(RecordManager recordManager, long j) throws IOException {
        BTree bTree = (BTree) recordManager.fetch(j);
        bTree._recid = j;
        bTree._recman = recordManager;
        BPage bPage = new BPage();
        bTree._bpageSerializer = bPage;
        bPage._btree = bTree;
        return bTree;
    }

    public synchronized Object insert(Object obj, Object obj2, boolean z) throws IOException {
        boolean z2;
        if (obj != null) {
            if (obj2 == null) {
                throw new IllegalArgumentException("Argument 'value' is null");
            }
            BPage root = getRoot();
            boolean z3 = true;
            if (root == null) {
                this._root = new BPage(this, obj, obj2)._recid;
                this._height = 1;
                this._entries = 1;
                this._recman.update(this._recid, this);
                return null;
            }
            BPage.InsertResult insert = root.insert(this._height, obj, obj2, z);
            if (insert._overflow != null) {
                this._root = new BPage(this, root, insert._overflow)._recid;
                this._height++;
                z2 = true;
            } else {
                z2 = false;
            }
            if (insert._existing == null) {
                this._entries++;
            } else {
                z3 = z2;
            }
            if (z3) {
                this._recman.update(this._recid, this);
            }
            return insert._existing;
        }
        throw new IllegalArgumentException("Argument 'key' is null");
    }

    public synchronized Object remove(Object obj) throws IOException {
        boolean z;
        if (obj == null) {
            throw new IllegalArgumentException("Argument 'key' is null");
        }
        BPage root = getRoot();
        if (root == null) {
            return null;
        }
        BPage.RemoveResult remove = root.remove(this._height, obj);
        boolean z2 = true;
        if (remove._underflow && root.isEmpty()) {
            int i = this._height - 1;
            this._height = i;
            if (i == 0) {
                this._root = 0L;
            } else {
                this._root = root.childBPage(this._pageSize - 1)._recid;
            }
            z = true;
        } else {
            z = false;
        }
        if (remove._value != null) {
            this._entries--;
        } else {
            z2 = z;
        }
        if (z2) {
            this._recman.update(this._recid, this);
        }
        return remove._value;
    }

    public synchronized Object find(Object obj) throws IOException {
        if (obj == null) {
            throw new IllegalArgumentException("Argument 'key' is null");
        }
        BPage root = getRoot();
        if (root == null) {
            return null;
        }
        Tuple tuple = new Tuple(null, null);
        if (root.find(this._height, obj).getNext(tuple)) {
            if (this._comparator.compare(obj, tuple.getKey()) != 0) {
                return null;
            }
            return tuple.getValue();
        }
        return null;
    }

    public synchronized Tuple findGreaterOrEqual(Object obj) throws IOException {
        if (obj == null) {
            return null;
        }
        Tuple tuple = new Tuple(null, null);
        if (browse(obj).getNext(tuple)) {
            return tuple;
        }
        return null;
    }

    public synchronized TupleBrowser browse() throws IOException {
        BPage root = getRoot();
        if (root == null) {
            return EmptyBrowser.INSTANCE;
        }
        return root.findFirst();
    }

    public synchronized TupleBrowser browse(Object obj) throws IOException {
        BPage root = getRoot();
        if (root == null) {
            return EmptyBrowser.INSTANCE;
        }
        return root.find(this._height, obj);
    }

    public synchronized int size() {
        return this._entries;
    }

    public long getRecid() {
        return this._recid;
    }

    private BPage getRoot() throws IOException {
        long j = this._root;
        if (j == 0) {
            return null;
        }
        BPage bPage = (BPage) this._recman.fetch(j, this._bpageSerializer);
        bPage._recid = this._root;
        bPage._btree = this;
        return bPage;
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this._comparator = (Comparator) objectInput.readObject();
        this._keySerializer = (Serializer) objectInput.readObject();
        this._valueSerializer = (Serializer) objectInput.readObject();
        this._height = objectInput.readInt();
        this._root = objectInput.readLong();
        this._pageSize = objectInput.readInt();
        this._entries = objectInput.readInt();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this._comparator);
        objectOutput.writeObject(this._keySerializer);
        objectOutput.writeObject(this._valueSerializer);
        objectOutput.writeInt(this._height);
        objectOutput.writeLong(this._root);
        objectOutput.writeInt(this._pageSize);
        objectOutput.writeInt(this._entries);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class EmptyBrowser extends TupleBrowser {
        static TupleBrowser INSTANCE = new EmptyBrowser();

        @Override // jdbm.helper.TupleBrowser
        public boolean getNext(Tuple tuple) {
            return false;
        }

        @Override // jdbm.helper.TupleBrowser
        public boolean getPrevious(Tuple tuple) {
            return false;
        }

        EmptyBrowser() {
        }
    }
}
