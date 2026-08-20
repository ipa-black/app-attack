package com.appsgeyser.sdk.configuration.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackSdkModel;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import java.io.StringReader;
import java.util.Map;
/* loaded from: classes2.dex */
public class ConfigPhp implements Parcelable {
    public static final Parcelable.Creator<ConfigPhp> CREATOR = new Parcelable.Creator<ConfigPhp>() { // from class: com.appsgeyser.sdk.configuration.models.ConfigPhp.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConfigPhp createFromParcel(Parcel parcel) {
            return new ConfigPhp(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConfigPhp[] newArray(int i) {
            return new ConfigPhp[i];
        }
    };
    @SerializedName("about_screen_description")
    private String aboutScreenDescription;
    @SerializedName("about_screen_description_type")
    private String aboutScreenDescriptionType;
    private FastTrackSdkModel activeAdsSDK;
    @SerializedName("additional_js_code")
    private String additionalJsCode;
    private Map<String, AdNetworkSdkModel> adsNetworkSdk;
    @SerializedName("app_ban_active")
    private boolean appBanActive;
    @SerializedName("appsgeyserAuth")
    private String appsgeyserAccess;
    @SerializedName("appsgeyserDisableAds")
    private String appsgeyserDisableAds;
    private ConfigPhpSdkModel appsgeyserSdk;
    private int countOfTry;
    private String country;
    @SerializedName("custom_html_about_active")
    private boolean customAboutActive;
    private String eulaBeginning;
    @SerializedName("firebaseActive")
    private boolean firebaseActive;
    @SerializedName("firebaseApiKey")
    private String firebaseApiKey;
    @SerializedName("firebaseApplicationId")
    private String firebaseApplicationId;
    @SerializedName("firebaseDataBaseUrl")
    private String firebaseDataBaseUrl;
    @SerializedName("firebaseStorageBucket")
    private String firebaseStorageBucket;
    private long fullScreenDelay;
    private int fullscreenBannerCountToShow;
    private Map<String, AdNetworkSdkModel> fullscreenSdk;
    private boolean inAppPurchasesActive;
    @SerializedName("period_days")
    private int inactivityDaysPeriod;
    @SerializedName("turn_on_inactivity_reminder")
    private boolean inactivityReminderEnabled;
    @SerializedName("text_reminder")
    private String inactivityReminderText;
    @SerializedName("enable_about_screen")
    private boolean isAboutScreenEnabled;
    @SerializedName("startup_confirmation_dialog")
    private boolean isAdvertisingTermsDialog;
    @SerializedName("isInappUpdateEnabled")
    private boolean isInappUpdateEnabled;
    private boolean isOnResumeFSEnabled;
    private boolean isOnTouchFSEnabled;
    private boolean isTakeOffFSEnabled;
    @SerializedName("oneSignalAppId")
    private String oneSignalAppId;
    private boolean pushNotificationsActive;
    @SerializedName("rateMyAppActive")
    private boolean rateMyAppActive;
    private Map<String, AdNetworkSdkModel> rewardedVideoSdk;
    @SerializedName("startup_dialog_allowing_use_if_decline")
    private boolean startupELUAConfirmationDialogAllow;
    private Map<String, String> statUrls;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private ConfigPhp(Parcel parcel) {
        this.isAboutScreenEnabled = true;
        this.aboutScreenDescriptionType = RewardedVideo.VIDEO_MODE_DEFAULT;
        this.startupELUAConfirmationDialogAllow = true;
        this.isTakeOffFSEnabled = false;
        this.isOnResumeFSEnabled = false;
        this.isOnTouchFSEnabled = true;
        this.fullScreenDelay = -1L;
        this.fullscreenBannerCountToShow = 1;
        this.appsgeyserSdk = (ConfigPhpSdkModel) parcel.readParcelable(ConfigPhpSdkModel.class.getClassLoader());
        this.isAboutScreenEnabled = parcel.readByte() != 0;
        this.isAdvertisingTermsDialog = parcel.readByte() != 0;
        this.country = parcel.readString();
        this.eulaBeginning = parcel.readString();
        this.pushNotificationsActive = parcel.readByte() != 0;
        this.countOfTry = parcel.readInt();
        this.aboutScreenDescriptionType = parcel.readString();
        this.aboutScreenDescription = parcel.readString();
        this.startupELUAConfirmationDialogAllow = parcel.readByte() != 0;
        this.rateMyAppActive = parcel.readByte() != 0;
        this.customAboutActive = parcel.readByte() != 0;
        this.appBanActive = parcel.readByte() != 0;
        this.inAppPurchasesActive = parcel.readByte() != 0;
        this.additionalJsCode = parcel.readString();
        this.inactivityReminderEnabled = parcel.readByte() != 0;
        this.inactivityDaysPeriod = parcel.readInt();
        this.inactivityReminderText = parcel.readString();
        this.oneSignalAppId = parcel.readString();
        this.appsgeyserAccess = parcel.readString();
        this.appsgeyserDisableAds = parcel.readString();
        this.isInappUpdateEnabled = parcel.readByte() != 0;
        this.firebaseActive = parcel.readByte() != 0;
        this.firebaseApplicationId = parcel.readString();
        this.firebaseApiKey = parcel.readString();
        this.firebaseDataBaseUrl = parcel.readString();
        this.firebaseStorageBucket = parcel.readString();
    }

    public static ConfigPhp parseFromJson(String str) throws JsonSyntaxException {
        Gson create = new GsonBuilder().setLenient().create();
        JsonReader jsonReader = new JsonReader(new StringReader(str));
        jsonReader.setLenient(true);
        return (ConfigPhp) create.fromJson(jsonReader, ConfigPhp.class);
    }

    public ConfigPhp(ConfigPhpSdkModel configPhpSdkModel, String str, String str2, boolean z, int i, Map<String, String> map, boolean z2, boolean z3, FastTrackSdkModel fastTrackSdkModel, String str3, String str4, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, String str5, boolean z9, int i2, String str6, String str7, String str8, String str9, boolean z10, boolean z11, String str10, String str11, String str12, String str13) {
        this.isTakeOffFSEnabled = false;
        this.isOnResumeFSEnabled = false;
        this.isOnTouchFSEnabled = true;
        this.fullScreenDelay = -1L;
        this.fullscreenBannerCountToShow = 1;
        this.appsgeyserSdk = configPhpSdkModel;
        this.country = str;
        this.eulaBeginning = str2;
        this.pushNotificationsActive = z;
        this.countOfTry = i;
        this.statUrls = map;
        this.isAboutScreenEnabled = z2;
        this.isAdvertisingTermsDialog = z3;
        this.activeAdsSDK = fastTrackSdkModel;
        this.aboutScreenDescription = str3;
        this.aboutScreenDescriptionType = str4;
        this.startupELUAConfirmationDialogAllow = z4;
        this.rateMyAppActive = z5;
        this.customAboutActive = z6;
        this.appBanActive = z7;
        this.inAppPurchasesActive = z8;
        this.additionalJsCode = str5;
        this.inactivityReminderEnabled = z9;
        this.inactivityDaysPeriod = i2;
        this.inactivityReminderText = str6;
        this.oneSignalAppId = str7;
        this.appsgeyserAccess = str8;
        this.appsgeyserDisableAds = str9;
        this.isInappUpdateEnabled = z10;
        this.firebaseActive = z11;
        this.firebaseApplicationId = str10;
        this.firebaseApiKey = str11;
        this.firebaseDataBaseUrl = str12;
        this.firebaseStorageBucket = str13;
    }

    public ConfigPhp() {
        this.isAboutScreenEnabled = true;
        this.aboutScreenDescriptionType = RewardedVideo.VIDEO_MODE_DEFAULT;
        this.startupELUAConfirmationDialogAllow = true;
        this.isTakeOffFSEnabled = false;
        this.isOnResumeFSEnabled = false;
        this.isOnTouchFSEnabled = true;
        this.fullScreenDelay = -1L;
        this.fullscreenBannerCountToShow = 1;
    }

    public ConfigPhpSdkModel getAppsgeyserSdk() {
        return this.appsgeyserSdk;
    }

    public String getAboutScreenDescriptionType() {
        return this.aboutScreenDescriptionType;
    }

    public String getAboutScreenDescription() {
        return this.aboutScreenDescription;
    }

    public boolean getStartupELUAConfirmationDialogAllow() {
        return this.startupELUAConfirmationDialogAllow;
    }

    public void setAppsgeyserSdk(ConfigPhpSdkModel configPhpSdkModel) {
        this.appsgeyserSdk = configPhpSdkModel;
    }

    public String getCountry() {
        return this.country;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public String getEulaBeginning() {
        return this.eulaBeginning;
    }

    public void setEulaBeginning(String str) {
        this.eulaBeginning = str;
    }

    public int getCountOfTry() {
        return this.countOfTry;
    }

    public void setCountOfTry(int i) {
        this.countOfTry = i;
    }

    public Map<String, String> getStatUrls() {
        return this.statUrls;
    }

    public void setStatUrls(Map<String, String> map) {
        this.statUrls = map;
    }

    public boolean isAboutScreenEnabled() {
        return this.isAboutScreenEnabled;
    }

    public void setAboutScreenEnabled(boolean z) {
        this.isAboutScreenEnabled = z;
    }

    public boolean isPushNotificationsActive() {
        return this.pushNotificationsActive;
    }

    public void setPushNotificationsActive(boolean z) {
        this.pushNotificationsActive = z;
    }

    public boolean isAdvertisingTermsDialog() {
        return this.isAdvertisingTermsDialog;
    }

    public void setAdvertisingTermsDialog(boolean z) {
        this.isAdvertisingTermsDialog = z;
    }

    public boolean isInAppPurchasesActive() {
        return this.inAppPurchasesActive;
    }

    public void setInAppPurchasesActive(boolean z) {
        this.inAppPurchasesActive = z;
    }

    public boolean isAppBanActive() {
        return this.appBanActive;
    }

    public void setAppBanActive(boolean z) {
        this.appBanActive = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.appsgeyserSdk, i);
        parcel.writeByte(this.isAboutScreenEnabled ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isAdvertisingTermsDialog ? (byte) 1 : (byte) 0);
        parcel.writeString(this.country);
        parcel.writeString(this.eulaBeginning);
        parcel.writeByte(this.pushNotificationsActive ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.countOfTry);
        parcel.writeString(this.aboutScreenDescriptionType);
        parcel.writeString(this.aboutScreenDescription);
        parcel.writeByte(this.startupELUAConfirmationDialogAllow ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.rateMyAppActive ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.customAboutActive ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.appBanActive ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.inAppPurchasesActive ? (byte) 1 : (byte) 0);
        parcel.writeString(this.additionalJsCode);
        parcel.writeByte(this.inactivityReminderEnabled ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.inactivityDaysPeriod);
        parcel.writeString(this.inactivityReminderText);
        parcel.writeString(this.oneSignalAppId);
        parcel.writeString(this.appsgeyserAccess);
        parcel.writeString(this.appsgeyserDisableAds);
        parcel.writeByte(this.isInappUpdateEnabled ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.firebaseActive ? (byte) 1 : (byte) 0);
        parcel.writeString(this.firebaseApplicationId);
        parcel.writeString(this.firebaseApiKey);
        parcel.writeString(this.firebaseDataBaseUrl);
        parcel.writeString(this.firebaseStorageBucket);
    }

    public Map<String, AdNetworkSdkModel> getAdsNetworkSdk() {
        return this.adsNetworkSdk;
    }

    public void setAdsNetworkSdk(Map<String, AdNetworkSdkModel> map) {
        this.adsNetworkSdk = map;
    }

    public boolean isOfferWallEnabled() {
        Map<String, AdNetworkSdkModel> map = this.adsNetworkSdk;
        if (map != null && map.size() > 0) {
            for (AdNetworkSdkModel adNetworkSdkModel : this.adsNetworkSdk.values()) {
                if (adNetworkSdkModel.isActive()) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isRewardedVideoEnabled() {
        Map<String, AdNetworkSdkModel> map = this.rewardedVideoSdk;
        if (map != null && map.size() > 0) {
            for (AdNetworkSdkModel adNetworkSdkModel : this.rewardedVideoSdk.values()) {
                if (adNetworkSdkModel.isActive()) {
                    return true;
                }
            }
        }
        return false;
    }

    public Map<String, AdNetworkSdkModel> getRewardedVideoSdk() {
        return this.rewardedVideoSdk;
    }

    public void setRewardedVideoSdk(Map<String, AdNetworkSdkModel> map) {
        this.rewardedVideoSdk = map;
    }

    public long getFullScreenDelay() {
        return this.fullScreenDelay;
    }

    public void setFullScreenDelay(long j) {
        this.fullScreenDelay = j;
    }

    public Map<String, AdNetworkSdkModel> getFullscreenSdk() {
        return this.fullscreenSdk;
    }

    public boolean isTakeOffFSEnabled() {
        return this.isTakeOffFSEnabled;
    }

    public boolean isOnResumeFSEnabled() {
        return this.isOnResumeFSEnabled;
    }

    public boolean isOnTouchFSEnabled() {
        return this.isOnTouchFSEnabled;
    }

    public int getFullscreenBannerCountToShow() {
        return this.fullscreenBannerCountToShow;
    }

    public void setFullscreenBannerCountToShow(int i) {
        this.fullscreenBannerCountToShow = i;
    }

    public FastTrackSdkModel getActiveAdsSDK() {
        return this.activeAdsSDK;
    }

    public boolean isRateMyAppActive() {
        return this.rateMyAppActive;
    }

    public void setRateMyAppActive(boolean z) {
        this.rateMyAppActive = z;
    }

    public boolean isCustomAboutActive() {
        return this.customAboutActive;
    }

    public void setCustomAboutActive(boolean z) {
        this.customAboutActive = z;
    }

    public String getAdditionalJsCode() {
        return this.additionalJsCode;
    }

    public void setAdditionalJsCode(String str) {
        this.additionalJsCode = str;
    }

    public boolean isInactivityReminderEnabled() {
        return this.inactivityReminderEnabled;
    }

    public void setInactivityReminderEnabled(boolean z) {
        this.inactivityReminderEnabled = z;
    }

    public int getInactivityDaysPeriod() {
        int i = this.inactivityDaysPeriod;
        if (i != 0) {
            return i;
        }
        return 1;
    }

    public void setInactivityDaysPeriod(int i) {
        this.inactivityDaysPeriod = i;
    }

    public String getInactivityReminderText() {
        return this.inactivityReminderText;
    }

    public void setInactivityReminderText(String str) {
        this.inactivityReminderText = str;
    }

    public String getOneSignalAppId() {
        return this.oneSignalAppId;
    }

    public void setOneSignalAppId(String str) {
        this.oneSignalAppId = str;
    }

    public String getAppsgeyserAccess() {
        return this.appsgeyserAccess;
    }

    public void setAppsgeyserAccess(String str) {
        this.appsgeyserAccess = str;
    }

    public String getAppsgeyserDisableAds() {
        return this.appsgeyserDisableAds;
    }

    public void setAppsgeyserDisableAds(String str) {
        this.appsgeyserDisableAds = str;
    }

    public boolean isInappUpdateEnabled() {
        return this.isInappUpdateEnabled;
    }

    public void setInappUpdateEnabled(boolean z) {
        this.isInappUpdateEnabled = z;
    }

    public boolean isFirebaseActive() {
        return this.firebaseActive;
    }

    public void setFirebaseActive(boolean z) {
        this.firebaseActive = z;
    }

    public String getFirebaseApplicationId() {
        return this.firebaseApplicationId;
    }

    public void setFirebaseApplicationId(String str) {
        this.firebaseApplicationId = str;
    }

    public String getFirebaseApiKey() {
        return this.firebaseApiKey;
    }

    public void setFirebaseApiKey(String str) {
        this.firebaseApiKey = str;
    }

    public String getFirebaseDataBaseUrl() {
        return this.firebaseDataBaseUrl;
    }

    public void setFirebaseDataBaseUrl(String str) {
        this.firebaseDataBaseUrl = str;
    }

    public String getFirebaseStorageBucket() {
        return this.firebaseStorageBucket;
    }

    public void setFirebaseStorageBucket(String str) {
        this.firebaseStorageBucket = str;
    }
}
