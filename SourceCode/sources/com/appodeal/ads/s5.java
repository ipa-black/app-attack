package com.appodeal.ads;

import android.app.Activity;
/* loaded from: classes.dex */
public final class s5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Activity f7490a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ z5 f7491b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ r5 f7492c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ a f7493d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ a f7494e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ u f7495f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ x5 f7496g;

    public s5(x5 x5Var, Activity activity, z5 z5Var, r5 r5Var, a aVar, a aVar2, u uVar) {
        this.f7496g = x5Var;
        this.f7490a = activity;
        this.f7491b = z5Var;
        this.f7492c = r5Var;
        this.f7493d = aVar;
        this.f7494e = aVar2;
        this.f7495f = uVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        x5.a(this.f7496g, this.f7490a, this.f7491b, this.f7492c, this.f7493d, this.f7494e, this.f7495f, false);
    }
}
