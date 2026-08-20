package com.appodeal.ads.adapters.notsy;

import com.appodeal.ads.AdNetworkBuilder;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobNetwork;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobRequestParams;
import com.appodeal.ads.adapters.notsy.banner.a;
import com.appodeal.ads.unified.UnifiedBanner;
import com.appodeal.ads.unified.UnifiedInterstitial;
import com.appodeal.ads.unified.UnifiedMrec;
import com.appodeal.ads.unified.UnifiedNative;
import com.appodeal.ads.unified.UnifiedRewarded;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class NotsyNetwork extends UnifiedAdmobNetwork<AdManagerAdRequest, AdManagerAdRequest.Builder> {

    /* loaded from: classes2.dex */
    public static class builder extends UnifiedAdmobNetwork.builder {
        @Override // com.appodeal.ads.AdNetworkBuilder
        public NotsyNetwork build() {
            return new NotsyNetwork(this);
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getAdapterVersion() {
            return "0";
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getName() {
            return "notsy";
        }
    }

    public NotsyNetwork(AdNetworkBuilder adNetworkBuilder) {
        super(adNetworkBuilder);
    }

    @Override // com.appodeal.ads.adapters.admob.unified.UnifiedAdmobNetwork
    public AdManagerAdRequest createAdRequest(AdManagerAdRequest.Builder builder2) {
        return builder2.build();
    }

    @Override // com.appodeal.ads.adapters.admob.unified.UnifiedAdmobNetwork
    public AdManagerAdRequest.Builder createAdRequestBuilder(JSONObject jSONObject) {
        AdManagerAdRequest.Builder builder2 = new AdManagerAdRequest.Builder();
        JSONObject optJSONObject = jSONObject.optJSONObject("targeting");
        if (optJSONObject != null) {
            Iterator<String> keys = optJSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                builder2.addCustomTargeting(next, optJSONObject.optString(next));
            }
        }
        return builder2;
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedBanner<UnifiedAdmobRequestParams<AdManagerAdRequest>> createBanner() {
        return new a();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedInterstitial<UnifiedAdmobRequestParams<AdManagerAdRequest>> createInterstitial() {
        return new com.appodeal.ads.adapters.notsy.interstitial.a();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedMrec<UnifiedAdmobRequestParams<AdManagerAdRequest>> createMrec() {
        return new com.appodeal.ads.adapters.notsy.mrec.a();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedNative<UnifiedAdmobRequestParams<AdManagerAdRequest>> createNativeAd() {
        return new com.appodeal.ads.adapters.notsy.native_ad.a();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedRewarded<UnifiedAdmobRequestParams<AdManagerAdRequest>> createRewarded() {
        return new com.appodeal.ads.adapters.notsy.rewarded_video.a();
    }
}
