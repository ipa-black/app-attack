.class Lio/bidmachine/ads/networks/amazon/AmazonAdapter;
.super Lio/bidmachine/HeaderBiddingAdapter;
.source "AmazonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 7

    const/4 v0, 0x2

    .line 41
    new-array v6, v0, [Lio/bidmachine/AdsType;

    const/4 v0, 0x0

    sget-object v1, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    aput-object v1, v6, v0

    const/4 v0, 0x1

    sget-object v1, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    aput-object v1, v6, v0

    const-string v2, "amazon"

    const-string v3, "9.5.4"

    const-string v4, "2.1.5.7"

    const/16 v5, 0x13

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/HeaderBiddingAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/AdError;)Lio/bidmachine/utils/BMError;
    .locals 0

    .line 38
    invoke-static {p0}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter;->mapError(Lcom/amazon/device/ads/AdError;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0
.end method

.method private configure(ZLio/bidmachine/models/DataRestrictions;)V
    .locals 0

    .line 137
    invoke-static {p1}, Lcom/amazon/device/ads/AdRegistration;->enableTesting(Z)V

    .line 138
    invoke-interface {p2}, Lio/bidmachine/models/DataRestrictions;->canSendGeoPosition()Z

    move-result p1

    invoke-static {p1}, Lcom/amazon/device/ads/AdRegistration;->useGeoLocation(Z)V

    return-void
.end method

.method private static mapError(Lcom/amazon/device/ads/AdError;)Lio/bidmachine/utils/BMError;
    .locals 1

    .line 222
    sget-object v0, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$1;->$SwitchMap$com$amazon$device$ads$AdError$ErrorCode:[I

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdError$ErrorCode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 230
    const-string p0, "Unknown error"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0

    .line 228
    :cond_0
    sget-object p0, Lio/bidmachine/utils/BMError;->TimeoutError:Lio/bidmachine/utils/BMError;

    return-object p0

    .line 226
    :cond_1
    sget-object p0, Lio/bidmachine/utils/BMError;->NoConnection:Lio/bidmachine/utils/BMError;

    return-object p0

    .line 224
    :cond_2
    invoke-static {}, Lio/bidmachine/utils/BMError;->noFill()Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected isNetworkInitialized(Lio/bidmachine/ContextProvider;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->isInitialized()Z

    move-result p1

    return p1
.end method

.method protected onCollectHeaderBiddingParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/HeaderBiddingAdRequestParams;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 93
    const-string v0, "slot_uuid"

    invoke-virtual {p3, v0}, Lio/bidmachine/NetworkAdUnit;->getMediationParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-static {v0}, Lio/bidmachine/utils/BMError;->adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 99
    :cond_0
    const-string v0, "app_key"

    invoke-virtual {p3, v0}, Lio/bidmachine/NetworkAdUnit;->getMediationParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 100
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 101
    invoke-static {v0}, Lio/bidmachine/utils/BMError;->adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 106
    :cond_1
    invoke-interface {p2}, Lio/bidmachine/unified/UnifiedAdRequestParams;->isTestMode()Z

    move-result p3

    invoke-interface {p2}, Lio/bidmachine/unified/UnifiedAdRequestParams;->getDataRestrictions()Lio/bidmachine/models/DataRestrictions;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter;->configure(ZLio/bidmachine/models/DataRestrictions;)V

    .line 108
    invoke-interface {p4}, Lio/bidmachine/HeaderBiddingAdRequestParams;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object p3

    .line 109
    invoke-interface {p2}, Lio/bidmachine/unified/UnifiedAdRequestParams;->getDataRestrictions()Lio/bidmachine/models/DataRestrictions;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/models/DataRestrictions;->getUSPrivacyString()Ljava/lang/String;

    move-result-object v0

    .line 110
    sget-object v2, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    if-ne p3, v2, :cond_2

    .line 111
    invoke-interface {p2}, Lio/bidmachine/unified/UnifiedAdRequestParams;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object p1

    check-cast p1, Lio/bidmachine/banner/BannerAdRequestParameters;

    .line 112
    invoke-virtual {p1}, Lio/bidmachine/banner/BannerAdRequestParameters;->getBannerSize()Lio/bidmachine/banner/BannerSize;

    move-result-object p1

    .line 113
    invoke-static {p5}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->forDisplay(Lio/bidmachine/HeaderBiddingCollectParamsCallback;)Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;

    move-result-object p2

    .line 114
    invoke-virtual {p2, v0}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->withUsPrivacy(Ljava/lang/String;)Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;

    move-result-object p2

    new-instance p3, Lcom/amazon/device/ads/DTBAdSize;

    iget p4, p1, Lio/bidmachine/banner/BannerSize;->width:I

    iget p1, p1, Lio/bidmachine/banner/BannerSize;->height:I

    invoke-direct {p3, p4, p1, v1}, Lcom/amazon/device/ads/DTBAdSize;-><init>(IILjava/lang/String;)V

    .line 115
    invoke-virtual {p2, p3}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->load(Lcom/amazon/device/ads/DTBAdSize;)V

    goto :goto_1

    .line 116
    :cond_2
    sget-object p2, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    if-eq p3, p2, :cond_4

    sget-object p2, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    if-ne p3, p2, :cond_3

    goto :goto_0

    .line 132
    :cond_3
    const-string p1, "Unsupported ads type"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->adapter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    goto :goto_1

    .line 117
    :cond_4
    :goto_0
    invoke-interface {p4}, Lio/bidmachine/HeaderBiddingAdRequestParams;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object p2

    sget-object p3, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    if-ne p2, p3, :cond_5

    .line 118
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 121
    invoke-static {p5}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->forVideo(Lio/bidmachine/HeaderBiddingCollectParamsCallback;)Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;

    move-result-object p2

    .line 122
    invoke-virtual {p2, v0}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->withUsPrivacy(Ljava/lang/String;)Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;

    move-result-object p2

    new-instance p3, Lcom/amazon/device/ads/DTBAdSize$DTBVideo;

    iget p4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p3, p4, p1, v1}, Lcom/amazon/device/ads/DTBAdSize$DTBVideo;-><init>(IILjava/lang/String;)V

    .line 123
    invoke-virtual {p2, p3}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->load(Lcom/amazon/device/ads/DTBAdSize;)V

    goto :goto_1

    .line 127
    :cond_5
    invoke-static {p5}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->forDisplay(Lio/bidmachine/HeaderBiddingCollectParamsCallback;)Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;

    move-result-object p1

    .line 128
    invoke-virtual {p1, v0}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->withUsPrivacy(Ljava/lang/String;)Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;

    move-result-object p1

    new-instance p2, Lcom/amazon/device/ads/DTBAdSize$DTBInterstitialAdSize;

    invoke-direct {p2, v1}, Lcom/amazon/device/ads/DTBAdSize$DTBInterstitialAdSize;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1, p2}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->load(Lcom/amazon/device/ads/DTBAdSize;)V

    :goto_1
    return-void
.end method

.method protected onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 64
    invoke-interface {p3}, Lio/bidmachine/NetworkConfigParams;->obtainNetworkParams()Ljava/util/Map;

    move-result-object p3

    if-nez p3, :cond_0

    .line 66
    const-string p1, "Network parameters not found"

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    const-string v0, "app_key"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 70
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string p1, "%s not provided"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 77
    :cond_1
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/amazon/device/ads/AdRegistration;->getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/device/ads/AdRegistration;

    const/4 p1, 0x2

    .line 78
    new-array p1, p1, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string v0, "1.0"

    aput-object v0, p1, p3

    const/4 p3, 0x1

    const-string v0, "2.0"

    aput-object v0, p1, p3

    invoke-static {p1}, Lcom/amazon/device/ads/AdRegistration;->setMRAIDSupportedVersions([Ljava/lang/String;)V

    .line 79
    sget-object p1, Lcom/amazon/device/ads/MRAIDPolicy;->CUSTOM:Lcom/amazon/device/ads/MRAIDPolicy;

    invoke-static {p1}, Lcom/amazon/device/ads/AdRegistration;->setMRAIDPolicy(Lcom/amazon/device/ads/MRAIDPolicy;)V

    .line 81
    invoke-interface {p2}, Lio/bidmachine/InitializationParams;->isTestMode()Z

    move-result p1

    invoke-interface {p2}, Lio/bidmachine/InitializationParams;->getDataRestrictions()Lio/bidmachine/models/DataRestrictions;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter;->configure(ZLio/bidmachine/models/DataRestrictions;)V

    .line 83
    invoke-interface {p4}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    return-void
.end method

.method public setLogging(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    invoke-static {p1}, Lcom/amazon/device/ads/AdRegistration;->enableLogging(Z)V

    return-void
.end method
