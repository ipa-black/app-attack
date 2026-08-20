package com.adcolony.sdk;

import android.content.Context;
import android.util.Log;
import com.onesignal.outcomes.OSOutcomeConstants;
import com.unity3d.ads.metadata.MediationMetaData;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.util.Locale;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class AdColonyAppOptions {
    public static final String ADMARVEL = "AdMarvel";
    public static final String ADMOB = "AdMob";
    public static final String ADOBEAIR = "Adobe AIR";
    public static final String AERSERVE = "AerServe";
    @Deprecated
    public static final int ALL = 2;
    public static final String APPODEAL = "Appodeal";
    public static final String CCPA = "CCPA";
    public static final String COCOS2DX = "Cocos2d-x";
    public static final String COPPA = "COPPA";
    public static final String CORONA = "Corona";
    public static final String FUSEPOWERED = "Fuse Powered";
    public static final String FYBER = "Fyber";
    public static final String GDPR = "GDPR";
    public static final String IRONSOURCE = "ironSource";
    @Deprecated
    public static final int LANDSCAPE = 1;
    public static final String MOPUB = "MoPub";
    @Deprecated
    public static final int PORTRAIT = 0;
    @Deprecated
    public static final int SENSOR = 2;
    public static final String UNITY = "Unity";

    /* renamed from: a  reason: collision with root package name */
    private String f77a = "";

    /* renamed from: b  reason: collision with root package name */
    private f1 f78b = new f1();

    /* renamed from: c  reason: collision with root package name */
    private AdColonyUserMetadata f79c;

    public AdColonyAppOptions() {
        setOriginStore("google");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyAppOptions a(String str) {
        if (str == null) {
            return this;
        }
        this.f77a = str;
        c0.a(this.f78b, OSOutcomeConstants.APP_ID, str);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 b() {
        return this.f78b;
    }

    public int getAppOrientation() {
        return c0.a(this.f78b, "app_orientation", -1);
    }

    public String getAppVersion() {
        return c0.h(this.f78b, "app_version");
    }

    @Deprecated
    public String getGDPRConsentString() {
        return c0.h(this.f78b, "consent_string");
    }

    @Deprecated
    public boolean getGDPRRequired() {
        return c0.b(this.f78b, "gdpr_required");
    }

    public boolean getIsChildDirectedApp() {
        return c0.b(this.f78b, "is_child_directed");
    }

    public boolean getKeepScreenOn() {
        return c0.b(this.f78b, "keep_screen_on");
    }

    public JSONObject getMediationInfo() {
        f1 b2 = c0.b();
        c0.a(b2, "name", c0.h(this.f78b, "mediation_network"));
        c0.a(b2, MediationMetaData.KEY_VERSION, c0.h(this.f78b, "mediation_network_version"));
        return b2.a();
    }

    public boolean getMultiWindowEnabled() {
        return c0.b(this.f78b, "multi_window_enabled");
    }

    public Object getOption(String str) {
        return c0.g(this.f78b, str);
    }

    public String getOriginStore() {
        return c0.h(this.f78b, "origin_store");
    }

    public JSONObject getPluginInfo() {
        f1 b2 = c0.b();
        c0.a(b2, "name", c0.h(this.f78b, "plugin"));
        c0.a(b2, MediationMetaData.KEY_VERSION, c0.h(this.f78b, "plugin_version"));
        return b2.a();
    }

    public String getPrivacyConsentString(String str) {
        return c0.h(this.f78b, str.toLowerCase(Locale.ENGLISH) + "_consent_string");
    }

    public boolean getPrivacyFrameworkRequired(String str) {
        return c0.b(this.f78b, str.toLowerCase(Locale.ENGLISH) + "_required");
    }

    @Deprecated
    public int getRequestedAdOrientation() {
        return c0.a(this.f78b, AdUnitActivity.EXTRA_ORIENTATION, -1);
    }

    public boolean getTestModeEnabled() {
        return c0.b(this.f78b, "test_mode");
    }

    public String getUserID() {
        return c0.h(this.f78b, "user_id");
    }

    @Deprecated
    public AdColonyUserMetadata getUserMetadata() {
        return this.f79c;
    }

    public boolean isPrivacyFrameworkRequiredSet(String str) {
        return this.f78b.a(str.toLowerCase(Locale.ENGLISH) + "_required");
    }

    public AdColonyAppOptions setAppOrientation(int i) {
        setOption("app_orientation", i);
        return this;
    }

    public AdColonyAppOptions setAppVersion(String str) {
        setOption("app_version", str);
        return this;
    }

    @Deprecated
    public AdColonyAppOptions setGDPRConsentString(String str) {
        c0.a(this.f78b, "consent_string", str);
        return this;
    }

    @Deprecated
    public AdColonyAppOptions setGDPRRequired(boolean z) {
        setOption("gdpr_required", z);
        return this;
    }

    public AdColonyAppOptions setIsChildDirectedApp(boolean z) {
        setOption("is_child_directed", z);
        return this;
    }

    public AdColonyAppOptions setKeepScreenOn(boolean z) {
        c0.b(this.f78b, "keep_screen_on", z);
        return this;
    }

    public AdColonyAppOptions setMediationNetwork(String str, String str2) {
        c0.a(this.f78b, "mediation_network", str);
        c0.a(this.f78b, "mediation_network_version", str2);
        return this;
    }

    public AdColonyAppOptions setMultiWindowEnabled(boolean z) {
        c0.b(this.f78b, "multi_window_enabled", z);
        return this;
    }

    public AdColonyAppOptions setOption(String str, boolean z) {
        c0.b(this.f78b, str, z);
        return this;
    }

    public AdColonyAppOptions setOriginStore(String str) {
        setOption("origin_store", str);
        return this;
    }

    public AdColonyAppOptions setPlugin(String str, String str2) {
        c0.a(this.f78b, "plugin", str);
        c0.a(this.f78b, "plugin_version", str2);
        return this;
    }

    public AdColonyAppOptions setPrivacyConsentString(String str, String str2) {
        c0.a(this.f78b, str.toLowerCase(Locale.ENGLISH) + "_consent_string", str2);
        return this;
    }

    public AdColonyAppOptions setPrivacyFrameworkRequired(String str, boolean z) {
        setOption(str.toLowerCase(Locale.ENGLISH) + "_required", z);
        return this;
    }

    @Deprecated
    public AdColonyAppOptions setRequestedAdOrientation(int i) {
        setOption(AdUnitActivity.EXTRA_ORIENTATION, i);
        return this;
    }

    public AdColonyAppOptions setTestModeEnabled(boolean z) {
        c0.b(this.f78b, "test_mode", z);
        return this;
    }

    public AdColonyAppOptions setUserID(String str) {
        setOption("user_id", str);
        return this;
    }

    @Deprecated
    public AdColonyAppOptions setUserMetadata(AdColonyUserMetadata adColonyUserMetadata) {
        this.f79c = adColonyUserMetadata;
        c0.a(this.f78b, "user_metadata", adColonyUserMetadata.f114b);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Context context) {
        a(context);
        Boolean g2 = this.f78b.g("use_forced_controller");
        if (g2 != null) {
            l.H = g2.booleanValue();
        }
        if (this.f78b.f("use_staging_launch_server")) {
            k.Z = "https://adc3-launch-staging.adcolony.com/v4/launch";
        }
        String b2 = z0.b(context, "IABUSPrivacy_String");
        String b3 = z0.b(context, "IABTCF_TCString");
        int a2 = z0.a(context, "IABTCF_gdprApplies");
        if (b2 != null) {
            c0.a(this.f78b, "ccpa_consent_string", b2);
        }
        if (b3 != null) {
            c0.a(this.f78b, "gdpr_consent_string", b3);
        }
        if (a2 == 0 || a2 == 1) {
            c0.b(this.f78b, "gdpr_required", a2 == 1);
        }
    }

    public AdColonyAppOptions setOption(String str, double d2) {
        c0.a(this.f78b, str, d2);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return this.f77a;
    }

    public AdColonyAppOptions setOption(String str, String str2) {
        c0.a(this.f78b, str, str2);
        return this;
    }

    private void a(Context context) {
        setOption("bundle_id", z0.d(context));
    }

    public static AdColonyAppOptions getMoPubAppOptions(String str) {
        AdColonyAppOptions mediationNetwork = new AdColonyAppOptions().setMediationNetwork("MoPub", "unknown");
        if (str != null && !str.isEmpty()) {
            for (String str2 : str.split(",")) {
                String[] split = str2.split(":");
                if (split.length == 2) {
                    String str3 = split[0];
                    str3.hashCode();
                    if (str3.equals("store")) {
                        mediationNetwork.setOriginStore(split[1]);
                    } else if (!str3.equals(MediationMetaData.KEY_VERSION)) {
                        Log.e("AdColonyMoPub", "AdColony client options in wrong format - please check your MoPub dashboard");
                        return mediationNetwork;
                    } else {
                        mediationNetwork.setAppVersion(split[1]);
                    }
                } else {
                    Log.e("AdColonyMoPub", "AdColony client options not recognized - please check your MoPub dashboard");
                    return null;
                }
            }
        }
        return mediationNetwork;
    }
}
