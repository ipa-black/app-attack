package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.rc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class RunnableC1831rc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C1927vc f15628a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1831rc(C1927vc c1927vc) {
        this.f15628a = c1927vc;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f15628a.f15914e != null) {
                this.f15628a.f15914e.c();
            }
        } catch (Throwable unused) {
        }
    }
}
