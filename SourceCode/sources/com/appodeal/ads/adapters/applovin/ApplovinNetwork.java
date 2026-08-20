package com.appodeal.ads.adapters.applovin;

import android.content.Context;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkSettings;
import com.appodeal.ads.AdNetwork;
import com.appodeal.ads.AdNetworkBuilder;
import com.appodeal.ads.AdNetworkMediationParams;
import com.appodeal.ads.AdUnit;
import com.appodeal.ads.AppodealNetworks;
import com.appodeal.ads.NetworkInitializationListener;
import com.appodeal.ads.RestrictedData;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedBanner;
import com.appodeal.ads.unified.UnifiedInterstitial;
import com.appodeal.ads.unified.UnifiedMrec;
import com.appodeal.ads.unified.UnifiedRewarded;
import com.appodeal.ads.unified.UnifiedVideo;
import com.appodeal.ads.utils.ActivityRule;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class ApplovinNetwork extends AdNetwork<RequestParams> {
    private boolean loggingLevel;

    /* loaded from: classes2.dex */
    public static final class RequestParams {
        public JSONObject jsonData;
        public RestrictedData restrictedData;
        public AppLovinSdk sdk;
        public String zoneId;

        public RequestParams(String str, AppLovinSdk appLovinSdk, JSONObject jSONObject) {
            this.zoneId = str;
            this.sdk = appLovinSdk;
            this.jsonData = jSONObject;
        }

        public RequestParams(JSONObject jSONObject, RestrictedData restrictedData) {
            this.jsonData = jSONObject;
            this.restrictedData = restrictedData;
        }
    }

    /* loaded from: classes2.dex */
    public static class builder extends AdNetworkBuilder {
        @Override // com.appodeal.ads.AdNetworkBuilder
        public ApplovinNetwork build() {
            return new ApplovinNetwork(this);
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public ActivityRule[] getAdActivityRules() {
            return new ActivityRule[]{new ActivityRule.Builder("com.applovin.adview.AppLovinFullscreenActivity").build(), new ActivityRule.Builder("com.applovin.sdk.AppLovinWebViewActivity").build()};
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getAdapterVersion() {
            return "0";
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getName() {
            return AppodealNetworks.APPLOVIN;
        }
    }

    public ApplovinNetwork(AdNetworkBuilder adNetworkBuilder) {
        super(adNetworkBuilder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$initialize$0(NetworkInitializationListener networkInitializationListener, String str, AppLovinSdk appLovinSdk, AdUnit adUnit, AppLovinSdkConfiguration appLovinSdkConfiguration) {
        try {
            networkInitializationListener.onInitializationFinished(new RequestParams(str, appLovinSdk, adUnit.getJsonData()));
        } catch (Exception unused) {
            networkInitializationListener.onInitializationFailed(LoadingError.InternalError);
        }
    }

    private void setMediatorName(AppLovinSdk appLovinSdk, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        appLovinSdk.setMediationProvider(str);
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedBanner<RequestParams> createBanner() {
        return new com.appodeal.ads.adapters.applovin.banner.a();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedInterstitial<RequestParams> createInterstitial() {
        return new com.appodeal.ads.adapters.applovin.interstitial.a();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedMrec<RequestParams> createMrec() {
        return new com.appodeal.ads.adapters.applovin.mrec.a();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedRewarded<RequestParams> createRewarded() {
        return new com.appodeal.ads.adapters.applovin.rewarded_video.a();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedVideo<RequestParams> createVideo() {
        return new com.appodeal.ads.adapters.applovin.video.a();
    }

    @Override // com.appodeal.ads.AdNetwork
    public String getRecommendedVersion() {
        return "11.6.1";
    }

    @Override // com.appodeal.ads.AdNetwork
    public String getVersion() {
        return AppLovinSdk.VERSION;
    }

    @Override // com.appodeal.ads.AdNetwork
    public void initialize(ContextProvider contextProvider, final AdUnit adUnit, AdNetworkMediationParams adNetworkMediationParams, final NetworkInitializationListener<RequestParams> networkInitializationListener) throws Exception {
        RestrictedData restrictedData = adNetworkMediationParams.getRestrictedData();
        Context applicationContext = contextProvider.getApplicationContext();
        if (adUnit.getJsonData().has("url")) {
            networkInitializationListener.onInitializationFinished(new RequestParams(adUnit.getJsonData(), restrictedData));
            return;
        }
        String string = adUnit.getJsonData().getString("applovin_key");
        final String optString = adUnit.getJsonData().optString("zone_id");
        final AppLovinSdk appLovinSdk = AppLovinSdk.getInstance(string, new AppLovinSdkSettings(applicationContext), applicationContext);
        AppLovinSdkSettings settings = appLovinSdk.getSettings();
        settings.setVerboseLogging(this.loggingLevel);
        Boolean isMuted = adUnit.isMuted();
        if (isMuted != null) {
            settings.setMuted(isMuted.booleanValue());
        }
        appLovinSdk.initializeSdk(new AppLovinSdk.SdkInitializationListener() { // from class: com.appodeal.ads.adapters.applovin.ApplovinNetwork$$ExternalSyntheticLambda0
            @Override // com.applovin.sdk.AppLovinSdk.SdkInitializationListener
            public final void onSdkInitialized(AppLovinSdkConfiguration appLovinSdkConfiguration) {
                ApplovinNetwork.lambda$initialize$0(NetworkInitializationListener.this, optString, appLovinSdk, adUnit, appLovinSdkConfiguration);
            }
        });
        updateConsent(applicationContext, restrictedData);
        setMediatorName(appLovinSdk, adUnit.getMediatorName());
    }

    @Override // com.appodeal.ads.AdNetwork
    public void setLogging(boolean z) {
        this.loggingLevel = z;
    }

    public void updateConsent(Context context, RestrictedData restrictedData) {
        if (restrictedData.isUserInGdprScope()) {
            AppLovinPrivacySettings.setHasUserConsent(restrictedData.isUserHasConsent(), context);
        } else if (restrictedData.isUserInCcpaScope()) {
            AppLovinPrivacySettings.setDoNotSell(restrictedData.isUserHasConsent(), context);
        }
        AppLovinPrivacySettings.setIsAgeRestrictedUser(restrictedData.isUserAgeRestricted(), context);
    }
}
