package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class C2 implements InterfaceC1719mm<C1470cm> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f12732a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2(D2 d2, String str) {
        this.f12732a = str;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
    public void b(C1470cm c1470cm) {
        C1470cm c1470cm2 = c1470cm;
        if (c1470cm2.isEnabled()) {
            c1470cm2.i(this.f12732a);
        }
    }
}
