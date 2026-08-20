package com.appodeal.ads.adapters.adcolony;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager;
import android.location.Location;
import android.text.TextUtils;
import com.adcolony.sdk.AdColony;
import com.adcolony.sdk.AdColonyAdOptions;
import com.adcolony.sdk.AdColonyAppOptions;
import com.adcolony.sdk.AdColonyUserMetadata;
import com.appodeal.ads.AdNetwork;
import com.appodeal.ads.AdNetworkBuilder;
import com.appodeal.ads.AdNetworkMediationParams;
import com.appodeal.ads.AdUnit;
import com.appodeal.ads.Appodeal;
import com.appodeal.ads.NetworkInitializationListener;
import com.appodeal.ads.RestrictedData;
import com.appodeal.ads.UserSettings;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedRewarded;
import com.appodeal.ads.unified.UnifiedVideo;
import com.appodeal.ads.utils.ActivityRule;
import com.appodeal.ads.utils.Log;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.onesignal.outcomes.OSOutcomeConstants;
import io.bidmachine.ads.networks.adcolony.BuildConfig;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AdcolonyNetwork extends AdNetwork<RequestParams> {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private static String cachedSdkVersion = null;
    private static boolean isInitialized = false;
    private static boolean isInitializing = false;

    /* loaded from: classes2.dex */
    public static final class RequestParams {
        public final AdColonyAdOptions adOptions;
        public final String zoneId;

        public RequestParams(String str, AdColonyAdOptions adColonyAdOptions) {
            this.zoneId = str;
            this.adOptions = adColonyAdOptions;
        }
    }

    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f6434a;

        static {
            int[] iArr = new int[UserSettings.Gender.values().length];
            f6434a = iArr;
            try {
                iArr[UserSettings.Gender.MALE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6434a[UserSettings.Gender.FEMALE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class builder extends AdNetworkBuilder {
        @Override // com.appodeal.ads.AdNetworkBuilder
        public AdcolonyNetwork build() {
            return new AdcolonyNetwork(this);
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public ActivityRule[] getAdActivityRules() {
            return new ActivityRule[]{new ActivityRule.Builder("com.adcolony.sdk.AdColonyInterstitialActivity").build(), new ActivityRule.Builder("com.adcolony.sdk.AdColonyAdViewActivity").build()};
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getAdapterVersion() {
            return "0";
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getName() {
            return "adcolony";
        }
    }

    public AdcolonyNetwork(AdNetworkBuilder adNetworkBuilder) {
        super(adNetworkBuilder);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String[] getZones(org.json.JSONObject r7, java.lang.String r8) {
        /*
            r6 = this;
            r0 = 0
            if (r7 == 0) goto L40
            int r1 = r7.length()
            if (r1 <= 0) goto L40
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Exception -> L3c
            r1.<init>()     // Catch: java.lang.Exception -> L3c
            java.util.Iterator r2 = r7.keys()     // Catch: java.lang.Exception -> L3c
        L12:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Exception -> L3c
            if (r3 == 0) goto L33
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Exception -> L3c
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Exception -> L3c
            org.json.JSONArray r3 = r7.getJSONArray(r3)     // Catch: java.lang.Exception -> L3c
            r4 = r0
        L23:
            int r5 = r3.length()     // Catch: java.lang.Exception -> L3c
            if (r4 >= r5) goto L12
            java.lang.String r5 = r3.getString(r4)     // Catch: java.lang.Exception -> L3c
            r1.add(r5)     // Catch: java.lang.Exception -> L3c
            int r4 = r4 + 1
            goto L23
        L33:
            java.lang.String[] r7 = new java.lang.String[r0]     // Catch: java.lang.Exception -> L3c
            java.lang.Object[] r7 = r1.toArray(r7)     // Catch: java.lang.Exception -> L3c
            java.lang.String[] r7 = (java.lang.String[]) r7     // Catch: java.lang.Exception -> L3c
            goto L41
        L3c:
            r7 = move-exception
            com.appodeal.ads.utils.Log.log(r7)
        L40:
            r7 = 0
        L41:
            if (r7 != 0) goto L48
            r7 = 1
            java.lang.String[] r7 = new java.lang.String[r7]
            r7[r0] = r8
        L48:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.adapters.adcolony.AdcolonyNetwork.getZones(org.json.JSONObject, java.lang.String):java.lang.String[]");
    }

    private void setMediatorName(AdColonyAppOptions adColonyAppOptions, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        adColonyAppOptions.setMediationNetwork(str, Appodeal.getVersion());
    }

    private AdColonyAdOptions setTargeting(Context context, RestrictedData restrictedData) {
        String str;
        AdColonyUserMetadata adColonyUserMetadata = new AdColonyUserMetadata();
        Integer age = restrictedData.getAge();
        if (age != null) {
            adColonyUserMetadata.setUserAge(age.intValue());
        }
        UserSettings.Gender gender = restrictedData.getGender();
        if (gender != null) {
            int i = a.f6434a[gender.ordinal()];
            if (i == 1) {
                str = AdColonyUserMetadata.USER_MALE;
            } else if (i == 2) {
                str = AdColonyUserMetadata.USER_FEMALE;
            }
            adColonyUserMetadata.setUserGender(str);
        }
        String zip = restrictedData.getZip();
        if (zip != null) {
            adColonyUserMetadata.setUserZipCode(zip);
        }
        Location deviceLocation = restrictedData.getLocation(context).getDeviceLocation();
        if (deviceLocation != null) {
            adColonyUserMetadata.setUserLocation(deviceLocation);
        }
        return new AdColonyAdOptions().setUserMetadata(adColonyUserMetadata);
    }

    @Override // com.appodeal.ads.AdNetwork
    public boolean canLoadRewardedWhenDisplaying() {
        return false;
    }

    @Override // com.appodeal.ads.AdNetwork
    public boolean canLoadVideoWhenDisplaying() {
        return false;
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedRewarded<RequestParams> createRewarded() {
        return new com.appodeal.ads.adapters.adcolony.rewarded_video.a();
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedVideo<RequestParams> createVideo() {
        return new com.appodeal.ads.adapters.adcolony.video.a();
    }

    @Override // com.appodeal.ads.AdNetwork
    public String getRecommendedVersion() {
        return BuildConfig.ADAPTER_SDK_VERSION_NAME;
    }

    @Override // com.appodeal.ads.AdNetwork
    public String getVersion() {
        if (isInitialized) {
            return AdColony.getSDKVersion();
        }
        try {
            String str = cachedSdkVersion;
            if (str != null) {
                return str;
            }
            Class<?> cls = Class.forName("com.adcolony.sdk.q");
            Constructor<?> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            declaredConstructor.setAccessible(true);
            Object newInstance = declaredConstructor.newInstance(new Object[0]);
            Method declaredMethod = cls.getDeclaredMethod("I", new Class[0]);
            declaredMethod.setAccessible(true);
            String str2 = (String) declaredMethod.invoke(newInstance, new Object[0]);
            cachedSdkVersion = str2;
            return str2;
        } catch (Throwable th) {
            Log.log(th);
            return "unknown";
        }
    }

    @Override // com.appodeal.ads.AdNetwork
    public void initialize(ContextProvider contextProvider, AdUnit adUnit, AdNetworkMediationParams adNetworkMediationParams, NetworkInitializationListener<RequestParams> networkInitializationListener) {
        RequestParams requestParams;
        String string = adUnit.getJsonData().getString("zone_id");
        JSONObject jSONObject = adUnit.getJsonData().getJSONObject("zones");
        String string2 = adUnit.getJsonData().getString("store");
        String string3 = adUnit.getJsonData().getString(OSOutcomeConstants.APP_ID);
        String optString = adUnit.getJsonData().optString("consent_string");
        Context applicationContext = contextProvider.getApplicationContext();
        AdColonyAppOptions appOptions = AdColony.getAppOptions();
        if (appOptions == null) {
            appOptions = new AdColonyAppOptions();
        }
        appOptions.setOriginStore(string2);
        appOptions.setKeepScreenOn(true);
        updatePrivacy(adNetworkMediationParams.getRestrictedData(), appOptions, optString);
        setMediatorName(appOptions, adUnit.getMediatorName());
        if (isInitialized) {
            AdColony.setAppOptions(appOptions);
            requestParams = new RequestParams(string, setTargeting(applicationContext, adNetworkMediationParams.getRestrictedData()));
        } else if (isInitializing) {
            requestParams = new RequestParams(string, setTargeting(applicationContext, adNetworkMediationParams.getRestrictedData()));
        } else {
            try {
                appOptions.setAppVersion(applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0).versionName);
            } catch (PackageManager.NameNotFoundException e2) {
                Log.log(e2);
            }
            isInitializing = true;
            AdColony.configure((Application) applicationContext, appOptions, string3, getZones(jSONObject, string));
            isInitialized = true;
            isInitializing = false;
            requestParams = new RequestParams(string, setTargeting(applicationContext, adNetworkMediationParams.getRestrictedData()));
        }
        networkInitializationListener.onInitializationFinished(requestParams);
    }

    public void updatePrivacy(RestrictedData restrictedData, AdColonyAppOptions adColonyAppOptions, String str) {
        boolean isUserInGdprScope = restrictedData.isUserInGdprScope();
        String str2 = IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
        if (isUserInGdprScope) {
            if (TextUtils.isEmpty(str)) {
                str = restrictedData.getIabConsentString();
                if (TextUtils.isEmpty(str)) {
                    str = restrictedData.isUserHasConsent() ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0";
                }
            }
            adColonyAppOptions.setPrivacyFrameworkRequired(AdColonyAppOptions.GDPR, true).setPrivacyConsentString(AdColonyAppOptions.GDPR, str);
        }
        if (restrictedData.isUserInCcpaScope()) {
            String uSPrivacyString = restrictedData.getUSPrivacyString();
            if (!TextUtils.isEmpty(uSPrivacyString)) {
                str2 = uSPrivacyString;
            } else if (!restrictedData.isUserHasConsent()) {
                str2 = "0";
            }
            adColonyAppOptions.setPrivacyFrameworkRequired(AdColonyAppOptions.CCPA, true).setPrivacyConsentString(AdColonyAppOptions.CCPA, str2);
        }
        adColonyAppOptions.setPrivacyFrameworkRequired(AdColonyAppOptions.COPPA, restrictedData.isUserAgeRestricted());
    }

    @Override // com.appodeal.ads.AdNetwork
    public LoadingError verifyLoadAvailability(AdType adType) {
        return ((adType == AdType.Video || adType == AdType.Rewarded) && (isVideoShowing() || isRewardedShowing())) ? LoadingError.Canceled : super.verifyLoadAvailability(adType);
    }
}
