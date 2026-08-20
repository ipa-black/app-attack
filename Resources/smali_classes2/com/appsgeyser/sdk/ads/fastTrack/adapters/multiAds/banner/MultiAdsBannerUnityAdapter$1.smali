.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;
.super Ljava/lang/Object;
.source "MultiAdsBannerUnityAdapter.java"

# interfaces
.implements Lcom/unity3d/services/banners/BannerView$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->loadBanner(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

.field final synthetic val$bannerViewContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->val$bannerViewContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onBannerClick$0$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-banner-MultiAdsBannerUnityAdapter$1()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->access$102(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;Z)Z

    return-void
.end method

.method public onBannerClick(Lcom/unity3d/services/banners/BannerView;)V
    .locals 4

    .line 67
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->access$100(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v0, "ad_source"

    const-string v1, "ft_ma_unity"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v0, "net_name"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "banner id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->access$102(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;Z)Z

    .line 72
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->context:Landroid/content/Context;

    .line 76
    const-string v3, "ft_banner_sdk_click"

    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 78
    const-string p1, "multiAdsTag"

    const-string v0, "unity banner onBannerClick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface$BannerListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface$BannerListener;->onBannerClicked()V

    return-void
.end method

.method public onBannerFailedToLoad(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerErrorInfo;)V
    .locals 6

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unity banner onBannerFailedToLoad: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/unity3d/services/banners/BannerErrorInfo;->errorCode:Lcom/unity3d/services/banners/BannerErrorCode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p2, Lcom/unity3d/services/banners/BannerErrorInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "multiAdsTag"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p2, Lcom/unity3d/services/banners/BannerErrorInfo;->errorCode:Lcom/unity3d/services/banners/BannerErrorCode;

    sget-object v1, Lcom/unity3d/services/banners/BannerErrorCode;->NO_FILL:Lcom/unity3d/services/banners/BannerErrorCode;

    const/4 v2, 0x1

    const-string v3, "banner id: "

    const-string v4, "details"

    if-ne p1, v1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v1, "ad_source"

    const-string v5, "ft_ma_unity"

    invoke-virtual {p1, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v1, "net_name"

    invoke-virtual {p1, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v3}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->context:Landroid/content/Context;

    .line 92
    const-string v4, "ft_banner_sdk_nofill"

    invoke-virtual {p1, v4, v1, v3, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v3}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; error_desc: error code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p2, Lcom/unity3d/services/banners/BannerErrorInfo;->errorCode:Lcom/unity3d/services/banners/BannerErrorCode;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p2, Lcom/unity3d/services/banners/BannerErrorInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->context:Landroid/content/Context;

    .line 99
    const-string v4, "ft_banner_sdk_error"

    invoke-virtual {p1, v4, v1, v3, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 102
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface$BannerListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/unity3d/services/banners/BannerErrorInfo;->errorCode:Lcom/unity3d/services/banners/BannerErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p2, p2, Lcom/unity3d/services/banners/BannerErrorInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface$BannerListener;->onBannerError(Ljava/lang/String;)V

    return-void
.end method

.method public onBannerLeftApplication(Lcom/unity3d/services/banners/BannerView;)V
    .locals 1

    .line 107
    const-string p1, "multiAdsTag"

    const-string v0, "unity banner onBannerLeftApplication"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBannerLoaded(Lcom/unity3d/services/banners/BannerView;)V
    .locals 4

    .line 53
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v0, "ad_source"

    const-string v1, "ft_ma_unity"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v0, "net_name"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "banner id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->context:Landroid/content/Context;

    const/4 v2, 0x1

    .line 57
    const-string v3, "ft_banner_sdk_impression"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 59
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->val$bannerViewContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;)Lcom/unity3d/services/banners/BannerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/unity3d/services/banners/BannerView;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface$BannerListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface$BannerListener;->onBannerLoaded()V

    .line 62
    const-string p1, "multiAdsTag"

    const-string v0, "unity banner onBannerLoaded"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
