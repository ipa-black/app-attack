.class public Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;
.super Ljava/lang/Object;
.source "DeviceIdParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;
    }
.end annotation


# static fields
.field private static instance:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;


# instance fields
.field private _deviceIdParameters:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;

    invoke-direct {v0}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;->_deviceIdParameters:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;->_deviceIdParameters:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;Landroid/app/Activity;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;->getAdvertisingIdInfo(Landroid/app/Activity;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p0

    return-object p0
.end method

.method private getAdvertisingIdInfo(Landroid/app/Activity;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 1

    const/4 v0, 0x0

    .line 58
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception p1

    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->printStackTrace()V

    return-object v0

    :catch_2
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method public static getInstance()Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;
    .locals 1

    .line 23
    sget-object v0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;->instance:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;

    invoke-direct {v0}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;-><init>()V

    sput-object v0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;->instance:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;

    .line 26
    :cond_0
    sget-object v0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;->instance:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;

    return-object v0
.end method


# virtual methods
.method public getAndroidId(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 77
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDeviceId(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 42
    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 43
    invoke-virtual {p1, v0}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-string v0, "phone"

    .line 45
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 46
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEmty()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;->_deviceIdParameters:Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParameters;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public rescan(Landroid/app/Activity;Lcom/appsgeyser/multiTabApp/deviceidparser/IDeviceIdParserListener;)V
    .locals 2

    .line 37
    new-instance v0, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;

    invoke-direct {v0, p0, p2}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;-><init>(Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser;Lcom/appsgeyser/multiTabApp/deviceidparser/IDeviceIdParserListener;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/app/Activity;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-virtual {v0, p2}, Lcom/appsgeyser/multiTabApp/deviceidparser/DeviceIdParser$ParserThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
