.class abstract Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;
.super Lio/bidmachine/nativead/NativeNetworkAdapter;
.source "MetaAudienceNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/ads/NativeAdBase;",
        ">",
        "Lio/bidmachine/nativead/NativeNetworkAdapter;"
    }
.end annotation


# instance fields
.field nativeAdBase:Lcom/facebook/ads/NativeAdBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/NativeAdBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lio/bidmachine/nativead/NativeNetworkAdapter;-><init>()V

    .line 151
    iput-object p1, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    .line 153
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;->setTitle(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    .line 154
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;->setDescription(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    .line 155
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;->setCallToAction(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    .line 157
    new-instance v0, Lio/bidmachine/ImageDataImpl;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getPreloadedIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/ImageDataImpl;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 158
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/ImageDataImpl;->setRemoteUrl(Ljava/lang/String;)Lio/bidmachine/ImageDataImpl;

    .line 162
    :cond_0
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;->setIcon(Lio/bidmachine/ImageData;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    .line 164
    new-instance v0, Lio/bidmachine/ImageDataImpl;

    invoke-direct {v0}, Lio/bidmachine/ImageDataImpl;-><init>()V

    .line 165
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/ImageDataImpl;->setRemoteUrl(Ljava/lang/String;)Lio/bidmachine/ImageDataImpl;

    .line 169
    :cond_1
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;->setMainImage(Lio/bidmachine/ImageData;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    return-void
.end method


# virtual methods
.method public createProviderView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 174
    iget-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 177
    :cond_0
    new-instance v0, Lcom/facebook/ads/AdOptionsView;

    iget-object v2, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 178
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/AdOptionsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 193
    iget-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->destroy()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    :cond_0
    return-void
.end method

.method public unregisterNative()V
    .locals 1

    .line 185
    iget-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->unregisterView()V

    return-void
.end method
