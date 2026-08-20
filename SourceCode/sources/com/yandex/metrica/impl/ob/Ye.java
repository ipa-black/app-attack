package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1930vf;
/* loaded from: classes5.dex */
public class Ye extends Ne<String> {

    /* renamed from: g  reason: collision with root package name */
    private final InterfaceC1546fn<String> f14313g;

    public Ye(String str, String str2, InterfaceC1546fn<String> interfaceC1546fn, Kn<String> kn, Ke ke) {
        super(0, str, str2, kn, ke);
        this.f14313g = interfaceC1546fn;
    }

    @Override // com.yandex.metrica.impl.ob.Ne
    protected void a(C1930vf.a aVar) {
        String a2 = this.f14313g.a(f());
        aVar.f15927d.f15930a = a2 == null ? new byte[0] : a2.getBytes();
    }
}
