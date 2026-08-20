package com.appodeal.ads;

import android.os.Bundle;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.o4;
import com.appodeal.ads.unified.UnifiedAd;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdCallbackClickTrackListener;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedRewarded;
import com.appodeal.ads.unified.UnifiedRewardedCallback;
import com.appodeal.ads.unified.UnifiedRewardedParams;
/* loaded from: classes.dex */
public final class m4 extends j1<n4, UnifiedRewarded, UnifiedRewardedParams, UnifiedRewardedCallback> {

    /* loaded from: classes.dex */
    public static class b implements UnifiedRewardedParams {
        @Override // com.appodeal.ads.unified.UnifiedFullscreenAdParams
        public final int getAfd() {
            return o4.a().q;
        }

        @Override // com.appodeal.ads.unified.UnifiedRewardedParams
        public final int getMaxDuration() {
            return o4.f7270b;
        }

        @Override // com.appodeal.ads.unified.UnifiedAdParams
        public final String obtainPlacementId() {
            return com.appodeal.ads.segments.g.a(o4.a().l);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdParams
        public final String obtainSegmentId() {
            return o4.a().r().toString();
        }
    }

    public m4(n4 n4Var, AdNetwork adNetwork, d0 d0Var) {
        super(n4Var, adNetwork, d0Var);
    }

    @Override // com.appodeal.ads.l
    public final UnifiedAd a(AdNetwork adNetwork) {
        return adNetwork.createRewarded();
    }

    @Override // com.appodeal.ads.l
    public final UnifiedAdCallback c() {
        return new a();
    }

    @Override // com.appodeal.ads.l
    public final LoadingError l() {
        if (this.f6825b.isRewardedShowing()) {
            return LoadingError.Canceled;
        }
        return null;
    }

    /* loaded from: classes.dex */
    public final class a extends UnifiedRewardedCallback {
        public a() {
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdClicked() {
            o4.c b2 = o4.b();
            m4 m4Var = m4.this;
            b2.a((n4) m4Var.f6824a, m4Var, (l2) null, (UnifiedAdCallbackClickTrackListener) null);
        }

        @Override // com.appodeal.ads.unified.UnifiedFullscreenAdCallback
        public final void onAdClosed() {
            o4.c b2 = o4.b();
            m4 m4Var = m4.this;
            b2.b((r) ((n4) m4Var.f6824a), (j1) m4Var);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdExpired() {
            o4.c b2 = o4.b();
            m4 m4Var = m4.this;
            b2.e((n4) m4Var.f6824a, m4Var);
        }

        @Override // com.appodeal.ads.unified.UnifiedFullscreenAdCallback
        public final void onAdFinished() {
            o4.c b2 = o4.b();
            m4 m4Var = m4.this;
            b2.i((n4) m4Var.f6824a, m4Var, null);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdInfoRequested(Bundle bundle) {
            m4.this.a(bundle);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdLoadFailed(LoadingError loadingError) {
            o4.c b2 = o4.b();
            m4 m4Var = m4.this;
            b2.a((o4.c) ((n4) m4Var.f6824a), (n4) m4Var, loadingError);
        }

        @Override // com.appodeal.ads.unified.UnifiedFullscreenAdCallback
        public final void onAdLoaded() {
            o4.c b2 = o4.b();
            m4 m4Var = m4.this;
            b2.n((n4) m4Var.f6824a, m4Var);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdShowFailed() {
            o4.c b2 = o4.b();
            m4 m4Var = m4.this;
            b2.b((n4) m4Var.f6824a, m4Var, null, LoadingError.ShowFailed);
        }

        @Override // com.appodeal.ads.unified.UnifiedFullscreenAdCallback
        public final void onAdShown() {
            o4.c b2 = o4.b();
            m4 m4Var = m4.this;
            b2.j((n4) m4Var.f6824a, m4Var, null);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void printError(String str, Object obj) {
            m4 m4Var = m4.this;
            ((n4) m4Var.f6824a).a(m4Var, str, obj);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdClicked(UnifiedAdCallbackClickTrackListener unifiedAdCallbackClickTrackListener) {
            o4.c b2 = o4.b();
            m4 m4Var = m4.this;
            b2.a((n4) m4Var.f6824a, m4Var, (l2) null, unifiedAdCallbackClickTrackListener);
        }
    }

    @Override // com.appodeal.ads.l
    public final UnifiedAdParams a(int i) {
        return new b();
    }
}
