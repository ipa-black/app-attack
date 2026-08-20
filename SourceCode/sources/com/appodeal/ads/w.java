package com.appodeal.ads;

import com.appodeal.ads.networking.LoadingError;
/* loaded from: classes.dex */
public final class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ r f7871a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ l f7872b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ b0 f7873c;

    public w(b0 b0Var, r rVar, l lVar, LoadingError loadingError) {
        this.f7873c = b0Var;
        this.f7871a = rVar;
        this.f7872b = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7873c.f6557b.d(this.f7871a, this.f7872b);
    }
}
