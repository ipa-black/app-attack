package com.appodeal.ads;

import com.appodeal.ads.utils.Log;
import com.appodeal.ads.utils.d0;
/* loaded from: classes.dex */
public final class u5 implements d0.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ u f7715a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ z5 f7716b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ r5 f7717c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ x5 f7718d;

    public u5(x5 x5Var, u uVar, z5 z5Var, r5 r5Var) {
        this.f7718d = x5Var;
        this.f7715a = uVar;
        this.f7716b = z5Var;
        this.f7717c = r5Var;
    }

    @Override // com.appodeal.ads.utils.d0.b
    public final void a() {
        Log.debug(this.f7718d.f7938a, "VisibilityTracker", "onViewShown");
        this.f7715a.f7689d.j(this.f7716b, this.f7717c, null);
    }

    @Override // com.appodeal.ads.utils.d0.b
    public final void b() {
        Log.debug(this.f7718d.f7938a, "VisibilityTracker", "onViewTrackingFinished");
        this.f7715a.f7689d.i(this.f7716b, this.f7717c, null);
    }
}
