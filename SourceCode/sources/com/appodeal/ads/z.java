package com.appodeal.ads;
/* loaded from: classes.dex */
public final class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ r f7996a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ l f7997b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f7998c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ b0 f7999d;

    public z(b0 b0Var, r rVar, l lVar, l2 l2Var) {
        this.f7999d = b0Var;
        this.f7996a = rVar;
        this.f7997b = lVar;
        this.f7998c = l2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7999d.f6557b.c(this.f7996a, this.f7997b);
    }
}
