.class final Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BannerAdapter;
.super Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;
.source "MetaAudienceNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BannerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter<",
        "Lcom/facebook/ads/NativeBannerAd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/NativeBannerAd;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;-><init>(Lcom/facebook/ads/NativeAdBase;)V

    return-void
.end method


# virtual methods
.method public registerNative(Landroid/view/ViewGroup;Landroid/widget/ImageView;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/widget/ImageView;",
            "Lio/bidmachine/nativead/view/NativeMediaView;",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;->registerNative(Landroid/view/ViewGroup;Landroid/widget/ImageView;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)V

    .line 214
    iget-object p3, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BannerAdapter;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 218
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 220
    :goto_0
    iget-object p4, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BannerAdapter;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    check-cast p4, Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {p4, p1, p2, p3}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    return-void
.end method
