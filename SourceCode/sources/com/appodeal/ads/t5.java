package com.appodeal.ads;

import android.app.Activity;
/* loaded from: classes.dex */
public final class t5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Activity f7679a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ z5 f7680b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ r5 f7681c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ a f7682d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ a f7683e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ u f7684f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ x5 f7685g;

    public t5(x5 x5Var, Activity activity, z5 z5Var, r5 r5Var, a aVar, a aVar2, u uVar) {
        this.f7685g = x5Var;
        this.f7679a = activity;
        this.f7680b = z5Var;
        this.f7681c = r5Var;
        this.f7682d = aVar;
        this.f7683e = aVar2;
        this.f7684f = uVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        x5.a(this.f7685g, this.f7679a, this.f7680b, this.f7681c, this.f7682d, this.f7683e, this.f7684f, true);
    }
}
