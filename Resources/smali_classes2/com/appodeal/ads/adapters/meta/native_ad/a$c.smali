.class public final Lcom/appodeal/ads/adapters/meta/native_ad/a$c;
.super Lcom/appodeal/ads/adapters/meta/native_ad/a$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/meta/native_ad/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/adapters/meta/native_ad/a$d<",
        "Lcom/facebook/ads/NativeBannerAd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/NativeBannerAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;-><init>(Lcom/facebook/ads/NativeAdBase;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onRegisterForInteraction(Lcom/appodeal/ads/NativeAdView;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->onRegisterForInteraction(Lcom/appodeal/ads/NativeAdView;)V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->a:Lcom/facebook/ads/NativeAdBase;

    check-cast v0, Lcom/facebook/ads/NativeBannerAd;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->b:Lcom/facebook/ads/MediaView;

    invoke-virtual {p1}, Lcom/appodeal/ads/NativeAdView;->getClickableViews()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    return-void
.end method
