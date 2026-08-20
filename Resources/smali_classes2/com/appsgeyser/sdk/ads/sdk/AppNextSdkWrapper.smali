.class public Lcom/appsgeyser/sdk/ads/sdk/AppNextSdkWrapper;
.super Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;
.source "AppNextSdkWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getNativeAd()V
    .locals 0

    return-void
.end method

.method public isAdSupported(Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper$AdType;)Z
    .locals 2

    .line 24
    sget-object v0, Lcom/appsgeyser/sdk/ads/sdk/AppNextSdkWrapper$1;->$SwitchMap$com$appsgeyser$sdk$ads$sdk$SdkWrapper$AdType:[I

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper$AdType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public showFsBanner()V
    .locals 2

    .line 14
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/sdk/AppNextSdkWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getFullScreenBanner(Landroid/content/Context;)Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->SDK:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->setBannerType(Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;)V

    return-void
.end method
