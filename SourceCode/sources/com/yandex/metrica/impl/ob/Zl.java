package com.yandex.metrica.impl.ob;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes5.dex */
public class Zl<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<K, V> f14363a;

    /* renamed from: b  reason: collision with root package name */
    private final V f14364b;

    public Zl(V v) {
        this(new HashMap(), v);
    }

    public void a(K k, V v) {
        this.f14363a.put(k, v);
    }

    public Zl(Map<K, V> map, V v) {
        this.f14363a = map;
        this.f14364b = v;
    }

    public V a(K k) {
        V v = this.f14363a.get(k);
        return v == null ? this.f14364b : v;
    }

    public Set<K> a() {
        return this.f14363a.keySet();
    }
}
