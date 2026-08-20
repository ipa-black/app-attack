package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public abstract class V<T> {

    /* renamed from: a  reason: collision with root package name */
    private V<T> f14131a;

    public V(V<T> v) {
        this.f14131a = v;
    }

    public void a(T t) {
        b(t);
        V<T> v = this.f14131a;
        if (v != null) {
            v.a(t);
        }
    }

    public abstract void b(T t);
}
