package io.bidmachine.ads.networks.pangle;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.onesignal.outcomes.OSOutcomeConstants;
import io.bidmachine.AdsType;
import io.bidmachine.BidMachine;
import io.bidmachine.ContextProvider;
import io.bidmachine.HeaderBiddingAdRequestParams;
import io.bidmachine.HeaderBiddingAdapter;
import io.bidmachine.HeaderBiddingCollectParamsCallback;
import io.bidmachine.InitializationParams;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfigParams;
import io.bidmachine.NetworkInitializationCallback;
import io.bidmachine.core.AdapterLogger;
import io.bidmachine.core.Utils;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.utils.BMError;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
class PangleAdapter extends HeaderBiddingAdapter {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PangleAdapter() {
        super("pangle_sdk", BuildConfig.ADAPTER_SDK_VERSION_NAME, BuildConfig.ADAPTER_VERSION_NAME, 16, new AdsType[]{AdsType.Banner, AdsType.Interstitial, AdsType.Rewarded});
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedBannerAd createBanner() {
        return new PangleBannerAd();
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedFullscreenAd createInterstitial() {
        return new PangleInterstitialAd();
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedFullscreenAd createRewarded() {
        return new PangleRewardedAd();
    }

    @Override // io.bidmachine.NetworkAdapter
    protected boolean isNetworkInitialized(ContextProvider contextProvider) throws Throwable {
        return TTAdSdk.isInitSuccess();
    }

    @Override // io.bidmachine.NetworkAdapter
    protected void onNetworkInitialize(ContextProvider contextProvider, InitializationParams initializationParams, NetworkConfigParams networkConfigParams, final NetworkInitializationCallback networkInitializationCallback) throws Throwable {
        Map<String, String> obtainNetworkParams = networkConfigParams.obtainNetworkParams();
        if (obtainNetworkParams == null) {
            networkInitializationCallback.onFail("Network parameters not found");
            return;
        }
        String str = obtainNetworkParams.get(OSOutcomeConstants.APP_ID);
        if (TextUtils.isEmpty(str)) {
            networkInitializationCallback.onFail(String.format("%s not provided", OSOutcomeConstants.APP_ID));
            return;
        }
        DataRestrictions dataRestrictions = initializationParams.getDataRestrictions();
        final Context applicationContext = contextProvider.getApplicationContext();
        final TTAdConfig build = new TTAdConfig.Builder().appId(str).debug(initializationParams.isTestMode()).coppa(toPangleCoppa(dataRestrictions)).setGDPR(toPangleGDPR(dataRestrictions)).data(createPangleData()).build();
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.pangle.PangleAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTAdSdk.init(applicationContext, build, new TTAdSdk.InitCallback() { // from class: io.bidmachine.ads.networks.pangle.PangleAdapter.1.1
                        public void success() {
                            networkInitializationCallback.onSuccess();
                        }

                        public void fail(int i, String str2) {
                            networkInitializationCallback.onFail(str2);
                        }
                    });
                } catch (Throwable th) {
                    AdapterLogger.logThrowable(th);
                }
            }
        });
    }

    @Override // io.bidmachine.HeaderBiddingAdapter
    protected void onCollectHeaderBiddingParams(ContextProvider contextProvider, UnifiedAdRequestParams unifiedAdRequestParams, NetworkAdUnit networkAdUnit, HeaderBiddingAdRequestParams headerBiddingAdRequestParams, HeaderBiddingCollectParamsCallback headerBiddingCollectParamsCallback) throws Exception {
        String mediationParameter = networkAdUnit.getMediationParameter(OSOutcomeConstants.APP_ID);
        if (TextUtils.isEmpty(mediationParameter)) {
            headerBiddingCollectParamsCallback.onCollectFail(BMError.adapterGetsParameter(OSOutcomeConstants.APP_ID));
            return;
        }
        String mediationParameter2 = networkAdUnit.getMediationParameter("slot_id");
        if (TextUtils.isEmpty(mediationParameter2)) {
            headerBiddingCollectParamsCallback.onCollectFail(BMError.adapterGetsParameter("slot_id"));
            return;
        }
        configure(unifiedAdRequestParams.getDataRestrictions());
        String biddingToken = TTAdSdk.getAdManager().getBiddingToken();
        if (TextUtils.isEmpty(biddingToken)) {
            headerBiddingCollectParamsCallback.onCollectFail(BMError.adapterGetsParameter("network_bid_token"));
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(OSOutcomeConstants.APP_ID, mediationParameter);
        hashMap.put("slot_id", mediationParameter2);
        hashMap.put("network_bid_token", biddingToken);
        headerBiddingCollectParamsCallback.onCollectFinished(hashMap);
    }

    private void configure(DataRestrictions dataRestrictions) {
        TTAdSdk.setCoppa(toPangleCoppa(dataRestrictions));
        TTAdSdk.setGdpr(toPangleGDPR(dataRestrictions));
    }

    private int toPangleCoppa(DataRestrictions dataRestrictions) {
        return dataRestrictions.isUserAgeRestricted() ? 1 : 0;
    }

    private int toPangleGDPR(DataRestrictions dataRestrictions) {
        return dataRestrictions.isUserGdprProtected() ? 1 : 0;
    }

    private String createPangleData() {
        try {
            return new JSONArray().put(new JSONObject().put("name", "mediation").put("value", BidMachine.NAME)).put(new JSONObject().put("name", "adapter_version").put("value", "2.1.5")).toString();
        } catch (Throwable unused) {
            return null;
        }
    }
}
