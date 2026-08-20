package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.uc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class RunnableC1903uc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C1927vc f15817a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1903uc(C1927vc c1927vc) {
        this.f15817a = c1927vc;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f15817a.f15914e != null) {
            this.f15817a.f15914e.a();
        }
        C1927vc.b(this.f15817a);
    }
}
