package jdbm.htree;

import java.io.IOException;
import jdbm.RecordManager;
import jdbm.helper.FastIterator;
/* loaded from: classes5.dex */
public class HTree {
    private HashDirectory _root;

    private HTree(HashDirectory hashDirectory) {
        this._root = hashDirectory;
    }

    public static HTree createInstance(RecordManager recordManager) throws IOException {
        HashDirectory hashDirectory = new HashDirectory((byte) 0);
        hashDirectory.setPersistenceContext(recordManager, recordManager.insert(hashDirectory));
        return new HTree(hashDirectory);
    }

    public static HTree load(RecordManager recordManager, long j) throws IOException {
        HashDirectory hashDirectory = (HashDirectory) recordManager.fetch(j);
        hashDirectory.setPersistenceContext(recordManager, j);
        return new HTree(hashDirectory);
    }

    public synchronized void put(Object obj, Object obj2) throws IOException {
        this._root.put(obj, obj2);
    }

    public synchronized Object get(Object obj) throws IOException {
        return this._root.get(obj);
    }

    public synchronized void remove(Object obj) throws IOException {
        this._root.remove(obj);
    }

    public synchronized FastIterator keys() throws IOException {
        return this._root.keys();
    }

    public synchronized FastIterator values() throws IOException {
        return this._root.values();
    }

    public long getRecid() {
        return this._root.getRecid();
    }
}
