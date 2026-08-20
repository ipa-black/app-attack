package jdbm.helper;
/* compiled from: MRU.java */
/* loaded from: classes5.dex */
class CacheEntry {
    private Object _key;
    private CacheEntry _next;
    private CacheEntry _previous;
    private Object _value;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CacheEntry(Object obj, Object obj2) {
        this._key = obj;
        this._value = obj2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object getKey() {
        return this._key;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setKey(Object obj) {
        this._key = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object getValue() {
        return this._value;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValue(Object obj) {
        this._value = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CacheEntry getPrevious() {
        return this._previous;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPrevious(CacheEntry cacheEntry) {
        this._previous = cacheEntry;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CacheEntry getNext() {
        return this._next;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNext(CacheEntry cacheEntry) {
        this._next = cacheEntry;
    }
}
