.class public interface abstract Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/modules/common/internal/data/SessionData;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0003H&J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0003H&J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH&J\n\u0010\u000b\u001a\u0004\u0018\u00010\u0003H&J\n\u0010\u000c\u001a\u0004\u0018\u00010\u0003H&J\u0008\u0010\r\u001a\u00020\u0003H&J\u0008\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0008\u001a\u00020\tH&J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\u0014\u001a\u00020\u0015H&J\u0008\u0010\u0016\u001a\u00020\u0015H&J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\u0018\u001a\u00020\u0015H&\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;",
        "Lcom/appodeal/ads/modules/common/internal/data/SessionData;",
        "getAppName",
        "",
        "getBuildVersion",
        "getFrameworkName",
        "getFrameworkVersion",
        "getInstaller",
        "context",
        "Landroid/content/Context;",
        "getPackageName",
        "getPluginVersion",
        "getSdkKey",
        "getSdkVersion",
        "getSegmentId",
        "",
        "getTargetSdkVersion",
        "getVersionCode",
        "",
        "getVersionName",
        "isAppodealInitialized",
        "",
        "isAppodealInitializing",
        "isSideLoaded",
        "isTestMode",
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
.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getBuildVersion()Ljava/lang/String;
.end method

.method public abstract getFrameworkName()Ljava/lang/String;
.end method

.method public abstract getFrameworkVersion()Ljava/lang/String;
.end method

.method public abstract getInstaller(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getPackageName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getPluginVersion()Ljava/lang/String;
.end method

.method public abstract getSdkKey()Ljava/lang/String;
.end method

.method public abstract getSdkVersion()Ljava/lang/String;
.end method

.method public abstract getSegmentId()J
.end method

.method public abstract getTargetSdkVersion(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getVersionCode(Landroid/content/Context;)I
.end method

.method public abstract getVersionName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract isAppodealInitialized()Z
.end method

.method public abstract isAppodealInitializing()Z
.end method

.method public abstract isSideLoaded(Landroid/content/Context;)Z
.end method

.method public abstract isTestMode()Z
.end method
