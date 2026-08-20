package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.rg  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class RunnableC1835rg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ InterfaceC1931vg f15653a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Throwable f15654b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1835rg(C1812qg c1812qg, InterfaceC1931vg interfaceC1931vg, Throwable th) {
        this.f15653a = interfaceC1931vg;
        this.f15654b = th;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f15653a.a(this.f15654b);
    }
}
