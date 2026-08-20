package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.en  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1521en<T> implements InterfaceC1546fn<T> {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1546fn<T> f14703a;

    public C1521en(InterfaceC1546fn<T> interfaceC1546fn, T t) {
        this.f14703a = interfaceC1546fn;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1546fn
    public T a(T t) {
        return t != this.f14703a.a(t) ? "<truncated data was not sent, see METRIKALIB-4568>" : t;
    }
}
