package com.appodeal.ads.unified.vast;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedFullscreenAd;
import com.appodeal.ads.unified.UnifiedFullscreenAdCallback;
import com.appodeal.ads.unified.UnifiedFullscreenAdParams;
import com.appodeal.ads.unified.UnifiedRewardedParams;
import com.explorestack.iab.CacheControl;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.VideoType;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class UnifiedVastUtils {

    /* loaded from: classes2.dex */
    public interface UnifiedFullscreenVast<UnifiedAdParamsType extends UnifiedFullscreenAdParams, UnifiedAdCallbackType extends UnifiedFullscreenAdCallback> {
        UnifiedVastFullscreenListener<UnifiedAdCallbackType> createListener(Context context, UnifiedAdParamsType unifiedadparamstype, UnifiedVastNetworkParams unifiedVastNetworkParams, UnifiedAdCallbackType unifiedadcallbacktype);

        VideoType getVideoType();

        void loadVast(Context context, UnifiedAdParamsType unifiedadparamstype, UnifiedVastNetworkParams unifiedVastNetworkParams, UnifiedAdCallbackType unifiedadcallbacktype);

        void performVastRequest(Context context, UnifiedAdParamsType unifiedadparamstype, UnifiedVastNetworkParams unifiedVastNetworkParams, UnifiedAdCallbackType unifiedadcallbacktype, String str);
    }

    /* loaded from: classes2.dex */
    public static class UnifiedVastFullscreenAd<UnifiedAdParamsType extends UnifiedFullscreenAdParams, UnifiedAdCallbackType extends UnifiedFullscreenAdCallback, NetworkRequestParams> extends UnifiedFullscreenAd<UnifiedAdParamsType, UnifiedAdCallbackType, NetworkRequestParams> {
        private final UnifiedFullscreenVast<UnifiedAdParamsType, UnifiedAdCallbackType> unifiedVastAd;
        private UnifiedVastFullscreenListener<UnifiedAdCallbackType> vastListener;
        public VastRequest vastRequest;

        public UnifiedVastFullscreenAd(UnifiedFullscreenVast<UnifiedAdParamsType, UnifiedAdCallbackType> unifiedFullscreenVast) {
            this.unifiedVastAd = unifiedFullscreenVast;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.appodeal.ads.unified.UnifiedAd
        public /* bridge */ /* synthetic */ void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
            load(contextProvider, (ContextProvider) ((UnifiedFullscreenAdParams) unifiedAdParams), (UnifiedFullscreenAdParams) obj, (Object) ((UnifiedFullscreenAdCallback) unifiedAdCallback));
        }

        public void load(ContextProvider contextProvider, UnifiedAdParamsType unifiedadparamstype, NetworkRequestParams networkrequestparams, UnifiedAdCallbackType unifiedadcallbacktype) {
            UnifiedVastNetworkParams unifiedVastNetworkParams = (UnifiedVastNetworkParams) networkrequestparams;
            Context applicationContext = contextProvider.getApplicationContext();
            if (UnifiedVastUtils.isValidAdm(unifiedVastNetworkParams.adm)) {
                loadVast(applicationContext, unifiedadparamstype, unifiedVastNetworkParams, unifiedadcallbacktype);
            } else {
                this.unifiedVastAd.performVastRequest(applicationContext, unifiedadparamstype, unifiedVastNetworkParams, unifiedadcallbacktype, unifiedVastNetworkParams.vastUrl);
            }
        }

        public void loadVast(Context context, UnifiedAdParamsType unifiedadparamstype, UnifiedVastNetworkParams unifiedVastNetworkParams, UnifiedAdCallbackType unifiedadcallbacktype) {
            this.vastListener = this.unifiedVastAd.createListener(context, unifiedadparamstype, unifiedVastNetworkParams, unifiedadcallbacktype);
            VastRequest createVastRequest = UnifiedVastUtils.createVastRequest(unifiedadparamstype, unifiedVastNetworkParams, unifiedVastNetworkParams.vastUrl);
            this.vastRequest = createVastRequest;
            createVastRequest.loadVideoWithData(context, unifiedVastNetworkParams.adm, this.vastListener);
        }

        @Override // com.appodeal.ads.unified.UnifiedAd
        public void onDestroy() {
            if (this.vastRequest != null) {
                this.vastRequest = null;
            }
        }

        @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
        public void show(Activity activity, UnifiedAdCallbackType unifiedadcallbacktype) {
            VastRequest vastRequest = this.vastRequest;
            if (vastRequest == null || !vastRequest.checkFile()) {
                unifiedadcallbacktype.onAdShowFailed();
            } else {
                this.vastRequest.display(activity, this.unifiedVastAd.getVideoType(), this.vastListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static VastRequest createVastRequest(UnifiedFullscreenAdParams unifiedFullscreenAdParams, UnifiedVastNetworkParams unifiedVastNetworkParams, String str) {
        VastRequest.Builder addExtra = VastRequest.newBuilder().setCacheControl(CacheControl.FullLoad).setXmlUrl(str).setCompanionCloseTime(unifiedVastNetworkParams.closeTime).setAutoClose(unifiedVastNetworkParams.autoClose).addExtra("segment_id", unifiedFullscreenAdParams.obtainSegmentId()).addExtra("placement_id", unifiedFullscreenAdParams.obtainPlacementId());
        if (unifiedFullscreenAdParams instanceof UnifiedRewardedParams) {
            addExtra.setMaxDuration(((UnifiedRewardedParams) unifiedFullscreenAdParams).getMaxDuration());
        }
        return addExtra.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isValidAdm(String str) {
        return !TextUtils.isEmpty(str) && TextUtils.getTrimmedLength(str) > 0;
    }
}
