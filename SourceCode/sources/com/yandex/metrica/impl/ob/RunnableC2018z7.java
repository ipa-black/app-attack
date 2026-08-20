package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.z7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class RunnableC2018z7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ InterfaceC1744nm f16150a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ C1994y7 f16151b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2018z7(C1994y7 c1994y7, InterfaceC1744nm interfaceC1744nm) {
        this.f16151b = c1994y7;
        this.f16150a = interfaceC1744nm;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f16151b.a(this.f16150a);
    }
}
