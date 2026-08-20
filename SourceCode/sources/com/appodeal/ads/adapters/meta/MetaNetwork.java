package com.appodeal.ads.adapters.meta;

import com.appodeal.ads.AdNetwork;
import com.appodeal.ads.AdNetworkBuilder;
import com.appodeal.ads.AdNetworkMediationParams;
import com.appodeal.ads.AdUnit;
import com.appodeal.ads.AppodealNetworks;
import com.appodeal.ads.NetworkInitializationListener;
import com.appodeal.ads.RestrictedData;
import com.appodeal.ads.adapters.meta.a;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedBanner;
import com.appodeal.ads.unified.UnifiedInterstitial;
import com.appodeal.ads.unified.UnifiedMrec;
import com.appodeal.ads.unified.UnifiedNative;
import com.appodeal.ads.unified.UnifiedRewarded;
import com.appodeal.ads.utils.ActivityRule;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import io.bidmachine.ads.networks.meta_audience.BuildConfig;
/* loaded from: classes2.dex */
public class MetaNetwork extends AdNetwork<RequestParams> {
    private static final com.appodeal.ads.adapters.meta.a initializer = new com.appodeal.ads.adapters.meta.a();

    /* loaded from: classes2.dex */
    public static final class RequestParams {
        public final String metaKey;

        public RequestParams(String str) {
            this.metaKey = str;
        }
    }

    /* loaded from: classes2.dex */
    public class a implements a.InterfaceC0115a {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ NetworkInitializationListener f6507a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ RequestParams f6508b;

        public a(NetworkInitializationListener networkInitializationListener, RequestParams requestParams) {
            this.f6507a = networkInitializationListener;
            this.f6508b = requestParams;
        }

        @Override // com.appodeal.ads.adapters.meta.a.InterfaceC0115a
        public final void a() {
            this.f6507a.onInitializationFailed(LoadingError.InternalError);
        }

        @Override // com.appodeal.ads.adapters.meta.a.InterfaceC0115a
        public final void b() {
            try {
                this.f6507a.onInitializationFinished(this.f6508b);
            } catch (Exception unused) {
                this.f6507a.onInitializationFailed(LoadingError.InternalError);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class builder extends AdNetworkBuilder {
        @Override // com.appodeal.ads.AdNetworkBuilder
        public MetaNetwork build() {
            return new MetaNetwork(this, null);
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public ActivityRule[] getAdActivityRules() {
            return new ActivityRule[]{new ActivityRule.Builder("com.facebook.ads.AudienceNetworkActivity").build()};
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getAdapterVersion() {
            return "0";
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getName() {
            return AppodealNetworks.FACEBOOK;
        }
    }

    private MetaNetwork(AdNetworkBuilder adNetworkBuilder) {
        super(adNetworkBuilder);
    }

    public /* synthetic */ MetaNetwork(AdNetworkBuilder adNetworkBuilder, a aVar) {
        this(adNetworkBuilder);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static LoadingError mapError(AdError adError) {
        if (adError == null) {
            return null;
        }
        int errorCode = adError.getErrorCode();
        if (errorCode != 2009) {
            if (errorCode != 2100) {
                if (errorCode != 3001) {
                    if (errorCode != 6002 && errorCode != 6003) {
                        if (errorCode != 7001 && errorCode != 7002) {
                            switch (errorCode) {
                                case 1000:
                                    return LoadingError.ConnectionError;
                                case 1001:
                                case 1002:
                                    break;
                                default:
                                    switch (errorCode) {
                                        case 2000:
                                        case 2001:
                                        case 2002:
                                            break;
                                        default:
                                            switch (errorCode) {
                                                case AdError.MISSING_DEPENDENCIES_ERROR /* 7005 */:
                                                case AdError.API_NOT_SUPPORTED /* 7006 */:
                                                    break;
                                                case AdError.NATIVE_AD_IS_NOT_LOADED /* 7007 */:
                                                    return LoadingError.IncorrectAdunit;
                                                default:
                                                    return null;
                                            }
                                    }
                            }
                        }
                        return LoadingError.InternalError;
                    }
                }
                return LoadingError.NoFill;
            }
            return LoadingError.InvalidAssets;
        }
        return LoadingError.TimeoutError;
    }

    private void updateConsent(RestrictedData restrictedData) {
        if (restrictedData.isUserInCcpaScope()) {
            if (restrictedData.isUserHasConsent()) {
                AdSettings.setDataProcessingOptions(new String[0]);
            } else {
                AdSettings.setDataProcessingOptions(new String[]{"LDU"}, 0, 0);
            }
        }
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedBanner<RequestParams> createBanner() {
        return new com.appodeal.ads.adapters.meta.banner.a();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedInterstitial<RequestParams> createInterstitial() {
        return new com.appodeal.ads.adapters.meta.interstitial.a();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedMrec<RequestParams> createMrec() {
        return new com.appodeal.ads.adapters.meta.mrec.a();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedNative<RequestParams> createNativeAd() {
        return new com.appodeal.ads.adapters.meta.native_ad.a();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedRewarded<RequestParams> createRewarded() {
        return new com.appodeal.ads.adapters.meta.rewarded_video.a();
    }

    @Override // com.appodeal.ads.AdNetwork
    public String getRecommendedVersion() {
        return BuildConfig.ADAPTER_SDK_VERSION_NAME;
    }

    @Override // com.appodeal.ads.AdNetwork
    public String getVersion() {
        return BuildConfig.ADAPTER_SDK_VERSION_NAME;
    }

    @Override // com.appodeal.ads.AdNetwork
    public void initialize(ContextProvider contextProvider, AdUnit adUnit, AdNetworkMediationParams adNetworkMediationParams, NetworkInitializationListener<RequestParams> networkInitializationListener) {
        RequestParams requestParams = new RequestParams(adUnit.getJsonData().getString("facebook_key"));
        AdSettings.setMixedAudience(adNetworkMediationParams.getRestrictedData().isUserAgeRestricted());
        AdSettings.setTestMode(adNetworkMediationParams.isTestMode());
        if (adNetworkMediationParams.isTestMode()) {
            AdSettings.turnOnSDKDebugger(contextProvider.getApplicationContextOrNull());
            AdSettings.setTestAdType(AdSettings.TestAdType.DEFAULT);
        }
        updateConsent(adNetworkMediationParams.getRestrictedData());
        com.appodeal.ads.adapters.meta.a aVar = initializer;
        if (aVar.a()) {
            networkInitializationListener.onInitializationFinished(requestParams);
        } else {
            aVar.a(contextProvider.getApplicationContext(), adUnit.getMediatorName(), new a(networkInitializationListener, requestParams));
        }
    }

    @Override // com.appodeal.ads.AdNetwork
    public boolean isSupportSmartBanners() {
        return true;
    }
}
