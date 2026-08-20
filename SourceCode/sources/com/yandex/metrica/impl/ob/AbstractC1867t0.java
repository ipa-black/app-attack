package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.t0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1867t0<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Zl<EnumC1891u0, Integer> f15737a;

    public AbstractC1867t0() {
        Zl<EnumC1891u0, Integer> zl = new Zl<>(0);
        zl.a(EnumC1891u0.UNDEFINED, 0);
        zl.a(EnumC1891u0.APP, 1);
        zl.a(EnumC1891u0.SATELLITE, 2);
        zl.a(EnumC1891u0.RETAIL, 3);
        this.f15737a = zl;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Zl<EnumC1891u0, Integer> a() {
        return this.f15737a;
    }

    public abstract boolean a(T t, T t2);
}
