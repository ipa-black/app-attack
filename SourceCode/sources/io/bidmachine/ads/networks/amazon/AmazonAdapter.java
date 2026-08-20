package io.bidmachine.ads.networks.amazon;

import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdRegistration;
import com.amazon.device.ads.DTBAdCallback;
import com.amazon.device.ads.DTBAdRequest;
import com.amazon.device.ads.DTBAdResponse;
import com.amazon.device.ads.DTBAdSize;
import com.amazon.device.ads.DtbConstants;
import com.amazon.device.ads.MRAIDPolicy;
import io.bidmachine.AdContentType;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.HeaderBiddingAdRequestParams;
import io.bidmachine.HeaderBiddingAdapter;
import io.bidmachine.HeaderBiddingCollectParamsCallback;
import io.bidmachine.InitializationParams;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfigParams;
import io.bidmachine.NetworkInitializationCallback;
import io.bidmachine.banner.BannerAdRequestParameters;
import io.bidmachine.banner.BannerSize;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.utils.BMError;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
class AmazonAdapter extends HeaderBiddingAdapter {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AmazonAdapter() {
        super(BuildConfig.ADAPTER_NAME, BuildConfig.ADAPTER_SDK_VERSION_NAME, BuildConfig.ADAPTER_VERSION_NAME, 19, new AdsType[]{AdsType.Banner, AdsType.Interstitial});
    }

    @Override // io.bidmachine.NetworkAdapter
    public void setLogging(boolean z) throws Throwable {
        AdRegistration.enableLogging(z);
    }

    @Override // io.bidmachine.NetworkAdapter
    protected boolean isNetworkInitialized(ContextProvider contextProvider) throws Throwable {
        return AdRegistration.isInitialized();
    }

    @Override // io.bidmachine.NetworkAdapter
    protected void onNetworkInitialize(ContextProvider contextProvider, InitializationParams initializationParams, NetworkConfigParams networkConfigParams, NetworkInitializationCallback networkInitializationCallback) throws Throwable {
        Map<String, String> obtainNetworkParams = networkConfigParams.obtainNetworkParams();
        if (obtainNetworkParams == null) {
            networkInitializationCallback.onFail("Network parameters not found");
            return;
        }
        String str = obtainNetworkParams.get("app_key");
        if (TextUtils.isEmpty(str)) {
            networkInitializationCallback.onFail(String.format("%s not provided", "app_key"));
            return;
        }
        AdRegistration.getInstance(str, contextProvider.getContext().getApplicationContext());
        AdRegistration.setMRAIDSupportedVersions(new String[]{"1.0", DtbConstants.APS_ADAPTER_VERSION_2});
        AdRegistration.setMRAIDPolicy(MRAIDPolicy.CUSTOM);
        configure(initializationParams.isTestMode(), initializationParams.getDataRestrictions());
        networkInitializationCallback.onSuccess();
    }

    @Override // io.bidmachine.HeaderBiddingAdapter
    protected void onCollectHeaderBiddingParams(ContextProvider contextProvider, UnifiedAdRequestParams unifiedAdRequestParams, NetworkAdUnit networkAdUnit, HeaderBiddingAdRequestParams headerBiddingAdRequestParams, HeaderBiddingCollectParamsCallback headerBiddingCollectParamsCallback) throws Throwable {
        String mediationParameter = networkAdUnit.getMediationParameter("slot_uuid");
        if (TextUtils.isEmpty(mediationParameter)) {
            headerBiddingCollectParamsCallback.onCollectFail(BMError.adapterGetsParameter("slot_uuid"));
        } else if (TextUtils.isEmpty(networkAdUnit.getMediationParameter("app_key"))) {
            headerBiddingCollectParamsCallback.onCollectFail(BMError.adapterGetsParameter("app_key"));
        } else {
            configure(unifiedAdRequestParams.isTestMode(), unifiedAdRequestParams.getDataRestrictions());
            AdsType adsType = headerBiddingAdRequestParams.getAdsType();
            String uSPrivacyString = unifiedAdRequestParams.getDataRestrictions().getUSPrivacyString();
            if (adsType == AdsType.Banner) {
                BannerSize bannerSize = ((BannerAdRequestParameters) unifiedAdRequestParams.getAdRequestParameters()).getBannerSize();
                AmazonLoader.forDisplay(headerBiddingCollectParamsCallback).withUsPrivacy(uSPrivacyString).load(new DTBAdSize(bannerSize.width, bannerSize.height, mediationParameter));
            } else if (adsType == AdsType.Interstitial || adsType == AdsType.Rewarded) {
                if (headerBiddingAdRequestParams.getAdContentType() == AdContentType.Video) {
                    DisplayMetrics displayMetrics = contextProvider.getContext().getResources().getDisplayMetrics();
                    AmazonLoader.forVideo(headerBiddingCollectParamsCallback).withUsPrivacy(uSPrivacyString).load(new DTBAdSize.DTBVideo(displayMetrics.widthPixels, displayMetrics.heightPixels, mediationParameter));
                    return;
                }
                AmazonLoader.forDisplay(headerBiddingCollectParamsCallback).withUsPrivacy(uSPrivacyString).load(new DTBAdSize.DTBInterstitialAdSize(mediationParameter));
            } else {
                headerBiddingCollectParamsCallback.onCollectFail(BMError.adapter("Unsupported ads type"));
            }
        }
    }

    private void configure(boolean z, DataRestrictions dataRestrictions) {
        AdRegistration.enableTesting(z);
        AdRegistration.useGeoLocation(dataRestrictions.canSendGeoPosition());
    }

    /* loaded from: classes5.dex */
    private static abstract class AmazonLoader {
        private final HeaderBiddingCollectParamsCallback collectCallback;
        private String usPrivacy;

        abstract void handleResponse(DTBAdResponse dTBAdResponse, Map<String, String> map);

        /* synthetic */ AmazonLoader(HeaderBiddingCollectParamsCallback headerBiddingCollectParamsCallback, AnonymousClass1 anonymousClass1) {
            this(headerBiddingCollectParamsCallback);
        }

        static AmazonLoader forDisplay(HeaderBiddingCollectParamsCallback headerBiddingCollectParamsCallback) {
            return new AmazonLoader(headerBiddingCollectParamsCallback) { // from class: io.bidmachine.ads.networks.amazon.AmazonAdapter.AmazonLoader.1
                @Override // io.bidmachine.ads.networks.amazon.AmazonAdapter.AmazonLoader
                void handleResponse(DTBAdResponse dTBAdResponse, Map<String, String> map) {
                    String str;
                    for (Map.Entry<String, List<String>> entry : dTBAdResponse.getDefaultDisplayAdsRequestCustomParams().entrySet()) {
                        List<String> value = entry.getValue();
                        if (value != null && (str = value.get(0)) != null) {
                            map.put(entry.getKey(), str);
                        }
                    }
                }
            };
        }

        static AmazonLoader forVideo(HeaderBiddingCollectParamsCallback headerBiddingCollectParamsCallback) {
            return new AmazonLoader(headerBiddingCollectParamsCallback) { // from class: io.bidmachine.ads.networks.amazon.AmazonAdapter.AmazonLoader.2
                @Override // io.bidmachine.ads.networks.amazon.AmazonAdapter.AmazonLoader
                void handleResponse(DTBAdResponse dTBAdResponse, Map<String, String> map) {
                    for (Map.Entry<String, String> entry : dTBAdResponse.getDefaultVideoAdsRequestCustomParams().entrySet()) {
                        String value = entry.getValue();
                        if (value != null) {
                            map.put(entry.getKey(), value);
                        }
                    }
                }
            };
        }

        private AmazonLoader(HeaderBiddingCollectParamsCallback headerBiddingCollectParamsCallback) {
            this.collectCallback = headerBiddingCollectParamsCallback;
        }

        AmazonLoader withUsPrivacy(String str) {
            this.usPrivacy = str;
            return this;
        }

        void load(DTBAdSize dTBAdSize) {
            DTBAdRequest dTBAdRequest = new DTBAdRequest();
            dTBAdRequest.setSizes(dTBAdSize);
            if (!TextUtils.isEmpty(this.usPrivacy)) {
                dTBAdRequest.putCustomTarget("us_privacy", this.usPrivacy);
            }
            dTBAdRequest.loadAd(new DTBAdCallback() { // from class: io.bidmachine.ads.networks.amazon.AmazonAdapter.AmazonLoader.3
                @Override // com.amazon.device.ads.DTBAdCallback
                public void onFailure(AdError adError) {
                    AmazonLoader.this.collectCallback.onCollectFail(AmazonAdapter.mapError(adError));
                }

                @Override // com.amazon.device.ads.DTBAdCallback
                public void onSuccess(DTBAdResponse dTBAdResponse) {
                    HashMap hashMap = new HashMap();
                    AmazonLoader.this.handleResponse(dTBAdResponse, hashMap);
                    if (hashMap.isEmpty()) {
                        AmazonLoader.this.collectCallback.onCollectFail(BMError.adapter("Response returned empty parameters"));
                    } else {
                        AmazonLoader.this.collectCallback.onCollectFinished(hashMap);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.ads.networks.amazon.AmazonAdapter$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$amazon$device$ads$AdError$ErrorCode;

        static {
            int[] iArr = new int[AdError.ErrorCode.values().length];
            $SwitchMap$com$amazon$device$ads$AdError$ErrorCode = iArr;
            try {
                iArr[AdError.ErrorCode.NO_FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$amazon$device$ads$AdError$ErrorCode[AdError.ErrorCode.NETWORK_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$amazon$device$ads$AdError$ErrorCode[AdError.ErrorCode.NETWORK_TIMEOUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static BMError mapError(AdError adError) {
        int i = AnonymousClass1.$SwitchMap$com$amazon$device$ads$AdError$ErrorCode[adError.getCode().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return BMError.TimeoutError;
                }
                return BMError.internal("Unknown error");
            }
            return BMError.NoConnection;
        }
        return BMError.noFill();
    }
}
