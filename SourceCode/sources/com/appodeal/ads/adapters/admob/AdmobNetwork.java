package com.appodeal.ads.adapters.admob;

import com.appodeal.ads.AdNetworkBuilder;
import com.appodeal.ads.adapters.admob.banner.AdmobBanner;
import com.appodeal.ads.adapters.admob.interstitial.AdmobInterstitial;
import com.appodeal.ads.adapters.admob.mrec.AdmobMrec;
import com.appodeal.ads.adapters.admob.native_ad.AdmobNative;
import com.appodeal.ads.adapters.admob.rewarded_video.AdmobRewarded;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobNetwork;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobRequestParams;
import com.appodeal.ads.unified.UnifiedBanner;
import com.appodeal.ads.unified.UnifiedInterstitial;
import com.appodeal.ads.unified.UnifiedMrec;
import com.appodeal.ads.unified.UnifiedNative;
import com.appodeal.ads.unified.UnifiedRewarded;
import com.google.android.gms.ads.AdRequest;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AdmobNetwork extends UnifiedAdmobNetwork<AdRequest, AdRequest.Builder> {

    /* loaded from: classes2.dex */
    public static class builder extends UnifiedAdmobNetwork.builder {
        @Override // com.appodeal.ads.AdNetworkBuilder
        public AdmobNetwork build() {
            return new AdmobNetwork(this);
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getAdapterVersion() {
            return "0";
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getName() {
            return "admob";
        }
    }

    public AdmobNetwork(AdNetworkBuilder adNetworkBuilder) {
        super(adNetworkBuilder);
    }

    @Override // com.appodeal.ads.adapters.admob.unified.UnifiedAdmobNetwork
    public AdRequest createAdRequest(AdRequest.Builder builder2) {
        return builder2.build();
    }

    @Override // com.appodeal.ads.adapters.admob.unified.UnifiedAdmobNetwork
    public AdRequest.Builder createAdRequestBuilder(JSONObject jSONObject) {
        return new AdRequest.Builder();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedBanner<UnifiedAdmobRequestParams<AdRequest>> createBanner() {
        return new AdmobBanner();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedInterstitial<UnifiedAdmobRequestParams<AdRequest>> createInterstitial() {
        return new AdmobInterstitial();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedMrec<UnifiedAdmobRequestParams<AdRequest>> createMrec() {
        return new AdmobMrec();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedNative<UnifiedAdmobRequestParams<AdRequest>> createNativeAd() {
        return new AdmobNative();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedRewarded<UnifiedAdmobRequestParams<AdRequest>> createRewarded() {
        return new AdmobRewarded();
    }
}
