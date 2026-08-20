package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.sc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class RunnableC1855sc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C1927vc f15713a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1855sc(C1927vc c1927vc) {
        this.f15713a = c1927vc;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f15713a.f15914e != null) {
            this.f15713a.f15914e.e();
        }
    }
}
