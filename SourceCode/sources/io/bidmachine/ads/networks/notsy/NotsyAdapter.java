package io.bidmachine.ads.networks.notsy;

import android.content.Context;
import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.bidmachine.AdsFormat;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.HeaderBiddingAdRequestParams;
import io.bidmachine.HeaderBiddingAdapter;
import io.bidmachine.HeaderBiddingCollectParamsCallback;
import io.bidmachine.InitializationParams;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfigParams;
import io.bidmachine.NetworkInitializationCallback;
import io.bidmachine.ads.networks.notsy.InternalNotsyData;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.utils.BMError;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
class NotsyAdapter extends HeaderBiddingAdapter {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NotsyAdapter() {
        super("notsy", BuildConfig.ADAPTER_SDK_VERSION_NAME, BuildConfig.ADAPTER_VERSION_NAME, 16, new AdsType[]{AdsType.Banner, AdsType.Interstitial, AdsType.Rewarded});
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedBannerAd createBanner() {
        return new NotsyBanner();
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedFullscreenAd createInterstitial() {
        return new NotsyInterstitial();
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedFullscreenAd createRewarded() {
        return new NotsyRewarded();
    }

    @Override // io.bidmachine.NetworkAdapter
    protected boolean isNetworkInitialized(ContextProvider contextProvider) throws Throwable {
        return NotsyNetwork.isInitialized();
    }

    @Override // io.bidmachine.NetworkAdapter
    protected void onNetworkInitialize(ContextProvider contextProvider, InitializationParams initializationParams, NetworkConfigParams networkConfigParams, NetworkInitializationCallback networkInitializationCallback) throws Throwable {
        AdsFormat[] values;
        Context applicationContext = contextProvider.getApplicationContext();
        if (!NotsyNetwork.isGAMPresent(applicationContext)) {
            networkInitializationCallback.onFail("GAM is absent or used unsupported version");
            return;
        }
        EnumMap<AdsFormat, List<Map<String, String>>> obtainNetworkMediationConfigs = networkConfigParams.obtainNetworkMediationConfigs(AdsFormat.values());
        if (obtainNetworkMediationConfigs == null) {
            networkInitializationCallback.onFail("Network mediation configs not found");
            return;
        }
        EnumMap enumMap = new EnumMap(AdsFormat.class);
        for (AdsFormat adsFormat : AdsFormat.values()) {
            List<Map<String, String>> list = obtainNetworkMediationConfigs.get(adsFormat);
            if (list != null) {
                ArrayList arrayList = new ArrayList();
                for (Map<String, String> map : list) {
                    String remove = map.remove("ad_unit_id");
                    if (!TextUtils.isEmpty(remove)) {
                        String remove2 = map.remove(FirebaseAnalytics.Param.SCORE);
                        if (!TextUtils.isEmpty(remove2)) {
                            String remove3 = map.remove("price");
                            if (!TextUtils.isEmpty(remove3)) {
                                arrayList.add(new InternalNotsyAdUnit(adsFormat, new InternalNotsyData(remove, Float.parseFloat(remove2), Float.parseFloat(remove3)), map));
                            }
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    enumMap.put((EnumMap) adsFormat, (AdsFormat) arrayList);
                }
            }
        }
        NotsyNetwork.init(applicationContext, enumMap);
        networkInitializationCallback.onSuccess();
    }

    @Override // io.bidmachine.HeaderBiddingAdapter
    protected void onCollectHeaderBiddingParams(ContextProvider contextProvider, UnifiedAdRequestParams unifiedAdRequestParams, NetworkAdUnit networkAdUnit, HeaderBiddingAdRequestParams headerBiddingAdRequestParams, HeaderBiddingCollectParamsCallback headerBiddingCollectParamsCallback) throws Throwable {
        Map<String, String> mediationConfig = networkAdUnit.getMediationConfig();
        InternalNotsyData create = InternalNotsyData.Factory.create(mediationConfig);
        if (create == null) {
            headerBiddingCollectParamsCallback.onCollectFail(BMError.adapter("InternalNotsyData is null"));
        } else if (!NotsyNetwork.reserveNotsyAd(networkAdUnit, create)) {
            headerBiddingCollectParamsCallback.onCollectFail(BMError.adapter(String.format("Ad not loaded by this parameters - %s", create)));
        } else {
            headerBiddingCollectParamsCallback.onCollectFinished(new HashMap(mediationConfig));
        }
    }

    @Override // io.bidmachine.NetworkAdapter
    public void onLossAuction(NetworkAdUnit networkAdUnit) throws Throwable {
        NotsyNetwork.unReserveNotsyAd(networkAdUnit);
    }

    @Override // io.bidmachine.NetworkAdapter
    public void clearAuction(NetworkAdUnit networkAdUnit) throws Throwable {
        NotsyNetwork.unReserveNotsyAd(networkAdUnit);
    }
}
