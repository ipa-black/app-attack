package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.utils.Log;
/* loaded from: classes.dex */
public final class u0 extends g<w0, v0, Object> {

    /* renamed from: a  reason: collision with root package name */
    public BannerCallbacks f7704a;

    @Override // com.appodeal.ads.g
    public final void a(w0 w0Var, v0 v0Var, Object obj) {
        Log.log("Banner", LogConstants.EVENT_NOTIFY_CLICKED, Log.LogLevel.verbose);
        BannerCallbacks bannerCallbacks = this.f7704a;
        if (bannerCallbacks != null) {
            bannerCallbacks.onBannerClicked();
        }
    }

    @Override // com.appodeal.ads.g
    public final void b(w0 w0Var, v0 v0Var) {
        Log.log("Banner", LogConstants.EVENT_NOTIFY_EXPIRED, Log.LogLevel.verbose);
        BannerCallbacks bannerCallbacks = this.f7704a;
        if (bannerCallbacks != null) {
            bannerCallbacks.onBannerExpired();
        }
    }

    @Override // com.appodeal.ads.g
    public final void c(w0 w0Var, v0 v0Var, Object obj) {
        Log.log("Banner", LogConstants.EVENT_NOTIFY_SHOWN, Log.LogLevel.verbose);
        BannerCallbacks bannerCallbacks = this.f7704a;
        if (bannerCallbacks != null) {
            bannerCallbacks.onBannerShown();
        }
    }

    @Override // com.appodeal.ads.g
    public final void d(r rVar, l lVar) {
        w0 w0Var = (w0) rVar;
        v0 v0Var = (v0) lVar;
        Log.log("Banner", LogConstants.EVENT_NOTIFY_LOAD_FAILED, Log.LogLevel.verbose);
        BannerCallbacks bannerCallbacks = this.f7704a;
        if (bannerCallbacks != null) {
            bannerCallbacks.onBannerFailedToLoad();
        }
    }

    @Override // com.appodeal.ads.g
    public final void e(w0 w0Var, v0 v0Var) {
        v0 v0Var2 = v0Var;
        Log.log("Banner", LogConstants.EVENT_NOTIFY_LOADED, String.format("height: %sdp, isPrecache: %s", Integer.valueOf(v0Var2.m()), Boolean.valueOf(v0Var2.isPrecache())), Log.LogLevel.verbose);
        BannerCallbacks bannerCallbacks = this.f7704a;
        if (bannerCallbacks != null) {
            bannerCallbacks.onBannerLoaded(v0Var2.m(), v0Var2.isPrecache());
        }
    }

    @Override // com.appodeal.ads.g
    public final void b(r rVar, l lVar, Object obj) {
        w0 w0Var = (w0) rVar;
        v0 v0Var = (v0) lVar;
        Log.log("Banner", LogConstants.EVENT_NOTIFY_SHOW_FAILED, Log.LogLevel.verbose);
        BannerCallbacks bannerCallbacks = this.f7704a;
        if (bannerCallbacks != null) {
            bannerCallbacks.onBannerShowFailed();
        }
    }
}
