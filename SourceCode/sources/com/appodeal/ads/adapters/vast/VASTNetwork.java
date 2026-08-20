package com.appodeal.ads.adapters.vast;

import android.text.TextUtils;
import com.appodeal.ads.AdNetwork;
import com.appodeal.ads.AdNetworkBuilder;
import com.appodeal.ads.AdNetworkMediationParams;
import com.appodeal.ads.AdUnit;
import com.appodeal.ads.Appodeal;
import com.appodeal.ads.NetworkInitializationListener;
import com.appodeal.ads.RestrictedData;
import com.appodeal.ads.adapters.vast.rewarded_video.b;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.modules.common.internal.log.InternalLogEvent;
import com.appodeal.ads.modules.common.internal.log.InternalLogKt;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedAdUtils;
import com.appodeal.ads.unified.UnifiedRewarded;
import com.appodeal.ads.unified.UnifiedVideo;
import com.appodeal.ads.unified.vast.UnifiedVastNetworkParams;
import com.appodeal.ads.utils.ActivityRule;
import com.explorestack.iab.BuildConfig;
import com.explorestack.iab.IabSettings;
import com.explorestack.iab.utils.LogListener;
import com.explorestack.iab.utils.Logger;
import com.explorestack.iab.vast.VastLog;
import com.google.firebase.messaging.Constants;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class VASTNetwork extends AdNetwork<RequestParams> {

    /* loaded from: classes2.dex */
    public static class RequestParams extends UnifiedVastNetworkParams {
        public RequestParams(RestrictedData restrictedData, String str, String str2, String str3, int i, long j, boolean z) {
            super(restrictedData, str, str2, str3, i, j, z);
        }
    }

    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f6549a;

        static {
            int[] iArr = new int[Logger.LogLevel.values().length];
            f6549a = iArr;
            try {
                iArr[Logger.LogLevel.info.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6549a[Logger.LogLevel.debug.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6549a[Logger.LogLevel.warning.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6549a[Logger.LogLevel.error.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6549a[Logger.LogLevel.none.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class builder extends AdNetworkBuilder {
        @Override // com.appodeal.ads.AdNetworkBuilder
        public AdNetwork build() {
            return new VASTNetwork(this);
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public ActivityRule[] getAdActivityRules() {
            return new ActivityRule[]{new ActivityRule.Builder("com.explorestack.iab.vast.activity.VastActivity").build(), new ActivityRule.Builder("com.explorestack.iab.mraid.MraidActivity").build()};
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getAdapterVersion() {
            return "0";
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getName() {
            return "vast";
        }
    }

    public VASTNetwork(AdNetworkBuilder adNetworkBuilder) {
        super(adNetworkBuilder);
        IabSettings.mediatorVersion = Appodeal.getVersion();
        VastLog.addLogListener(new LogListener() { // from class: com.appodeal.ads.adapters.vast.VASTNetwork$$ExternalSyntheticLambda0
            @Override // com.explorestack.iab.utils.LogListener
            public final void onLog(Logger.LogLevel logLevel, String str, String str2) {
                VASTNetwork.this.m141lambda$new$0$comappodealadsadaptersvastVASTNetwork(logLevel, str, str2);
            }
        });
    }

    private String parseLogLevel(Logger.LogLevel logLevel) {
        int i = a.f6549a[logLevel.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "verbose" : "none" : Constants.IPC_BUNDLE_KEY_SEND_ERROR : "warning" : com.appodeal.ads.modules.common.internal.Constants.DEBUG_INTERSTITIAL : "info";
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedRewarded<RequestParams> createRewarded() {
        return new b();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedVideo<RequestParams> createVideo() {
        return new com.appodeal.ads.adapters.vast.video.b();
    }

    @Override // com.appodeal.ads.AdNetwork
    public String getRecommendedVersion() {
        return BuildConfig.VERSION_NAME;
    }

    @Override // com.appodeal.ads.AdNetwork
    public String getVersion() {
        return BuildConfig.VERSION_NAME;
    }

    @Override // com.appodeal.ads.AdNetwork
    public void initialize(ContextProvider contextProvider, AdUnit adUnit, AdNetworkMediationParams adNetworkMediationParams, NetworkInitializationListener<RequestParams> networkInitializationListener) {
        JSONObject jsonData = adUnit.getJsonData();
        String optString = jsonData.optString("package");
        int optInt = jsonData.optInt("close_time", 0);
        long optLong = jsonData.optLong("expiry");
        String optString2 = jsonData.optString("vast_xml");
        String optString3 = jsonData.optString("vast_url");
        String parseUrlWithTopParams = jsonData.optBoolean(JavaLdapSupport.TOP_ATTR, false) ? UnifiedAdUtils.parseUrlWithTopParams(contextProvider.getApplicationContext(), optString3, adNetworkMediationParams) : optString3;
        boolean optBoolean = jsonData.optBoolean("video_auto_close", false);
        if ((TextUtils.isEmpty(optString2) || TextUtils.getTrimmedLength(optString2) == 0) && (TextUtils.isEmpty(parseUrlWithTopParams) || TextUtils.getTrimmedLength(parseUrlWithTopParams) == 0)) {
            networkInitializationListener.onInitializationFailed(LoadingError.IncorrectAdunit);
        } else {
            networkInitializationListener.onInitializationFinished(new RequestParams(adNetworkMediationParams.getRestrictedData(), optString2, parseUrlWithTopParams, optString, optInt, optLong, optBoolean));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$com-appodeal-ads-adapters-vast-VASTNetwork  reason: not valid java name */
    public /* synthetic */ void m141lambda$new$0$comappodealadsadaptersvastVASTNetwork(Logger.LogLevel logLevel, String str, String str2) {
        InternalLogKt.observer.invoke(new InternalLogEvent(str, "vast event", str2, parseLogLevel(logLevel)));
    }

    @Override // com.appodeal.ads.AdNetwork
    public void setLogging(boolean z) {
        VastLog.setLoggingLevel(z ? Logger.LogLevel.debug : Logger.LogLevel.none);
    }
}
