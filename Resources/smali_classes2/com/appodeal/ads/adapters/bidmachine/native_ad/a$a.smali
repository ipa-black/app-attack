.class public final Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;
.super Lcom/appodeal/ads/unified/UnifiedNativeAd;
.source "BidMachineNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/bidmachine/native_ad/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/nativead/NativeAd;

.field public b:Lio/bidmachine/nativead/view/NativeAdContentLayout;

.field public c:Lio/bidmachine/nativead/view/NativeMediaView;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/NativeAd;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->getMainImage()Lio/bidmachine/ImageData;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->getMainImage()Lio/bidmachine/ImageData;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/ImageData;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 5
    :goto_0
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->getIcon()Lio/bidmachine/ImageData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->getIcon()Lio/bidmachine/ImageData;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/ImageData;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, v4

    .line 6
    :goto_1
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->getRating()F

    move-result v0

    const/4 v7, 0x0

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, v4

    :goto_2
    move-object v0, p0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 7
    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/unified/UnifiedNativeAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->a:Lio/bidmachine/nativead/NativeAd;

    return-void
.end method


# virtual methods
.method public final containsVideo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->a:Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAd;->hasVideo()Z

    move-result v0

    return v0
.end method

.method public final hasVideo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->a:Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAd;->hasVideo()Z

    move-result v0

    return v0
.end method

.method public final onConfigure(Lcom/appodeal/ads/NativeAdView;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onConfigure(Lcom/appodeal/ads/NativeAdView;)V

    .line 2
    new-instance v0, Lio/bidmachine/nativead/view/NativeAdContentLayout;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/nativead/view/NativeAdContentLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->b:Lio/bidmachine/nativead/view/NativeAdContentLayout;

    .line 3
    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getTitleView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setTitleView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->b:Lio/bidmachine/nativead/view/NativeAdContentLayout;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getDescriptionView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setDescriptionView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->b:Lio/bidmachine/nativead/view/NativeAdContentLayout;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getNativeIconView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setIconView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->b:Lio/bidmachine/nativead/view/NativeAdContentLayout;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setCallToActionView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->b:Lio/bidmachine/nativead/view/NativeAdContentLayout;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getRatingView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setRatingView(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->b:Lio/bidmachine/nativead/view/NativeAdContentLayout;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getProviderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setProviderView(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->b:Lio/bidmachine/nativead/view/NativeAdContentLayout;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->c:Lio/bidmachine/nativead/view/NativeMediaView;

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setMediaView(Lio/bidmachine/nativead/view/NativeMediaView;)V

    .line 10
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->b:Lio/bidmachine/nativead/view/NativeAdContentLayout;

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/NativeAdView;->configureContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final onConfigureMediaView(Lcom/appodeal/ads/NativeMediaView;)Z
    .locals 3

    .line 1
    new-instance v0, Lio/bidmachine/nativead/view/NativeMediaView;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/nativead/view/NativeMediaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->c:Lio/bidmachine/nativead/view/NativeMediaView;

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5
    invoke-virtual {p1}, Lcom/appodeal/ads/NativeMediaView;->removeAllViews()V

    .line 6
    iget-object v1, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->c:Lio/bidmachine/nativead/view/NativeMediaView;

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/NativeMediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->a:Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAd;->destroy()V

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->b:Lio/bidmachine/nativead/view/NativeAdContentLayout;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->destroy()V

    :cond_0
    return-void
.end method

.method public final onRegisterForInteraction(Lcom/appodeal/ads/NativeAdView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onRegisterForInteraction(Lcom/appodeal/ads/NativeAdView;)V

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->b:Lio/bidmachine/nativead/view/NativeAdContentLayout;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->a:Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {p1, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->bind(Lio/bidmachine/nativead/NativeAd;)V

    .line 4
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->b:Lio/bidmachine/nativead/view/NativeAdContentLayout;

    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;->a:Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {p1, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->registerViewForInteraction(Lio/bidmachine/nativead/NativeAd;)V

    :cond_0
    return-void
.end method
