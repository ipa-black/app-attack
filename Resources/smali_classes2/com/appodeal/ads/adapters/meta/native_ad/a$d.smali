.class public Lcom/appodeal/ads/adapters/meta/native_ad/a$d;
.super Lcom/appodeal/ads/unified/UnifiedNativeAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/meta/native_ad/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/ads/NativeAdBase;",
        ">",
        "Lcom/appodeal/ads/unified/UnifiedNativeAd;"
    }
.end annotation


# instance fields
.field public final a:Lcom/facebook/ads/NativeAdBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Lcom/facebook/ads/MediaView;

.field public c:Lcom/facebook/ads/NativeAdLayout;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/NativeAdBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/unified/UnifiedNativeAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->a:Lcom/facebook/ads/NativeAdBase;

    return-void
.end method


# virtual methods
.method public final getRating()Ljava/lang/Float;
    .locals 5

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->a:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdStarRating()Lcom/facebook/ads/NativeAdBase$Rating;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase$Rating;->getValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase$Rating;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getRating()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final obtainIconView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->b:Lcom/facebook/ads/MediaView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/MediaView;

    invoke-direct {v0, p1}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->b:Lcom/facebook/ads/MediaView;

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->b:Lcom/facebook/ads/MediaView;

    return-object p1
.end method

.method public final obtainProviderView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    new-instance v0, Lcom/facebook/ads/AdOptionsView;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->a:Lcom/facebook/ads/NativeAdBase;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1}, Lcom/appodeal/ads/unified/UnifiedAdUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p1}, Lcom/appodeal/ads/unified/UnifiedAdUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result p1

    mul-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public final onConfigure(Lcom/appodeal/ads/NativeAdView;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onConfigure(Lcom/appodeal/ads/NativeAdView;)V

    new-instance v0, Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->c:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/NativeAdView;->configureContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onDestroy()V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->a:Lcom/facebook/ads/NativeAdBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->b:Lcom/facebook/ads/MediaView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->destroy()V

    iput-object v1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->b:Lcom/facebook/ads/MediaView;

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->c:Lcom/facebook/ads/NativeAdLayout;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->c:Lcom/facebook/ads/NativeAdLayout;

    :cond_2
    return-void
.end method

.method public onRegisterForInteraction(Lcom/appodeal/ads/NativeAdView;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onRegisterForInteraction(Lcom/appodeal/ads/NativeAdView;)V

    return-void
.end method

.method public final onUnregisterForInteraction()V
    .locals 1

    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onUnregisterForInteraction()V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->a:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->unregisterView()V

    return-void
.end method
