package jdbm.recman;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import jdbm.RecordManager;
import jdbm.helper.DefaultSerializer;
import jdbm.helper.Serializer;
/* loaded from: classes5.dex */
public final class BaseRecordManager implements RecordManager {
    public static final boolean DEBUG = false;
    public static final int NAME_DIRECTORY_ROOT = 0;
    private RecordFile _file;
    private LogicalRowIdManager _logMgr;
    private Map _nameDirectory;
    private PageManager _pageman;
    private PhysicalRowIdManager _physMgr;

    @Override // jdbm.RecordManager
    public int getRootCount() {
        return 1013;
    }

    public BaseRecordManager(String str) throws IOException {
        this._file = new RecordFile(str);
        this._pageman = new PageManager(this._file);
        this._physMgr = new PhysicalRowIdManager(this._file, this._pageman);
        this._logMgr = new LogicalRowIdManager(this._file, this._pageman);
    }

    public synchronized TransactionManager getTransactionManager() {
        checkIfClosed();
        return this._file.txnMgr;
    }

    public synchronized void disableTransactions() {
        checkIfClosed();
        this._file.disableTransactions();
    }

    @Override // jdbm.RecordManager
    public synchronized void close() throws IOException {
        checkIfClosed();
        this._pageman.close();
        this._pageman = null;
        this._file.close();
        this._file = null;
    }

    @Override // jdbm.RecordManager
    public long insert(Object obj) throws IOException {
        return insert(obj, DefaultSerializer.INSTANCE);
    }

    @Override // jdbm.RecordManager
    public synchronized long insert(Object obj, Serializer serializer) throws IOException {
        byte[] serialize;
        checkIfClosed();
        serialize = serializer.serialize(obj);
        return this._logMgr.insert(this._physMgr.insert(serialize, 0, serialize.length)).toLong();
    }

    @Override // jdbm.RecordManager
    public synchronized void delete(long j) throws IOException {
        checkIfClosed();
        if (j <= 0) {
            throw new IllegalArgumentException(new StringBuffer("Argument 'recid' is invalid: ").append(j).toString());
        }
        Location location = new Location(j);
        this._physMgr.delete(this._logMgr.fetch(location));
        this._logMgr.delete(location);
    }

    @Override // jdbm.RecordManager
    public void update(long j, Object obj) throws IOException {
        update(j, obj, DefaultSerializer.INSTANCE);
    }

    @Override // jdbm.RecordManager
    public synchronized void update(long j, Object obj, Serializer serializer) throws IOException {
        checkIfClosed();
        if (j <= 0) {
            throw new IllegalArgumentException(new StringBuffer("Argument 'recid' is invalid: ").append(j).toString());
        }
        Location location = new Location(j);
        Location fetch = this._logMgr.fetch(location);
        byte[] serialize = serializer.serialize(obj);
        Location update = this._physMgr.update(fetch, serialize, 0, serialize.length);
        if (!update.equals(fetch)) {
            this._logMgr.update(location, update);
        }
    }

    @Override // jdbm.RecordManager
    public Object fetch(long j) throws IOException {
        return fetch(j, DefaultSerializer.INSTANCE);
    }

    @Override // jdbm.RecordManager
    public synchronized Object fetch(long j, Serializer serializer) throws IOException {
        checkIfClosed();
        if (j <= 0) {
            throw new IllegalArgumentException(new StringBuffer("Argument 'recid' is invalid: ").append(j).toString());
        }
        return serializer.deserialize(this._physMgr.fetch(this._logMgr.fetch(new Location(j))));
    }

    @Override // jdbm.RecordManager
    public synchronized long getRoot(int i) throws IOException {
        checkIfClosed();
        return this._pageman.getFileHeader().getRoot(i);
    }

    @Override // jdbm.RecordManager
    public synchronized void setRoot(int i, long j) throws IOException {
        checkIfClosed();
        this._pageman.getFileHeader().setRoot(i, j);
    }

    @Override // jdbm.RecordManager
    public long getNamedObject(String str) throws IOException {
        checkIfClosed();
        Long l = (Long) getNameDirectory().get(str);
        if (l == null) {
            return 0L;
        }
        return l.longValue();
    }

    @Override // jdbm.RecordManager
    public void setNamedObject(String str, long j) throws IOException {
        checkIfClosed();
        Map nameDirectory = getNameDirectory();
        if (j == 0) {
            nameDirectory.remove(str);
        } else {
            nameDirectory.put(str, new Long(j));
        }
        saveNameDirectory(nameDirectory);
    }

    @Override // jdbm.RecordManager
    public synchronized void commit() throws IOException {
        checkIfClosed();
        this._pageman.commit();
    }

    @Override // jdbm.RecordManager
    public synchronized void rollback() throws IOException {
        checkIfClosed();
        this._pageman.rollback();
    }

    private Map getNameDirectory() throws IOException {
        long root = getRoot(0);
        if (root == 0) {
            HashMap hashMap = new HashMap();
            this._nameDirectory = hashMap;
            setRoot(0, insert(hashMap));
        } else {
            this._nameDirectory = (Map) fetch(root);
        }
        return this._nameDirectory;
    }

    private void saveNameDirectory(Map map) throws IOException {
        long root = getRoot(0);
        if (root == 0) {
            throw new IOException("Name directory must exist");
        }
        update(root, this._nameDirectory);
    }

    private void checkIfClosed() throws IllegalStateException {
        if (this._file == null) {
            throw new IllegalStateException("RecordManager has been closed");
        }
    }
}
