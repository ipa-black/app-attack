package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class E2 implements InterfaceC1719mm<C1470cm> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Throwable f12839a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f12840b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public E2(D2 d2, Throwable th, String str) {
        this.f12839a = th;
        this.f12840b = str;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
    public void b(C1470cm c1470cm) {
        C1470cm c1470cm2 = c1470cm;
        if (c1470cm2.isEnabled()) {
            c1470cm2.e(this.f12839a, this.f12840b);
        }
    }
}
