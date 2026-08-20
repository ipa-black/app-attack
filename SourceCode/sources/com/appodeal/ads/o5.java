package com.appodeal.ads;

import android.os.Bundle;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedAd;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdCallbackClickTrackListener;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedVideo;
import com.appodeal.ads.unified.UnifiedVideoCallback;
import com.appodeal.ads.unified.UnifiedVideoParams;
import com.appodeal.ads.w2;
/* loaded from: classes.dex */
public final class o5 extends j1<q5, UnifiedVideo, UnifiedVideoParams, UnifiedVideoCallback> {

    /* loaded from: classes.dex */
    public static final class b implements UnifiedVideoParams {
        @Override // com.appodeal.ads.unified.UnifiedFullscreenAdParams
        public final int getAfd() {
            return w2.a().q;
        }

        @Override // com.appodeal.ads.unified.UnifiedAdParams
        public final String obtainPlacementId() {
            return com.appodeal.ads.segments.g.a(w2.a().l);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdParams
        public final String obtainSegmentId() {
            return w2.a().r().toString();
        }
    }

    public o5(q5 q5Var, AdNetwork adNetwork, d0 d0Var) {
        super(q5Var, adNetwork, d0Var);
    }

    @Override // com.appodeal.ads.l
    public final UnifiedAd a(AdNetwork adNetwork) {
        return adNetwork.createVideo();
    }

    @Override // com.appodeal.ads.l
    public final UnifiedAdCallback c() {
        return new a();
    }

    @Override // com.appodeal.ads.l
    public final LoadingError l() {
        if (this.f6825b.isVideoShowing()) {
            return LoadingError.Canceled;
        }
        return null;
    }

    /* loaded from: classes.dex */
    public final class a extends UnifiedVideoCallback {
        public a() {
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdClicked() {
            w2.c b2 = w2.b();
            o5 o5Var = o5.this;
            b2.a((q5) o5Var.f6824a, o5Var, (l2) null, (UnifiedAdCallbackClickTrackListener) null);
        }

        @Override // com.appodeal.ads.unified.UnifiedFullscreenAdCallback
        public final void onAdClosed() {
            w2.c b2 = w2.b();
            o5 o5Var = o5.this;
            b2.b((r) ((q5) o5Var.f6824a), (j1) o5Var);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdExpired() {
            w2.c b2 = w2.b();
            o5 o5Var = o5.this;
            b2.e((q5) o5Var.f6824a, o5Var);
        }

        @Override // com.appodeal.ads.unified.UnifiedFullscreenAdCallback
        public final void onAdFinished() {
            w2.c b2 = w2.b();
            o5 o5Var = o5.this;
            b2.i((q5) o5Var.f6824a, o5Var, null);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdInfoRequested(Bundle bundle) {
            o5.this.a(bundle);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdLoadFailed(LoadingError loadingError) {
            w2.c b2 = w2.b();
            o5 o5Var = o5.this;
            b2.a((w2.c) ((q5) o5Var.f6824a), (q5) o5Var, loadingError);
        }

        @Override // com.appodeal.ads.unified.UnifiedFullscreenAdCallback
        public final void onAdLoaded() {
            w2.c b2 = w2.b();
            o5 o5Var = o5.this;
            b2.n((q5) o5Var.f6824a, o5Var);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdShowFailed() {
            w2.c b2 = w2.b();
            o5 o5Var = o5.this;
            b2.b((q5) o5Var.f6824a, o5Var, null, LoadingError.ShowFailed);
        }

        @Override // com.appodeal.ads.unified.UnifiedFullscreenAdCallback
        public final void onAdShown() {
            w2.c b2 = w2.b();
            o5 o5Var = o5.this;
            b2.j((q5) o5Var.f6824a, o5Var, null);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void printError(String str, Object obj) {
            o5 o5Var = o5.this;
            ((q5) o5Var.f6824a).a(o5Var, str, obj);
        }

        @Override // com.appodeal.ads.unified.UnifiedAdCallback
        public final void onAdClicked(UnifiedAdCallbackClickTrackListener unifiedAdCallbackClickTrackListener) {
            w2.c b2 = w2.b();
            o5 o5Var = o5.this;
            b2.a((q5) o5Var.f6824a, o5Var, (l2) null, unifiedAdCallbackClickTrackListener);
        }
    }

    @Override // com.appodeal.ads.l
    public final UnifiedAdParams a(int i) {
        return new b();
    }
}
