.class public final Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;
.super Lcom/appodeal/ads/unified/UnifiedNativeAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/ads/nativead/NativeAd;

.field public b:Lcom/google/android/gms/ads/nativead/NativeAdView;

.field public c:Lcom/google/android/gms/ads/nativead/MediaView;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    move-object v0, p0

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/unified/UnifiedNativeAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->a:Lcom/google/android/gms/ads/nativead/NativeAd;

    return-void
.end method


# virtual methods
.method public final containsVideo()Z
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->hasVideo()Z

    move-result v0

    return v0
.end method

.method public final hasVideo()Z
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->a:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->a:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/MediaContent;->hasVideoContent()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigure(Lcom/appodeal/ads/NativeAdView;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onConfigure(Lcom/appodeal/ads/NativeAdView;)V

    new-instance v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->b:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getTitleView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->b:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getDescriptionView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->b:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getNativeIconView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setIconView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->b:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->b:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getRatingView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setStarRatingView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->b:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->c:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->b:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/NativeAdView;->configureContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final onConfigureMediaView(Lcom/appodeal/ads/NativeMediaView;)Z
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/nativead/MediaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->c:Lcom/google/android/gms/ads/nativead/MediaView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeMediaView;->removeAllViews()V

    iget-object v1, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->c:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/NativeMediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onDestroy()V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->a:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->b:Lcom/google/android/gms/ads/nativead/NativeAdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->destroy()V

    :cond_0
    return-void
.end method

.method public final onRegisterForInteraction(Lcom/appodeal/ads/NativeAdView;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onRegisterForInteraction(Lcom/appodeal/ads/NativeAdView;)V

    iget-object p1, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->b:Lcom/google/android/gms/ads/nativead/NativeAdView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$b;->a:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    :cond_0
    return-void
.end method
