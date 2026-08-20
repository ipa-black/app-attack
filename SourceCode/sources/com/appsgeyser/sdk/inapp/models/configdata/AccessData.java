package com.appsgeyser.sdk.inapp.models.configdata;

import com.google.gson.Gson;
/* loaded from: classes2.dex */
public class AccessData implements ConfigInappData {
    private boolean active;
    private boolean allowPurchases;
    private String backgroundColor;
    private String buttonText;
    private String buttonTextColor;
    private String buttonTintColor;
    private String inappKey;
    private String licenseKey;

    public AccessData(boolean z, String str, String str2, String str3, String str4, String str5, String str6, boolean z2) {
        this.active = z;
        this.buttonText = str;
        this.buttonTintColor = str2;
        this.buttonTextColor = str3;
        this.backgroundColor = str4;
        this.licenseKey = str5;
        this.inappKey = str6;
        this.allowPurchases = z2;
    }

    public String getButtonText() {
        return this.buttonText;
    }

    public void setButtonText(String str) {
        this.buttonText = str;
    }

    public String getButtonTintColor() {
        return this.buttonTintColor;
    }

    public void setButtonTintColor(String str) {
        this.buttonTintColor = str;
    }

    public String getButtonTextColor() {
        return this.buttonTextColor;
    }

    public void setButtonTextColor(String str) {
        this.buttonTextColor = str;
    }

    public String getBackgroundColor() {
        return this.backgroundColor;
    }

    public void setBackgroundColor(String str) {
        this.backgroundColor = str;
    }

    public String getLicenseKey() {
        return this.licenseKey;
    }

    public void setLicenseKey(String str) {
        this.licenseKey = str;
    }

    @Override // com.appsgeyser.sdk.inapp.models.configdata.ConfigInappData
    public String getInappKey() {
        return this.inappKey;
    }

    public void setInappKey(String str) {
        this.inappKey = str;
    }

    public static AccessData parseFromJson(String str) {
        if (str.equals("")) {
            return null;
        }
        return (AccessData) new Gson().fromJson(str, (Class<Object>) AccessData.class);
    }

    @Override // com.appsgeyser.sdk.inapp.models.configdata.ConfigInappData
    public boolean isActive() {
        return this.active;
    }

    public void setActive(boolean z) {
        this.active = z;
    }

    @Override // com.appsgeyser.sdk.inapp.models.configdata.ConfigInappData
    public boolean isAllowPurchases() {
        return this.allowPurchases;
    }

    public void setAllowPurchases(boolean z) {
        this.allowPurchases = z;
    }

    public String toString() {
        return "AuthData{active=" + this.active + ", buttonText='" + this.buttonText + "', buttonTintColor='" + this.buttonTintColor + "', buttonTextColor='" + this.buttonTextColor + "', backgroundColor='" + this.backgroundColor + "', licenseKey='" + this.licenseKey + "', inappKey='" + this.inappKey + "'}";
    }
}
