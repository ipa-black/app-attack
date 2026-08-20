.class public final Lcom/appodeal/ads/adapters/meta/native_ad/a$b;
.super Lcom/appodeal/ads/adapters/meta/native_ad/a$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/meta/native_ad/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/adapters/meta/native_ad/a$d<",
        "Lcom/facebook/ads/NativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/facebook/ads/MediaView;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/NativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;-><init>(Lcom/facebook/ads/NativeAdBase;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final containsVideo()Z
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/adapters/meta/native_ad/a$b;->hasVideo()Z

    move-result v0

    return v0
.end method

.method public final hasVideo()Z
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->a:Lcom/facebook/ads/NativeAdBase;

    check-cast v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCreativeType()Lcom/facebook/ads/NativeAd$AdCreativeType;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/NativeAd$AdCreativeType;->VIDEO:Lcom/facebook/ads/NativeAd$AdCreativeType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onConfigureMediaView(Lcom/appodeal/ads/NativeMediaView;)Z
    .locals 3

    new-instance v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$b;->d:Lcom/facebook/ads/MediaView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeMediaView;->removeAllViews()V

    iget-object v1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$b;->d:Lcom/facebook/ads/MediaView;

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/NativeMediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->onDestroy()V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$b;->d:Lcom/facebook/ads/MediaView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$b;->d:Lcom/facebook/ads/MediaView;

    :cond_0
    return-void
.end method

.method public final onRegisterForInteraction(Lcom/appodeal/ads/NativeAdView;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->onRegisterForInteraction(Lcom/appodeal/ads/NativeAdView;)V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->a:Lcom/facebook/ads/NativeAdBase;

    check-cast v0, Lcom/facebook/ads/NativeAd;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$b;->d:Lcom/facebook/ads/MediaView;

    iget-object v2, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->b:Lcom/facebook/ads/MediaView;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getClickableViews()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    return-void
.end method
