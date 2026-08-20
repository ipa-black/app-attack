package jdbm.recman;

import java.io.IOException;
import java.util.Enumeration;
import jdbm.RecordManager;
import jdbm.helper.CacheEvictionException;
import jdbm.helper.CachePolicy;
import jdbm.helper.CachePolicyListener;
import jdbm.helper.DefaultSerializer;
import jdbm.helper.Serializer;
import jdbm.helper.WrappedRuntimeException;
/* loaded from: classes5.dex */
public class CacheRecordManager implements RecordManager {
    protected CachePolicy _cache;
    protected RecordManager _recman;

    public CacheRecordManager(RecordManager recordManager, CachePolicy cachePolicy) {
        if (recordManager == null) {
            throw new IllegalArgumentException("Argument 'recman' is null");
        }
        if (cachePolicy == null) {
            throw new IllegalArgumentException("Argument 'cache' is null");
        }
        this._recman = recordManager;
        this._cache = cachePolicy;
        cachePolicy.addListener(new CacheListener());
    }

    public RecordManager getRecordManager() {
        return this._recman;
    }

    public CachePolicy getCachePolicy() {
        return this._cache;
    }

    @Override // jdbm.RecordManager
    public long insert(Object obj) throws IOException {
        return insert(obj, DefaultSerializer.INSTANCE);
    }

    @Override // jdbm.RecordManager
    public synchronized long insert(Object obj, Serializer serializer) throws IOException {
        long insert;
        checkIfClosed();
        insert = this._recman.insert(obj, serializer);
        try {
            this._cache.put(new Long(insert), new CacheEntry(insert, obj, serializer, false));
        } catch (CacheEvictionException e2) {
            throw new WrappedRuntimeException(e2);
        }
        return insert;
    }

    @Override // jdbm.RecordManager
    public synchronized void delete(long j) throws IOException {
        checkIfClosed();
        this._recman.delete(j);
        this._cache.remove(new Long(j));
    }

    @Override // jdbm.RecordManager
    public void update(long j, Object obj) throws IOException {
        update(j, obj, DefaultSerializer.INSTANCE);
    }

    @Override // jdbm.RecordManager
    public synchronized void update(long j, Object obj, Serializer serializer) throws IOException {
        checkIfClosed();
        Long l = new Long(j);
        try {
            CacheEntry cacheEntry = (CacheEntry) this._cache.get(l);
            if (cacheEntry != null) {
                cacheEntry._obj = obj;
                cacheEntry._serializer = serializer;
                cacheEntry._isDirty = true;
            } else {
                this._cache.put(l, new CacheEntry(j, obj, serializer, true));
            }
        } catch (CacheEvictionException e2) {
            throw new IOException(e2.getMessage());
        }
    }

    @Override // jdbm.RecordManager
    public Object fetch(long j) throws IOException {
        return fetch(j, DefaultSerializer.INSTANCE);
    }

    @Override // jdbm.RecordManager
    public synchronized Object fetch(long j, Serializer serializer) throws IOException {
        CacheEntry cacheEntry;
        checkIfClosed();
        Long l = new Long(j);
        cacheEntry = (CacheEntry) this._cache.get(l);
        if (cacheEntry == null) {
            cacheEntry = new CacheEntry(j, null, serializer, false);
            cacheEntry._obj = this._recman.fetch(j, serializer);
            try {
                this._cache.put(l, cacheEntry);
            } catch (CacheEvictionException e2) {
                throw new WrappedRuntimeException(e2);
            }
        }
        return cacheEntry._obj;
    }

    @Override // jdbm.RecordManager
    public synchronized void close() throws IOException {
        checkIfClosed();
        updateCacheEntries();
        this._recman.close();
        this._recman = null;
        this._cache = null;
    }

    @Override // jdbm.RecordManager
    public synchronized int getRootCount() {
        checkIfClosed();
        return this._recman.getRootCount();
    }

    @Override // jdbm.RecordManager
    public synchronized long getRoot(int i) throws IOException {
        checkIfClosed();
        return this._recman.getRoot(i);
    }

    @Override // jdbm.RecordManager
    public synchronized void setRoot(int i, long j) throws IOException {
        checkIfClosed();
        this._recman.setRoot(i, j);
    }

    @Override // jdbm.RecordManager
    public synchronized void commit() throws IOException {
        checkIfClosed();
        updateCacheEntries();
        this._recman.commit();
    }

    @Override // jdbm.RecordManager
    public synchronized void rollback() throws IOException {
        checkIfClosed();
        this._recman.rollback();
        this._cache.removeAll();
    }

    @Override // jdbm.RecordManager
    public synchronized long getNamedObject(String str) throws IOException {
        checkIfClosed();
        return this._recman.getNamedObject(str);
    }

    @Override // jdbm.RecordManager
    public synchronized void setNamedObject(String str, long j) throws IOException {
        checkIfClosed();
        this._recman.setNamedObject(str, j);
    }

    private void checkIfClosed() throws IllegalStateException {
        if (this._recman == null) {
            throw new IllegalStateException("RecordManager has been closed");
        }
    }

    protected void updateCacheEntries() throws IOException {
        Enumeration elements = this._cache.elements();
        while (elements.hasMoreElements()) {
            CacheEntry cacheEntry = (CacheEntry) elements.nextElement();
            if (cacheEntry._isDirty) {
                this._recman.update(cacheEntry._recid, cacheEntry._obj, cacheEntry._serializer);
                cacheEntry._isDirty = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class CacheEntry {
        boolean _isDirty;
        Object _obj;
        long _recid;
        Serializer _serializer;

        CacheEntry(long j, Object obj, Serializer serializer, boolean z) {
            this._recid = j;
            this._obj = obj;
            this._serializer = serializer;
            this._isDirty = z;
        }
    }

    /* loaded from: classes5.dex */
    private class CacheListener implements CachePolicyListener {
        private CacheListener() {
        }

        @Override // jdbm.helper.CachePolicyListener
        public void cacheObjectEvicted(Object obj) throws CacheEvictionException {
            CacheEntry cacheEntry = (CacheEntry) obj;
            if (cacheEntry._isDirty) {
                try {
                    CacheRecordManager.this._recman.update(cacheEntry._recid, cacheEntry._obj, cacheEntry._serializer);
                } catch (IOException e2) {
                    throw new CacheEvictionException(e2);
                }
            }
        }
    }
}
