package com.appsgeyser.sdk.inapp.models.configdata;

import com.google.gson.Gson;
/* loaded from: classes2.dex */
public class DisableAdsData implements ConfigInappData {
    private boolean active;
    private boolean allowPurchases;
    private String inappKey;

    public DisableAdsData(boolean z, String str, boolean z2) {
        this.active = z;
        this.inappKey = str;
        this.allowPurchases = z2;
    }

    @Override // com.appsgeyser.sdk.inapp.models.configdata.ConfigInappData
    public boolean isActive() {
        return this.active;
    }

    public void setActive(boolean z) {
        this.active = z;
    }

    @Override // com.appsgeyser.sdk.inapp.models.configdata.ConfigInappData
    public String getInappKey() {
        return this.inappKey;
    }

    @Override // com.appsgeyser.sdk.inapp.models.configdata.ConfigInappData
    public boolean isAllowPurchases() {
        return this.allowPurchases;
    }

    public void setAllowPurchases(boolean z) {
        this.allowPurchases = z;
    }

    public void setInappKey(String str) {
        this.inappKey = str;
    }

    public static DisableAdsData parseFromJson(String str) {
        if (str.equals("")) {
            return null;
        }
        return (DisableAdsData) new Gson().fromJson(str, (Class<Object>) DisableAdsData.class);
    }

    public String toString() {
        return "DisableAdsData{active=" + this.active + ", inappKey='" + this.inappKey + "'}";
    }
}
