.class public Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$ac;
.super Ljava/lang/Object;
.source "DeviceUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ac"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 711
    const-string v0, "TTAD.DeviceUtils"

    .line 714
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 716
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v3

    .line 720
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Qhi(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V

    .line 721
    new-instance v4, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$ac$1;

    invoke-direct {v4, p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$ac$1;-><init>(Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$ac;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/core/settings/hpZ$Qhi;)V

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eq v3, v2, :cond_1

    .line 736
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ac;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/ac;

    move-result-object v1

    const-string v2, "limit_ad_track"

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ac;->Qhi(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 741
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    .line 739
    const-string v2, "getLmtTask error : signaling connection to Google Play Services failed."

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
