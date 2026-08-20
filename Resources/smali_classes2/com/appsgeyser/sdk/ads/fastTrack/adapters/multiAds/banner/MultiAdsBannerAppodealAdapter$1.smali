.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;
.super Ljava/lang/Object;
.source "MultiAdsBannerAppodealAdapter.java"

# interfaces
.implements Lcom/appodeal/ads/BannerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->loadBanner(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

.field final synthetic val$bannerViewContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->val$bannerViewContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClicked()V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v1, "ad_source"

    const-string v2, "ft_ma_appodeal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v1, "net_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 82
    const-string v4, "ft_banner_sdk_click"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 84
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface$BannerListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface$BannerListener;->onBannerClicked()V

    .line 85
    const-string v0, "multiAdsTag"

    const-string v1, "appodeal banner onBannerClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBannerExpired()V
    .locals 2

    .line 90
    const-string v0, "multiAdsTag"

    const-string v1, "appodeal banner onBannerExpired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBannerFailedToLoad()V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v1, "ad_source"

    const-string v2, "ft_ma_appodeal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v1, "net_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 56
    const-string v4, "ft_banner_sdk_nofill"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 58
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface$BannerListener;

    const-string v1, "appodeal banner onBannerFailedToLoad"

    invoke-interface {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface$BannerListener;->onBannerError(Ljava/lang/String;)V

    .line 59
    const-string v0, "multiAdsTag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBannerLoaded(IZ)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->val$bannerViewContainer:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->val$bannerViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const/16 p2, 0x40

    invoke-static {p1, p2}, Lcom/appodeal/ads/Appodeal;->show(Landroid/app/Activity;I)Z

    .line 47
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface$BannerListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface$BannerListener;->onBannerLoaded()V

    .line 48
    const-string p1, "multiAdsTag"

    const-string p2, "appodeal banner onBannerLoaded"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBannerShowFailed()V
    .locals 2

    .line 74
    const-string v0, "multiAdsTag"

    const-string v1, "appodeal banner onBannerShowFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBannerShown()V
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v1, "ad_source"

    const-string v2, "ft_ma_appodeal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v1, "net_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 67
    const-string v4, "ft_banner_sdk_impression"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 69
    const-string v0, "multiAdsTag"

    const-string v1, "appodeal banner onBannerShown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
