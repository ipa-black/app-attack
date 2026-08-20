.class public interface abstract Lcom/appodeal/ads/modules/common/internal/data/DeviceData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0017\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\u0007H&J\u0008\u0010\r\u001a\u00020\u0003H&J\u0017\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0014\u001a\u00020\u0003H&J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H&J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0003H&J\u0010\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0019\u001a\u00020\u0003H&J\u0008\u0010\u001a\u001a\u00020\u0003H&J\u0008\u0010\u001b\u001a\u00020\u0003H&J\u0008\u0010\u001c\u001a\u00020\u0003H&J\u0010\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010!\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\"\u001a\u00020\u0007H&J\u0008\u0010#\u001a\u00020\u0007H&J\u0015\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010%H&\u00a2\u0006\u0002\u0010&J\u0008\u0010\'\u001a\u00020\u0007H&J\u0008\u0010(\u001a\u00020\u0003H&J\u0010\u0010)\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010*\u001a\u00020\u000fH&J\u0008\u0010+\u001a\u00020\u000fH&J\u0008\u0010,\u001a\u00020\u000fH&\u00a8\u0006-"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/common/internal/data/DeviceData;",
        "",
        "getAndroidId",
        "",
        "context",
        "Landroid/content/Context;",
        "getAppRamSize",
        "",
        "getBatteryLevel",
        "",
        "getBatteryTemperature",
        "(Landroid/content/Context;)Ljava/lang/Float;",
        "getBootTime",
        "getBrandName",
        "getChargingStatus",
        "",
        "(Landroid/content/Context;)Ljava/lang/Boolean;",
        "getConnectionData",
        "Lcom/appodeal/ads/modules/common/internal/data/ConnectionData;",
        "getConnectionType",
        "getDeviceLanguage",
        "getDeviceName",
        "getDisplayDpi",
        "getKernelVersion",
        "getLowRamMemoryStatus",
        "getModelId",
        "getModelName",
        "getOsBuildVersion",
        "getPlatformName",
        "getScreenDensity",
        "getScreenHeight",
        "getScreenOrientation",
        "",
        "getScreenWidth",
        "getStorageFree",
        "getStorageSize",
        "getSupportedAbis",
        "",
        "()[Ljava/lang/String;",
        "getTimeStamp",
        "getTimeZone",
        "getTotalFreeRam",
        "isConnected",
        "isDeviceEmulator",
        "isDeviceRooted",
        "apd_internal"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getAndroidId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getAppRamSize(Landroid/content/Context;)J
.end method

.method public abstract getBatteryLevel(Landroid/content/Context;)F
.end method

.method public abstract getBatteryTemperature(Landroid/content/Context;)Ljava/lang/Float;
.end method

.method public abstract getBootTime()J
.end method

.method public abstract getBrandName()Ljava/lang/String;
.end method

.method public abstract getChargingStatus(Landroid/content/Context;)Ljava/lang/Boolean;
.end method

.method public abstract getConnectionData(Landroid/content/Context;)Lcom/appodeal/ads/modules/common/internal/data/ConnectionData;
.end method

.method public abstract getConnectionType(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getDeviceLanguage()Ljava/lang/String;
.end method

.method public abstract getDeviceName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getDisplayDpi(Landroid/content/Context;)F
.end method

.method public abstract getKernelVersion()Ljava/lang/String;
.end method

.method public abstract getLowRamMemoryStatus(Landroid/content/Context;)Z
.end method

.method public abstract getModelId()Ljava/lang/String;
.end method

.method public abstract getModelName()Ljava/lang/String;
.end method

.method public abstract getOsBuildVersion()Ljava/lang/String;
.end method

.method public abstract getPlatformName()Ljava/lang/String;
.end method

.method public abstract getScreenDensity(Landroid/content/Context;)F
.end method

.method public abstract getScreenHeight(Landroid/content/Context;)F
.end method

.method public abstract getScreenOrientation(Landroid/content/Context;)I
.end method

.method public abstract getScreenWidth(Landroid/content/Context;)F
.end method

.method public abstract getStorageFree()J
.end method

.method public abstract getStorageSize()J
.end method

.method public abstract getSupportedAbis()[Ljava/lang/String;
.end method

.method public abstract getTimeStamp()J
.end method

.method public abstract getTimeZone()Ljava/lang/String;
.end method

.method public abstract getTotalFreeRam(Landroid/content/Context;)J
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isDeviceEmulator()Z
.end method

.method public abstract isDeviceRooted()Z
.end method
