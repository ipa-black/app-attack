.class public interface abstract Lcom/appodeal/ads/RestrictedData;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canSendLocation()Z
.end method

.method public abstract canSendLocationType()Z
.end method

.method public abstract canSendUserSettings()Z
.end method

.method public abstract getAge()Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCity()Ljava/lang/String;
.end method

.method public abstract getConnectionData(Landroid/content/Context;)Lcom/appodeal/ads/modules/common/internal/data/ConnectionData;
.end method

.method public abstract getCountry()Ljava/lang/String;
.end method

.method public abstract getGender()Lcom/appodeal/ads/UserSettings$Gender;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getHttpAgent(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getIabConsentString()Ljava/lang/String;
.end method

.method public abstract getIfa()Ljava/lang/String;
.end method

.method public abstract getIp()Ljava/lang/String;
.end method

.method public abstract getLocation(Landroid/content/Context;)Lcom/appodeal/ads/LocationData;
.end method

.method public abstract getUSPrivacyString()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getZip()Ljava/lang/String;
.end method

.method public abstract isLimitAdTrackingEnabled()Z
.end method

.method public abstract isParameterBlocked(Ljava/lang/String;)Z
.end method

.method public abstract isUserAgeRestricted()Z
.end method

.method public abstract isUserCcpaProtected()Z
.end method

.method public abstract isUserGdprProtected()Z
.end method

.method public abstract isUserHasConsent()Z
.end method

.method public abstract isUserInCcpaScope()Z
.end method

.method public abstract isUserInGdprScope()Z
.end method

.method public abstract isUserProtected()Z
.end method
