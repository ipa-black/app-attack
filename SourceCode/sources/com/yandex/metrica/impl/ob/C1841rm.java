package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: com.yandex.metrica.impl.ob.rm  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1841rm<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<K, Collection<V>> f15693a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f15694b;

    public C1841rm() {
        this(false);
    }

    public Collection<V> a(K k) {
        return this.f15693a.get(k);
    }

    public boolean b() {
        return this.f15693a.isEmpty();
    }

    public int c() {
        int i = 0;
        for (Collection<V> collection : this.f15693a.values()) {
            i += collection.size();
        }
        return i;
    }

    public String toString() {
        return this.f15693a.toString();
    }

    public C1841rm(boolean z) {
        this.f15693a = new HashMap<>();
        this.f15694b = z;
    }

    public Collection<V> a(K k, V v) {
        ArrayList arrayList;
        Collection<V> collection = this.f15693a.get(k);
        if (collection == null) {
            arrayList = new ArrayList();
        } else {
            arrayList = new ArrayList(collection);
        }
        arrayList.add(v);
        return this.f15693a.put(k, arrayList);
    }

    public Collection<V> b(K k) {
        return this.f15693a.remove(k);
    }

    public Collection<V> b(K k, V v) {
        Collection<V> collection = this.f15693a.get(k);
        if (collection == null || !collection.remove(v)) {
            return null;
        }
        if (collection.isEmpty() && this.f15694b) {
            this.f15693a.remove(k);
        }
        return new ArrayList(collection);
    }

    public Set<? extends Map.Entry<K, ? extends Collection<V>>> a() {
        return this.f15693a.entrySet();
    }
}
