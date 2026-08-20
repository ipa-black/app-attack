package com.ironsource.mediationsdk.model;

import android.text.TextUtils;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class NetworkSettings {

    /* renamed from: a  reason: collision with root package name */
    private String f11221a;

    /* renamed from: b  reason: collision with root package name */
    private String f11222b;

    /* renamed from: c  reason: collision with root package name */
    private JSONObject f11223c;

    /* renamed from: d  reason: collision with root package name */
    private JSONObject f11224d;

    /* renamed from: e  reason: collision with root package name */
    private JSONObject f11225e;

    /* renamed from: f  reason: collision with root package name */
    private JSONObject f11226f;

    /* renamed from: g  reason: collision with root package name */
    private String f11227g;

    /* renamed from: h  reason: collision with root package name */
    private String f11228h;
    private boolean i;
    private String j;
    private int k;
    private int l;
    private int m;
    private String n;

    public NetworkSettings(NetworkSettings networkSettings) {
        this.f11221a = networkSettings.getProviderName();
        this.j = networkSettings.getProviderName();
        this.f11222b = networkSettings.getProviderTypeForReflection();
        this.f11224d = networkSettings.getRewardedVideoSettings();
        this.f11225e = networkSettings.getInterstitialSettings();
        this.f11226f = networkSettings.getBannerSettings();
        this.f11223c = networkSettings.getApplicationSettings();
        this.k = networkSettings.getRewardedVideoPriority();
        this.l = networkSettings.getInterstitialPriority();
        this.m = networkSettings.getBannerPriority();
        this.n = networkSettings.getProviderDefaultInstance();
    }

    public NetworkSettings(String str) {
        this.f11221a = str;
        this.j = str;
        this.f11222b = str;
        this.n = str;
        this.f11224d = new JSONObject();
        this.f11225e = new JSONObject();
        this.f11226f = new JSONObject();
        this.f11223c = new JSONObject();
        this.k = -1;
        this.l = -1;
        this.m = -1;
    }

    public NetworkSettings(String str, String str2, String str3, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4) {
        this.f11221a = str;
        this.j = str;
        this.f11222b = str2;
        this.n = str3;
        this.f11224d = jSONObject2;
        this.f11225e = jSONObject3;
        this.f11226f = jSONObject4;
        this.f11223c = jSONObject;
        this.k = -1;
        this.l = -1;
        this.m = -1;
    }

    public String getAdSourceNameForEvents() {
        return this.f11228h;
    }

    public JSONObject getApplicationSettings() {
        return this.f11223c;
    }

    public int getBannerPriority() {
        return this.m;
    }

    public JSONObject getBannerSettings() {
        return this.f11226f;
    }

    public String getCustomNetwork() {
        JSONObject jSONObject = this.f11223c;
        if (jSONObject != null) {
            return jSONObject.optString(IronSourceConstants.EVENTS_CUSTOM_NETWORK_FIELD);
        }
        return null;
    }

    public String getCustomNetworkAdapterName(IronSource.AD_UNIT ad_unit) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        if ((ad_unit != null || (jSONObject2 = this.f11223c) == null) && ((!ad_unit.equals(IronSource.AD_UNIT.REWARDED_VIDEO) || (jSONObject2 = this.f11224d) == null) && (!ad_unit.equals(IronSource.AD_UNIT.INTERSTITIAL) || (jSONObject2 = this.f11225e) == null))) {
            if (!ad_unit.equals(IronSource.AD_UNIT.BANNER) || (jSONObject = this.f11226f) == null) {
                return null;
            }
            return jSONObject.optString("customNetworkAdapterName");
        }
        return jSONObject2.optString("customNetworkAdapterName");
    }

    public String getCustomNetworkPackage() {
        JSONObject jSONObject = this.f11223c;
        return jSONObject != null ? jSONObject.optString("customNetworkPackage", "") : "";
    }

    public int getInstanceType(IronSource.AD_UNIT ad_unit) {
        JSONObject bannerSettings;
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            bannerSettings = getInterstitialSettings();
        } else if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            bannerSettings = getRewardedVideoSettings();
        } else if (ad_unit != IronSource.AD_UNIT.BANNER) {
            return 1;
        } else {
            bannerSettings = getBannerSettings();
        }
        return bannerSettings.optInt("instanceType");
    }

    public int getInterstitialPriority() {
        return this.l;
    }

    public JSONObject getInterstitialSettings() {
        return this.f11225e;
    }

    public int getMaxAdsPerSession(IronSource.AD_UNIT ad_unit) {
        JSONObject bannerSettings;
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            bannerSettings = getInterstitialSettings();
        } else if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            bannerSettings = getRewardedVideoSettings();
        } else if (ad_unit != IronSource.AD_UNIT.BANNER) {
            return 99;
        } else {
            bannerSettings = getBannerSettings();
        }
        return bannerSettings.optInt("maxAdsPerSession", 99);
    }

    public String getProviderDefaultInstance() {
        return this.n;
    }

    public String getProviderInstanceName() {
        return this.j;
    }

    public String getProviderName() {
        return this.f11221a;
    }

    public String getProviderTypeForReflection() {
        return this.f11222b;
    }

    public int getRewardedVideoPriority() {
        return this.k;
    }

    public JSONObject getRewardedVideoSettings() {
        return this.f11224d;
    }

    public String getSubProviderId() {
        return this.f11227g;
    }

    public boolean isBidder(IronSource.AD_UNIT ad_unit) {
        return !isCustomNetwork() && getInstanceType(ad_unit) == 2;
    }

    public boolean isCustomNetwork() {
        return !TextUtils.isEmpty(getCustomNetwork());
    }

    public boolean isIronSource() {
        return getProviderTypeForReflection().equalsIgnoreCase(IronSourceConstants.SUPERSONIC_CONFIG_NAME) || getProviderTypeForReflection().equalsIgnoreCase(IronSourceConstants.IRONSOURCE_CONFIG_NAME);
    }

    public boolean isMultipleInstances() {
        return this.i;
    }

    public void setAdSourceNameForEvents(String str) {
        this.f11228h = str;
    }

    public void setApplicationSettings(JSONObject jSONObject) {
        this.f11223c = jSONObject;
    }

    public void setBannerPriority(int i) {
        this.m = i;
    }

    public void setBannerSettings(String str, Object obj) {
        try {
            this.f11226f.put(str, obj);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public void setBannerSettings(JSONObject jSONObject) {
        this.f11226f = jSONObject;
    }

    public void setInterstitialPriority(int i) {
        this.l = i;
    }

    public void setInterstitialSettings(String str, Object obj) {
        try {
            this.f11225e.put(str, obj);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public void setInterstitialSettings(JSONObject jSONObject) {
        this.f11225e = jSONObject;
    }

    public void setIsMultipleInstances(boolean z) {
        this.i = z;
    }

    public void setRewardedVideoPriority(int i) {
        this.k = i;
    }

    public void setRewardedVideoSettings(String str, Object obj) {
        try {
            this.f11224d.put(str, obj);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public void setRewardedVideoSettings(JSONObject jSONObject) {
        this.f11224d = jSONObject;
    }

    public void setSubProviderId(String str) {
        this.f11227g = str;
    }
}
