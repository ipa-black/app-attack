package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.t  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class RunnableC1866t implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ E1 f15735a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ C1622j0 f15736b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1866t(C1890u c1890u, E1 e1, C1622j0 c1622j0) {
        this.f15735a = e1;
        this.f15736b = c1622j0;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f15735a.b(this.f15736b);
    }
}
