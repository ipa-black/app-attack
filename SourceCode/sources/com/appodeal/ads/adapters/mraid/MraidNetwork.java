package com.appodeal.ads.adapters.mraid;

import com.appodeal.ads.AdNetwork;
import com.appodeal.ads.AdNetworkBuilder;
import com.appodeal.ads.AdNetworkMediationParams;
import com.appodeal.ads.AdUnit;
import com.appodeal.ads.Appodeal;
import com.appodeal.ads.NetworkInitializationListener;
import com.appodeal.ads.adapters.mraid.banner.b;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.modules.common.internal.log.InternalLogEvent;
import com.appodeal.ads.modules.common.internal.log.InternalLogKt;
import com.appodeal.ads.unified.UnifiedAdUtils;
import com.appodeal.ads.unified.UnifiedBanner;
import com.appodeal.ads.unified.UnifiedInterstitial;
import com.appodeal.ads.unified.UnifiedMrec;
import com.appodeal.ads.unified.UnifiedRewarded;
import com.appodeal.ads.unified.UnifiedVideo;
import com.appodeal.ads.unified.mraid.UnifiedMraidNetworkParams;
import com.appodeal.ads.utils.ActivityRule;
import com.explorestack.iab.BuildConfig;
import com.explorestack.iab.IabSettings;
import com.explorestack.iab.mraid.MraidLog;
import com.explorestack.iab.utils.LogListener;
import com.explorestack.iab.utils.Logger;
import com.google.firebase.messaging.Constants;
import com.onesignal.OSInAppMessageContentKt;
import io.bidmachine.utils.IabUtils;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class MraidNetwork extends AdNetwork<UnifiedMraidNetworkParams> {

    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f6530a;

        static {
            int[] iArr = new int[Logger.LogLevel.values().length];
            f6530a = iArr;
            try {
                iArr[Logger.LogLevel.info.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6530a[Logger.LogLevel.debug.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6530a[Logger.LogLevel.warning.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6530a[Logger.LogLevel.error.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6530a[Logger.LogLevel.none.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class builder extends AdNetworkBuilder {
        @Override // com.appodeal.ads.AdNetworkBuilder
        public MraidNetwork build() {
            return new MraidNetwork(this);
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public ActivityRule[] getAdActivityRules() {
            return new ActivityRule[]{new ActivityRule.Builder("com.explorestack.iab.mraid.MraidActivity").build()};
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getAdapterVersion() {
            return "0";
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getName() {
            return "mraid";
        }
    }

    public MraidNetwork(AdNetworkBuilder adNetworkBuilder) {
        super(adNetworkBuilder);
        IabSettings.mediatorVersion = Appodeal.getVersion();
        MraidLog.addLogListener(new LogListener() { // from class: com.appodeal.ads.adapters.mraid.MraidNetwork$$ExternalSyntheticLambda0
            @Override // com.explorestack.iab.utils.LogListener
            public final void onLog(Logger.LogLevel logLevel, String str, String str2) {
                MraidNetwork.this.m140lambda$new$0$comappodealadsadaptersmraidMraidNetwork(logLevel, str, str2);
            }
        });
    }

    private static String obtainScript(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return "window.renderValidationData(" + jSONObject + ");";
    }

    private String parseLogLevel(Logger.LogLevel logLevel) {
        int i = a.f6530a[logLevel.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "verbose" : "none" : Constants.IPC_BUNDLE_KEY_SEND_ERROR : "warning" : com.appodeal.ads.modules.common.internal.Constants.DEBUG_INTERSTITIAL : "info";
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedBanner<UnifiedMraidNetworkParams> createBanner() {
        return new b();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedInterstitial<UnifiedMraidNetworkParams> createInterstitial() {
        return new com.appodeal.ads.adapters.mraid.interstitial.b();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedMrec<UnifiedMraidNetworkParams> createMrec() {
        return new com.appodeal.ads.adapters.mraid.mrec.b();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedRewarded<UnifiedMraidNetworkParams> createRewarded() {
        return new com.appodeal.ads.adapters.mraid.rewarded_video.b();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedVideo<UnifiedMraidNetworkParams> createVideo() {
        return new com.appodeal.ads.adapters.mraid.video.b();
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
    public void initialize(ContextProvider contextProvider, AdUnit adUnit, AdNetworkMediationParams adNetworkMediationParams, NetworkInitializationListener<UnifiedMraidNetworkParams> networkInitializationListener) {
        JSONObject jsonData = adUnit.getJsonData();
        String optString = jsonData.optString("package");
        String optString2 = jsonData.optString("base_url", "");
        long optLong = jsonData.optLong("expiry");
        boolean optBoolean = jsonData.optBoolean("preload", true);
        boolean optBoolean2 = jsonData.optBoolean("tag");
        String optString3 = jsonData.optString(OSInAppMessageContentKt.HTML);
        String optString4 = jsonData.optString("mraid_url");
        if (jsonData.optBoolean(JavaLdapSupport.TOP_ATTR, false)) {
            optString4 = UnifiedAdUtils.parseUrlWithTopParams(contextProvider.getApplicationContext(), optString4, adNetworkMediationParams);
        }
        int parseInt = Integer.parseInt(jsonData.getString(IabUtils.KEY_WIDTH));
        int parseInt2 = Integer.parseInt(jsonData.getString(IabUtils.KEY_HEIGHT));
        int optInt = jsonData.optInt("close_time", -1);
        UnifiedMraidNetworkParams.Builder builder2 = new UnifiedMraidNetworkParams.Builder(adNetworkMediationParams.getRestrictedData());
        builder2.setPackageName(optString).setBaseUrl(optString2).setExpiryTime(optLong).setPreload(optBoolean).setIsTag(optBoolean2).setAdm(optString3).setAdUrl(optString4).setWidth(parseInt).setHeight(parseInt2).setCloseTime(optInt);
        if (adNetworkMediationParams.isTestMode()) {
            builder2.setPageFinishedScript(obtainScript(adUnit.getJsonData().optJSONObject("validation_data")));
        }
        networkInitializationListener.onInitializationFinished(builder2.build());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$com-appodeal-ads-adapters-mraid-MraidNetwork  reason: not valid java name */
    public /* synthetic */ void m140lambda$new$0$comappodealadsadaptersmraidMraidNetwork(Logger.LogLevel logLevel, String str, String str2) {
        InternalLogKt.observer.invoke(new InternalLogEvent(str, "mraid event", str2, parseLogLevel(logLevel)));
    }

    @Override // com.appodeal.ads.AdNetwork
    public void setLogging(boolean z) {
        MraidLog.setLoggingLevel(z ? Logger.LogLevel.debug : Logger.LogLevel.none);
    }
}
