package com.appodeal.ads;

import android.os.Bundle;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.o1;
import com.appodeal.ads.unified.UnifiedAd;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdCallbackClickTrackListener;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedInterstitial;
import com.appodeal.ads.unified.UnifiedInterstitialCallback;
import com.appodeal.ads.unified.UnifiedInterstitialParams;
/* loaded from: classes.dex */
public final class p1 extends j1<r1, UnifiedInterstitial, UnifiedInterstitialParams, UnifiedInterstitialCallback> {

    /* loaded from: classes.dex */
    public static final class b implements UnifiedInterstitialParams {
        @Override // com.appodeal.ads.unified.UnifiedFullscreenAdParams
        public final int getAfd() {
            return o1.a().q;
        }

        @Override // com.appodeal.ads.unified.UnifiedAdParams
        public final String obtainPlacementId() {
            return com.appodeal.ads.segments.g.a(o1.a().l);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdParams
        public final String obtainSegmentId() {
            return o1.a().r().toString();
        }
    }

    public p1(r1 r1Var, AdNetwork adNetwork, d0 d0Var) {
        super(r1Var, adNetwork, d0Var);
    }

    @Override // com.appodeal.ads.l
    public final UnifiedAd a(AdNetwork adNetwork) {
        return adNetwork.createInterstitial();
    }

    @Override // com.appodeal.ads.l
    public final UnifiedAdCallback c() {
        return new a();
    }

    @Override // com.appodeal.ads.l
    public final LoadingError l() {
        if (this.f6825b.isInterstitialShowing()) {
            return LoadingError.Canceled;
        }
        return null;
    }

    /* loaded from: classes.dex */
    public final class a extends UnifiedInterstitialCallback {
        public a() {
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdClicked() {
            o1.b b2 = o1.b();
            p1 p1Var = p1.this;
            b2.a((r1) p1Var.f6824a, p1Var, (l2) null, (UnifiedAdCallbackClickTrackListener) null);
        }

        @Override // com.appodeal.ads.unified.UnifiedFullscreenAdCallback
        public final void onAdClosed() {
            o1.b b2 = o1.b();
            p1 p1Var = p1.this;
            b2.b((r) ((r1) p1Var.f6824a), (j1) p1Var);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdExpired() {
            o1.b b2 = o1.b();
            p1 p1Var = p1.this;
            b2.e((r1) p1Var.f6824a, p1Var);
        }

        @Override // com.appodeal.ads.unified.UnifiedFullscreenAdCallback
        public final void onAdFinished() {
            o1.b b2 = o1.b();
            p1 p1Var = p1.this;
            b2.i((r1) p1Var.f6824a, p1Var, null);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdInfoRequested(Bundle bundle) {
            p1.this.a(bundle);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdLoadFailed(LoadingError loadingError) {
            o1.b b2 = o1.b();
            p1 p1Var = p1.this;
            b2.a((o1.b) ((r1) p1Var.f6824a), (r1) p1Var, loadingError);
        }

        @Override // com.appodeal.ads.unified.UnifiedFullscreenAdCallback
        public final void onAdLoaded() {
            o1.b b2 = o1.b();
            p1 p1Var = p1.this;
            b2.n((r1) p1Var.f6824a, p1Var);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdShowFailed() {
            o1.b b2 = o1.b();
            p1 p1Var = p1.this;
            b2.b((r1) p1Var.f6824a, p1Var, null, LoadingError.ShowFailed);
        }

        @Override // com.appodeal.ads.unified.UnifiedFullscreenAdCallback
        public final void onAdShown() {
            o1.b b2 = o1.b();
            p1 p1Var = p1.this;
            b2.j((r1) p1Var.f6824a, p1Var, null);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void printError(String str, Object obj) {
            p1 p1Var = p1.this;
            ((r1) p1Var.f6824a).a(p1Var, str, obj);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdClicked(UnifiedAdCallbackClickTrackListener unifiedAdCallbackClickTrackListener) {
            o1.b b2 = o1.b();
            p1 p1Var = p1.this;
            b2.a((r1) p1Var.f6824a, p1Var, (l2) null, unifiedAdCallbackClickTrackListener);
        }
    }

    @Override // com.appodeal.ads.l
    public final UnifiedAdParams a(int i) {
        return new b();
    }
}
