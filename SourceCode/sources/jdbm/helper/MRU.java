package jdbm.helper;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
/* loaded from: classes5.dex */
public class MRU implements CachePolicy {
    CacheEntry _first;
    CacheEntry _last;
    int _max;
    Hashtable _hash = new Hashtable();
    Vector listeners = new Vector();

    public MRU(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("MRU cache must contain at least one entry");
        }
        this._max = i;
    }

    @Override // jdbm.helper.CachePolicy
    public void put(Object obj, Object obj2) throws CacheEvictionException {
        CacheEntry cacheEntry;
        CacheEntry cacheEntry2 = (CacheEntry) this._hash.get(obj);
        if (cacheEntry2 != null) {
            cacheEntry2.setValue(obj2);
            touchEntry(cacheEntry2);
            return;
        }
        if (this._hash.size() == this._max) {
            cacheEntry = purgeEntry();
            cacheEntry.setKey(obj);
            cacheEntry.setValue(obj2);
        } else {
            cacheEntry = new CacheEntry(obj, obj2);
        }
        addEntry(cacheEntry);
        this._hash.put(cacheEntry.getKey(), cacheEntry);
    }

    @Override // jdbm.helper.CachePolicy
    public Object get(Object obj) {
        CacheEntry cacheEntry = (CacheEntry) this._hash.get(obj);
        if (cacheEntry != null) {
            touchEntry(cacheEntry);
            return cacheEntry.getValue();
        }
        return null;
    }

    @Override // jdbm.helper.CachePolicy
    public void remove(Object obj) {
        CacheEntry cacheEntry = (CacheEntry) this._hash.get(obj);
        if (cacheEntry != null) {
            removeEntry(cacheEntry);
            this._hash.remove(cacheEntry.getKey());
        }
    }

    @Override // jdbm.helper.CachePolicy
    public void removeAll() {
        this._hash = new Hashtable();
        this._first = null;
        this._last = null;
    }

    @Override // jdbm.helper.CachePolicy
    public Enumeration elements() {
        return new MRUEnumeration(this._hash.elements());
    }

    @Override // jdbm.helper.CachePolicy
    public void addListener(CachePolicyListener cachePolicyListener) {
        if (cachePolicyListener == null) {
            throw new IllegalArgumentException("Cannot add null listener.");
        }
        if (this.listeners.contains(cachePolicyListener)) {
            return;
        }
        this.listeners.addElement(cachePolicyListener);
    }

    @Override // jdbm.helper.CachePolicy
    public void removeListener(CachePolicyListener cachePolicyListener) {
        this.listeners.removeElement(cachePolicyListener);
    }

    protected void addEntry(CacheEntry cacheEntry) {
        if (this._first == null) {
            this._first = cacheEntry;
            this._last = cacheEntry;
            return;
        }
        this._last.setNext(cacheEntry);
        cacheEntry.setPrevious(this._last);
        this._last = cacheEntry;
    }

    protected void removeEntry(CacheEntry cacheEntry) {
        if (cacheEntry == this._first) {
            this._first = cacheEntry.getNext();
        }
        if (this._last == cacheEntry) {
            this._last = cacheEntry.getPrevious();
        }
        CacheEntry previous = cacheEntry.getPrevious();
        CacheEntry next = cacheEntry.getNext();
        if (previous != null) {
            previous.setNext(next);
        }
        if (next != null) {
            next.setPrevious(previous);
        }
        cacheEntry.setPrevious(null);
        cacheEntry.setNext(null);
    }

    protected void touchEntry(CacheEntry cacheEntry) {
        if (this._last == cacheEntry) {
            return;
        }
        removeEntry(cacheEntry);
        addEntry(cacheEntry);
    }

    protected CacheEntry purgeEntry() throws CacheEvictionException {
        CacheEntry cacheEntry = this._first;
        for (int i = 0; i < this.listeners.size(); i++) {
            ((CachePolicyListener) this.listeners.elementAt(i)).cacheObjectEvicted(cacheEntry.getValue());
        }
        removeEntry(cacheEntry);
        this._hash.remove(cacheEntry.getKey());
        cacheEntry.setValue(null);
        return cacheEntry;
    }
}
