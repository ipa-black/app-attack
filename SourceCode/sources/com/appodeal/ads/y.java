package com.appodeal.ads;
/* loaded from: classes.dex */
public final class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ r f7962a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ l f7963b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ b0 f7964c;

    public y(v2 v2Var, r rVar, j1 j1Var) {
        this.f7964c = v2Var;
        this.f7962a = rVar;
        this.f7963b = j1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7964c.f6557b.a(this.f7962a, this.f7963b);
    }
}
