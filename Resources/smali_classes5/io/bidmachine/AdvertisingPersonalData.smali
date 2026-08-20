.class Lio/bidmachine/AdvertisingPersonalData;
.super Ljava/lang/Object;
.source "AdvertisingPersonalData.java"


# static fields
.field private static final ADVERTISING_CLIENT_CLASS:Ljava/lang/String; = "com.google.android.gms.ads.identifier.AdvertisingIdClient"

.field private static final DEFAULT_ADVERTISING_ID:Ljava/lang/String; = "00000000-0000-0000-0000-000000000000"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "ad_core_preferences"

.field private static final UUID_ID:Ljava/lang/String; = "uuid"

.field private static deviceAdvertisingId:Ljava/lang/String; = null

.field private static limitAdTrackingEnabled:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAdvertisingId(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "00000000-0000-0000-0000-000000000000"

    if-eqz p1, :cond_0

    return-object v0

    .line 60
    :cond_0
    sget-object p1, Lio/bidmachine/AdvertisingPersonalData;->deviceAdvertisingId:Ljava/lang/String;

    if-eqz p1, :cond_1

    return-object p1

    .line 63
    :cond_1
    invoke-static {p0}, Lio/bidmachine/AdvertisingPersonalData;->getAdvertisingIdFromSharedPref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    move-object v0, p0

    :cond_2
    return-object v0
.end method

.method private static getAdvertisingIdFromSharedPref(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 69
    const-string v0, "ad_core_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 70
    const-string v0, "uuid"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 71
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 73
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 75
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v1
.end method

.method static isLimitAdTrackingEnabled()Z
    .locals 1

    .line 53
    sget-boolean v0, Lio/bidmachine/AdvertisingPersonalData;->limitAdTrackingEnabled:Z

    return v0
.end method

.method static updateInfo(Landroid/content/Context;)V
    .locals 5

    .line 32
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 33
    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    const-class v4, Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v3, v2, p0

    .line 34
    invoke-static {v0, v0, v1, v2}, Lio/bidmachine/core/Utils;->invokeMethodByName(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    const-string v1, "getId"

    new-array v2, p0, [Landroid/util/Pair;

    invoke-static {v0, v1, v2}, Lio/bidmachine/core/Utils;->invokeMethodByName(Ljava/lang/Object;Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lio/bidmachine/AdvertisingPersonalData;->deviceAdvertisingId:Ljava/lang/String;

    .line 41
    const-string v1, "isLimitAdTrackingEnabled"

    new-array p0, p0, [Landroid/util/Pair;

    invoke-static {v0, v1, p0}, Lio/bidmachine/core/Utils;->invokeMethodByName(Ljava/lang/Object;Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lio/bidmachine/AdvertisingPersonalData;->limitAdTrackingEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 48
    invoke-static {p0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
