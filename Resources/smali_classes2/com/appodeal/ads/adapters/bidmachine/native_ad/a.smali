.class public final Lcom/appodeal/ads/adapters/bidmachine/native_ad/a;
.super Lcom/appodeal/ads/unified/UnifiedNative;
.source "BidMachineNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;,
        Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/UnifiedNative<",
        "Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lio/bidmachine/nativead/NativeRequest;

.field public b:Lio/bidmachine/nativead/NativeAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedNative;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/appodeal/ads/unified/UnifiedNativeParams;

    check-cast p3, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v1, Lcom/appodeal/ads/Native$NativeAdType;->Video:Lcom/appodeal/ads/Native$NativeAdType;

    invoke-interface {p2}, Lcom/appodeal/ads/unified/UnifiedNativeParams;->getNativeAdType()Lcom/appodeal/ads/Native$NativeAdType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 4
    sget-object v1, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-interface {p2}, Lcom/appodeal/ads/unified/UnifiedNativeParams;->getMediaAssetType()Lcom/appodeal/ads/Native$MediaAssetType;

    move-result-object v1

    sget-object v2, Lcom/appodeal/ads/Native$MediaAssetType;->ICON:Lcom/appodeal/ads/Native$MediaAssetType;

    if-ne v1, v2, :cond_1

    .line 7
    sget-object p2, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p2}, Lcom/appodeal/ads/unified/UnifiedNativeParams;->getMediaAssetType()Lcom/appodeal/ads/Native$MediaAssetType;

    move-result-object p2

    sget-object v1, Lcom/appodeal/ads/Native$MediaAssetType;->IMAGE:Lcom/appodeal/ads/Native$MediaAssetType;

    if-ne p2, v1, :cond_2

    .line 9
    sget-object p2, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    sget-object p2, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object p2, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :goto_0
    new-instance p2, Lio/bidmachine/nativead/NativeRequest$Builder;

    invoke-direct {p2}, Lio/bidmachine/nativead/NativeRequest$Builder;-><init>()V

    .line 15
    invoke-virtual {p3, p2}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;->prepareRequest(Lio/bidmachine/models/RequestBuilder;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p2

    check-cast p2, Lio/bidmachine/nativead/NativeRequest$Builder;

    const/4 p3, 0x0

    new-array p3, p3, [Lio/bidmachine/MediaAssetType;

    .line 16
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lio/bidmachine/MediaAssetType;

    invoke-virtual {p2, p3}, Lio/bidmachine/nativead/NativeRequest$Builder;->setMediaAssetTypes([Lio/bidmachine/MediaAssetType;)Lio/bidmachine/nativead/NativeRequest$Builder;

    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lio/bidmachine/nativead/NativeRequest$Builder;->build()Lio/bidmachine/AdRequest;

    move-result-object p2

    check-cast p2, Lio/bidmachine/nativead/NativeRequest;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a;->a:Lio/bidmachine/nativead/NativeRequest;

    .line 18
    new-instance p2, Lio/bidmachine/nativead/NativeAd;

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/bidmachine/nativead/NativeAd;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$b;

    invoke-direct {p1, p4}, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$b;-><init>(Lcom/appodeal/ads/unified/UnifiedNativeCallback;)V

    .line 19
    invoke-virtual {p2, p1}, Lio/bidmachine/nativead/NativeAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    move-result-object p1

    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    iget-object p2, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a;->a:Lio/bidmachine/nativead/NativeRequest;

    .line 20
    invoke-virtual {p1, p2}, Lio/bidmachine/nativead/NativeAd;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;

    move-result-object p1

    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    iput-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a;->b:Lio/bidmachine/nativead/NativeAd;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a;->a:Lio/bidmachine/nativead/NativeRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeRequest;->destroy()V

    .line 3
    iput-object v1, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a;->a:Lio/bidmachine/nativead/NativeRequest;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a;->b:Lio/bidmachine/nativead/NativeAd;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAd;->destroy()V

    .line 7
    iput-object v1, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a;->b:Lio/bidmachine/nativead/NativeAd;

    :cond_1
    return-void
.end method

.method public final onMediationLoss(Ljava/lang/String;D)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/appodeal/ads/unified/UnifiedAd;->onMediationLoss(Ljava/lang/String;D)V

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a;->a:Lio/bidmachine/nativead/NativeRequest;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/nativead/NativeRequest;->notifyMediationLoss(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-void
.end method

.method public final onMediationWin()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedAd;->onMediationWin()V

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a;->a:Lio/bidmachine/nativead/NativeRequest;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeRequest;->notifyMediationWin()V

    :cond_0
    return-void
.end method
