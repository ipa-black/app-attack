package com.appodeal.ads;

import android.app.Activity;
import android.view.ViewGroup;
import com.appodeal.ads.AppodealUnityBannerView;
/* loaded from: classes.dex */
public final class s0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Activity f7450a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f7451b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AppodealUnityBannerView f7452c;

    public s0(AppodealUnityBannerView appodealUnityBannerView, Activity activity, int i) {
        this.f7452c = appodealUnityBannerView;
        this.f7450a = activity;
        this.f7451b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f7452c.f6369a != null) {
            q4.b(this.f7450a, this.f7451b);
            AppodealUnityBannerView.b bVar = this.f7452c.f6369a;
            if (bVar.getParent() != null && (bVar.getParent() instanceof ViewGroup)) {
                ((ViewGroup) bVar.getParent()).removeView(bVar);
            }
            this.f7452c.f6369a = null;
        }
    }
}
