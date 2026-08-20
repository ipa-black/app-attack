package org.apache.oro.util;
/* loaded from: classes3.dex */
public final class CacheLRU extends GenericCache {
    private int __head;
    private int[] __next;
    private int[] __prev;
    private int __tail;

    public CacheLRU() {
        this(20);
    }

    public CacheLRU(int i) {
        super(i);
        int i2 = 0;
        this.__head = 0;
        this.__tail = 0;
        this.__next = new int[this._cache.length];
        this.__prev = new int[this._cache.length];
        while (true) {
            int[] iArr = this.__next;
            if (i2 >= iArr.length) {
                return;
            }
            this.__prev[i2] = -1;
            iArr[i2] = -1;
            i2++;
        }
    }

    private void __moveToFront(int i) {
        int i2 = this.__head;
        if (i2 != i) {
            int[] iArr = this.__next;
            int i3 = iArr[i];
            int[] iArr2 = this.__prev;
            int i4 = iArr2[i];
            iArr[i4] = i3;
            if (i3 >= 0) {
                iArr2[i3] = i4;
            } else {
                this.__tail = i4;
            }
            iArr2[i] = -1;
            iArr[i] = i2;
            iArr2[i2] = i;
            this.__head = i;
        }
    }

    @Override // org.apache.oro.util.GenericCache, org.apache.oro.util.Cache
    public final synchronized void addElement(Object obj, Object obj2) {
        Object obj3 = this._table.get(obj);
        if (obj3 != null) {
            GenericCacheEntry genericCacheEntry = (GenericCacheEntry) obj3;
            genericCacheEntry._value = obj2;
            genericCacheEntry._key = obj;
            __moveToFront(genericCacheEntry._index);
            return;
        }
        if (isFull()) {
            this._table.remove(this._cache[this.__tail]._key);
            __moveToFront(this.__tail);
        } else {
            if (this._numEntries > 0) {
                this.__prev[this._numEntries] = this.__tail;
                this.__next[this._numEntries] = -1;
                __moveToFront(this._numEntries);
            }
            this._numEntries++;
        }
        this._cache[this.__head]._value = obj2;
        this._cache[this.__head]._key = obj;
        this._table.put(obj, this._cache[this.__head]);
    }

    @Override // org.apache.oro.util.GenericCache, org.apache.oro.util.Cache
    public synchronized Object getElement(Object obj) {
        Object obj2 = this._table.get(obj);
        if (obj2 != null) {
            GenericCacheEntry genericCacheEntry = (GenericCacheEntry) obj2;
            __moveToFront(genericCacheEntry._index);
            return genericCacheEntry._value;
        }
        return null;
    }
}
