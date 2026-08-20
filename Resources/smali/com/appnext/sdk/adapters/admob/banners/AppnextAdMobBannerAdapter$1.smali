.class Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter$1;
.super Lcom/appnext/banners/BannerListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;

.field final synthetic val$listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method constructor <init>(Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter$1;->this$0:Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;

    iput-object p2, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-direct {p0}, Lcom/appnext/banners/BannerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public adImpression()V
    .locals 0

    .line 124
    invoke-super {p0}, Lcom/appnext/banners/BannerListener;->adImpression()V

    return-void
.end method

.method public onAdClicked()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdClicked()V

    .line 101
    invoke-super {p0}, Lcom/appnext/banners/BannerListener;->onAdClicked()V

    return-void
.end method

.method public onAdLoaded(Ljava/lang/String;Lcom/appnext/core/AppnextAdCreativeType;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    iget-object v1, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter$1;->this$0:Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;

    iget-object v1, v1, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdLoaded(Landroid/view/View;)V

    .line 95
    invoke-super {p0, p1, p2}, Lcom/appnext/banners/BannerListener;->onAdLoaded(Ljava/lang/String;Lcom/appnext/core/AppnextAdCreativeType;)V

    return-void
.end method

.method public onError(Lcom/appnext/core/AppnextError;)V
    .locals 5

    .line 106
    invoke-super {p0, p1}, Lcom/appnext/banners/BannerListener;->onError(Lcom/appnext/core/AppnextError;)V

    .line 107
    invoke-virtual {p1}, Lcom/appnext/core/AppnextError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Too Slow Connection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "Timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "Connection Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "No Ads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 117
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {p1, v3}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    return-void

    .line 111
    :pswitch_0
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {p1, v2}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    return-void

    .line 114
    :pswitch_1
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobBannerAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {p1, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x74ba422f -> :sswitch_3
        -0x580965ba -> :sswitch_2
        0x14e7e541 -> :sswitch_1
        0x32510371 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
