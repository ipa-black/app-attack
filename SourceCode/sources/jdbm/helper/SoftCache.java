package jdbm.helper;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class SoftCache implements CachePolicy {
    private static final float DEFAULT_LOAD_FACTOR = 1.5f;
    private static final int INITIAL_CAPACITY = 128;
    private final Map _cacheMap;
    private final ReferenceQueue _clearQueue;
    private final CachePolicy _internal;

    public SoftCache() {
        this(new MRU(128));
    }

    public SoftCache(CachePolicy cachePolicy) throws NullPointerException {
        this(1.5f, cachePolicy);
    }

    public SoftCache(float f2, CachePolicy cachePolicy) throws IllegalArgumentException, NullPointerException {
        this._clearQueue = new ReferenceQueue();
        if (cachePolicy == null) {
            throw new NullPointerException("Internal cache cannot be null.");
        }
        this._internal = cachePolicy;
        this._cacheMap = new HashMap(128, f2);
    }

    @Override // jdbm.helper.CachePolicy
    public void put(Object obj, Object obj2) throws CacheEvictionException {
        if (obj == null) {
            throw new IllegalArgumentException("key cannot be null.");
        }
        if (obj2 == null) {
            throw new IllegalArgumentException("value cannot be null.");
        }
        this._internal.put(obj, obj2);
        removeClearedEntries();
        this._cacheMap.put(obj, new Entry(obj, obj2, this._clearQueue));
    }

    @Override // jdbm.helper.CachePolicy
    public Object get(Object obj) {
        Object value;
        Object obj2 = this._internal.get(obj);
        if (obj2 != null) {
            return obj2;
        }
        removeClearedEntries();
        Entry entry = (Entry) this._cacheMap.get(obj);
        if (entry == null || (value = entry.getValue()) == null) {
            return null;
        }
        try {
            this._internal.put(obj, value);
            return value;
        } catch (CacheEvictionException unused) {
            this._cacheMap.remove(obj);
            return null;
        }
    }

    @Override // jdbm.helper.CachePolicy
    public void remove(Object obj) {
        this._cacheMap.remove(obj);
        this._internal.remove(obj);
    }

    @Override // jdbm.helper.CachePolicy
    public void removeAll() {
        this._cacheMap.clear();
        this._internal.removeAll();
    }

    @Override // jdbm.helper.CachePolicy
    public Enumeration elements() {
        return this._internal.elements();
    }

    @Override // jdbm.helper.CachePolicy
    public void addListener(CachePolicyListener cachePolicyListener) throws IllegalArgumentException {
        this._internal.addListener(cachePolicyListener);
    }

    @Override // jdbm.helper.CachePolicy
    public void removeListener(CachePolicyListener cachePolicyListener) {
        this._internal.removeListener(cachePolicyListener);
    }

    private final void removeClearedEntries() {
        while (true) {
            Reference poll = this._clearQueue.poll();
            if (poll == null) {
                return;
            }
            this._cacheMap.remove(((Entry) poll).getKey());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class Entry extends SoftReference {
        private final Object _key;

        public Entry(Object obj, Object obj2, ReferenceQueue referenceQueue) {
            super(obj2, referenceQueue);
            this._key = obj;
        }

        final Object getKey() {
            return this._key;
        }

        final Object getValue() {
            return get();
        }
    }
}
