.class final Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$MediaViewAdapter;
.super Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;
.source "MetaAudienceNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter<",
        "Lcom/facebook/ads/NativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field private mediaView:Lcom/facebook/ads/MediaView;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/NativeAd;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;-><init>(Lcom/facebook/ads/NativeAdBase;)V

    return-void
.end method


# virtual methods
.method public configureMediaView(Lio/bidmachine/nativead/view/NativeMediaView;)Z
    .locals 3

    .line 236
    iget-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$MediaViewAdapter;->mediaView:Lcom/facebook/ads/MediaView;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {p1}, Lio/bidmachine/nativead/view/NativeMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$MediaViewAdapter;->mediaView:Lcom/facebook/ads/MediaView;

    .line 238
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$MediaViewAdapter;->mediaView:Lcom/facebook/ads/MediaView;

    invoke-static {v0}, Lio/bidmachine/utils/ViewHelper;->removeViewFromParent(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$MediaViewAdapter;->mediaView:Lcom/facebook/ads/MediaView;

    invoke-virtual {p1, v0}, Lio/bidmachine/nativead/view/NativeMediaView;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public destroy()V
    .locals 1

    .line 272
    invoke-super {p0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;->destroy()V

    .line 274
    iget-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$MediaViewAdapter;->mediaView:Lcom/facebook/ads/MediaView;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->destroy()V

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$MediaViewAdapter;->mediaView:Lcom/facebook/ads/MediaView;

    :cond_0
    return-void
.end method

.method public hasVideo()Z
    .locals 3

    .line 264
    iget-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$MediaViewAdapter;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 267
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$MediaViewAdapter;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    check-cast v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCreativeType()Lcom/facebook/ads/NativeAd$AdCreativeType;

    move-result-object v0

    sget-object v2, Lcom/facebook/ads/NativeAd$AdCreativeType;->VIDEO:Lcom/facebook/ads/NativeAd$AdCreativeType;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public registerNative(Landroid/view/ViewGroup;Landroid/widget/ImageView;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)V
    .locals 1
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

    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;->registerNative(Landroid/view/ViewGroup;Landroid/widget/ImageView;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)V

    .line 253
    iget-object p3, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$MediaViewAdapter;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 257
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 259
    :goto_0
    iget-object p4, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$MediaViewAdapter;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    check-cast p4, Lcom/facebook/ads/NativeAd;

    iget-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$MediaViewAdapter;->mediaView:Lcom/facebook/ads/MediaView;

    invoke-virtual {p4, p1, v0, p2, p3}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    return-void
.end method
