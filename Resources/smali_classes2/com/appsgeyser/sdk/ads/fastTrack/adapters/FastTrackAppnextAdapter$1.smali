.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;
.super Lcom/appnext/banners/BannerListener;
.source "FastTrackAppnextAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->initBannerView(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

.field final synthetic val$bannerViewContainer:Landroid/view/ViewGroup;

.field final synthetic val$bannerViewRefreshRate:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;Landroid/view/ViewGroup;Ljava/lang/Integer;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->val$bannerViewContainer:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->val$bannerViewRefreshRate:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/appnext/banners/BannerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public adImpression()V
    .locals 2

    .line 179
    const-string v0, "fastTrackTag"

    const-string v1, "appnext banner adImpression"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-super {p0}, Lcom/appnext/banners/BannerListener;->adImpression()V

    return-void
.end method

.method synthetic lambda$onAdClicked$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter$1()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->access$602(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;Z)Z

    return-void
.end method

.method public onAdClicked()V
    .locals 5

    .line 185
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->access$600(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "banner id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->access$602(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;Z)Z

    .line 188
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    .line 192
    const-string v4, "ft_banner_sdk_click"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 194
    const-string v0, "fastTrackTag"

    const-string v1, "appnext banner onAdClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    invoke-super {p0}, Lcom/appnext/banners/BannerListener;->onAdClicked()V

    return-void
.end method

.method public onAdLoaded(Ljava/lang/String;Lcom/appnext/core/AppnextAdCreativeType;)V
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->val$bannerViewContainer:Landroid/view/ViewGroup;

    const-string v1, "fastTrackTag"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->access$300(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Lcom/appnext/banners/BannerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->val$bannerViewContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->access$300(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Lcom/appnext/banners/BannerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/appnext/banners/BannerView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->access$100(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "banner id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    invoke-static {v3}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "details"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    const/4 v4, 0x1

    .line 165
    const-string v5, "ft_banner_sdk_impression"

    invoke-virtual {v0, v5, v2, v3, v4}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 167
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->access$400(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->access$500(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->access$500(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->val$bannerViewRefreshRate:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 171
    :cond_0
    const-string v0, "appnext banner loaded, but bannerViewContainer is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    const-string v0, "appnext banner onAdLoaded"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0, p1, p2}, Lcom/appnext/banners/BannerListener;->onAdLoaded(Ljava/lang/String;Lcom/appnext/core/AppnextAdCreativeType;)V

    return-void
.end method

.method public onError(Lcom/appnext/core/AppnextError;)V
    .locals 5

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appnext banner onError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appnext/core/AppnextError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fastTrackTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->access$002(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;Z)Z

    .line 140
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->access$100(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 142
    invoke-virtual {p1}, Lcom/appnext/core/AppnextError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No Ads"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "banner id: "

    const-string v3, "details"

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    .line 145
    const-string v4, "ft_banner_sdk_nofill"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; error_desc: error code "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    invoke-virtual {p1}, Lcom/appnext/core/AppnextError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    .line 151
    const-string v4, "ft_banner_sdk_error"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 154
    :goto_0
    invoke-super {p0, p1}, Lcom/appnext/banners/BannerListener;->onError(Lcom/appnext/core/AppnextError;)V

    return-void
.end method
