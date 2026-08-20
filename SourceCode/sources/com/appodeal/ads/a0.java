package com.appodeal.ads;
/* loaded from: classes.dex */
public final class a0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ r f6422a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ l f6423b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f6424c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ b0 f6425d;

    public a0(b0 b0Var, r rVar, l lVar, l2 l2Var) {
        this.f6425d = b0Var;
        this.f6422a = rVar;
        this.f6423b = lVar;
        this.f6424c = l2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6425d.f6557b.c(this.f6422a, this.f6423b, this.f6424c);
    }
}
