package com.appodeal.ads;

import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.t0;
import com.appodeal.ads.unified.UnifiedAd;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdCallbackClickTrackListener;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedBanner;
import com.appodeal.ads.unified.UnifiedBannerCallback;
import com.appodeal.ads.unified.UnifiedBannerParams;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class v0 extends r5<w0, UnifiedBanner, UnifiedBannerParams, UnifiedBannerCallback> {
    @Deprecated
    public int t;
    public int u;

    /* loaded from: classes.dex */
    public static class b implements UnifiedBannerParams {
        @Override // com.appodeal.ads.unified.UnifiedBannerParams
        public final int getMaxHeight(Context context) {
            return ((t0.f7670b || t0.f7671c) && f1.m(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext()) > 720.0f) ? 90 : 50;
        }

        @Override // com.appodeal.ads.unified.UnifiedBannerParams
        public final int getMaxWidth(Context context) {
            int round = Math.round(f1.p(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext()));
            return t0.f7670b ? round : (!t0.f7671c || round < 728) ? 320 : 728;
        }

        @Override // com.appodeal.ads.unified.UnifiedBannerParams
        public final boolean needLeaderBoard(Context context) {
            return t0.a(context);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdParams
        public final String obtainPlacementId() {
            return com.appodeal.ads.segments.g.a(t0.a().l);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdParams
        public final String obtainSegmentId() {
            return t0.a().r().toString();
        }

        @Override // com.appodeal.ads.unified.UnifiedBannerParams
        public final boolean useSmartBanners(Context context) {
            return t0.f7670b;
        }
    }

    public v0(w0 w0Var, AdNetwork adNetwork, d0 d0Var) {
        super(w0Var, adNetwork, d0Var);
        this.u = -1;
    }

    @Override // com.appodeal.ads.l
    public final UnifiedAd a(AdNetwork adNetwork) {
        return adNetwork.createBanner();
    }

    @Override // com.appodeal.ads.r5
    public final int b(Context context) {
        if (t0.f7670b && this.f6825b.isSupportSmartBanners()) {
            return -1;
        }
        if (t0.a(context)) {
            HashMap hashMap = f1.f6654a;
            return Math.round(TypedValue.applyDimension(1, 728.0f, context.getResources().getDisplayMetrics()));
        }
        HashMap hashMap2 = f1.f6654a;
        return Math.round(TypedValue.applyDimension(1, 320.0f, context.getResources().getDisplayMetrics()));
    }

    @Override // com.appodeal.ads.l
    public final UnifiedAdCallback c() {
        return new a();
    }

    public final int m() {
        return this.t;
    }

    /* loaded from: classes.dex */
    public class a extends UnifiedBannerCallback {
        public a() {
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdClicked() {
            t0.c b2 = t0.b();
            v0 v0Var = v0.this;
            b2.a((w0) v0Var.f6824a, v0Var, (l2) null, (UnifiedAdCallbackClickTrackListener) null);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdExpired() {
            t0.c b2 = t0.b();
            v0 v0Var = v0.this;
            b2.e((w0) v0Var.f6824a, v0Var);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdInfoRequested(Bundle bundle) {
            v0.this.a(bundle);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdLoadFailed(LoadingError loadingError) {
            t0.c b2 = t0.b();
            v0 v0Var = v0.this;
            b2.a((t0.c) ((w0) v0Var.f6824a), (w0) v0Var, loadingError);
        }

        @Override // com.appodeal.ads.unified.UnifiedBannerCallback
        public final void onAdLoaded(View view, int i, int i2) {
            v0 v0Var = v0.this;
            v0Var.s = view;
            v0Var.t = i2;
            v0Var.u = view.getResources().getConfiguration().orientation;
            t0.c b2 = t0.b();
            v0 v0Var2 = v0.this;
            b2.n((w0) v0Var2.f6824a, v0Var2);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdShowFailed() {
            t0.c b2 = t0.b();
            v0 v0Var = v0.this;
            b2.b((w0) v0Var.f6824a, v0Var, null, LoadingError.ShowFailed);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void printError(String str, Object obj) {
            v0 v0Var = v0.this;
            ((w0) v0Var.f6824a).a(v0Var, str, obj);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdClicked(UnifiedAdCallbackClickTrackListener unifiedAdCallbackClickTrackListener) {
            t0.c b2 = t0.b();
            v0 v0Var = v0.this;
            b2.a((w0) v0Var.f6824a, v0Var, (l2) null, unifiedAdCallbackClickTrackListener);
        }
    }

    @Override // com.appodeal.ads.l
    public final UnifiedAdParams a(int i) {
        return new b();
    }

    @Override // com.appodeal.ads.r5
    public final int a(Context context) {
        HashMap hashMap = f1.f6654a;
        return Math.round(TypedValue.applyDimension(1, this.t, context.getResources().getDisplayMetrics()));
    }
}
