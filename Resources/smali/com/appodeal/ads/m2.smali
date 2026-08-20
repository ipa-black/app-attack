.class public final Lcom/appodeal/ads/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/utils/d0$b;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/l2;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/l2;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/m2;->a:Lcom/appodeal/ads/l2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lcom/appodeal/ads/m2;->a:Lcom/appodeal/ads/l2;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lcom/appodeal/ads/l2;->w:Z

    .line 2
    iget-object v1, v0, Lcom/appodeal/ads/l2;->n:Lcom/appodeal/ads/NativeAdView;

    .line 3
    iget-object v2, v0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    .line 4
    invoke-virtual {v2, v1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onAdImpression(Landroid/view/View;)V

    iget-object v1, v0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    invoke-virtual {v1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getImpressionNotifyUrls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/l2;->a(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/appodeal/ads/m2;->a:Lcom/appodeal/ads/l2;

    .line 6
    iget-object v1, v0, Lcom/appodeal/ads/l2;->c:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    .line 7
    iget-object v0, v0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    .line 8
    invoke-virtual {v1, v0}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdShown(Lcom/appodeal/ads/unified/UnifiedNativeAd;)V

    iget-object v0, p0, Lcom/appodeal/ads/m2;->a:Lcom/appodeal/ads/l2;

    .line 9
    iget-object v1, v0, Lcom/appodeal/ads/l2;->n:Lcom/appodeal/ads/NativeAdView;

    .line 10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/appodeal/ads/NativeAdView;->getTitleView()Landroid/view/View;

    move-result-object v5

    const-string v6, "Title"

    if-nez v5, :cond_0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/appodeal/ads/NativeAdView;->getTitleView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1}, Lcom/appodeal/ads/NativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v5

    const-string v6, "CallToAction"

    if-nez v5, :cond_1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/appodeal/ads/NativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1}, Lcom/appodeal/ads/NativeAdView;->getNativeIconView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lcom/appodeal/ads/NativeAdView;->getNativeMediaView()Lcom/appodeal/ads/NativeMediaView;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, "NativeIconView/NativeMediaView"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    sget-object v5, Lcom/appodeal/ads/Native;->c:Lcom/appodeal/ads/Native$MediaAssetType;

    sget-object v6, Lcom/appodeal/ads/Native$MediaAssetType;->IMAGE:Lcom/appodeal/ads/Native$MediaAssetType;

    const-string v7, "NativeIconView"

    if-eq v5, v6, :cond_3

    invoke-virtual {v1}, Lcom/appodeal/ads/NativeAdView;->getNativeIconView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/appodeal/ads/NativeAdView;->getNativeIconView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    sget-object v5, Lcom/appodeal/ads/Native;->c:Lcom/appodeal/ads/Native$MediaAssetType;

    sget-object v6, Lcom/appodeal/ads/Native$MediaAssetType;->ICON:Lcom/appodeal/ads/Native$MediaAssetType;

    const-string v7, "NativeMediaView"

    if-eq v5, v6, :cond_5

    invoke-virtual {v1}, Lcom/appodeal/ads/NativeAdView;->getNativeMediaView()Lcom/appodeal/ads/NativeMediaView;

    move-result-object v5

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/appodeal/ads/NativeAdView;->getNativeMediaView()Lcom/appodeal/ads/NativeMediaView;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 11
    iget-object v0, v0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    invoke-virtual {v0, v5}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->obtainProviderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 12
    invoke-virtual {v1}, Lcom/appodeal/ads/NativeAdView;->getProviderView()Landroid/view/View;

    move-result-object v0

    const-string v5, "ProviderView"

    if-nez v0, :cond_7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lcom/appodeal/ads/NativeAdView;->getProviderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/appodeal/ads/utils/exception_handler/a;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Required assets: %s are not added to NativeAdView"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/appodeal/ads/utils/exception_handler/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/appodeal/ads/utils/exception_handler/a;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Non necessary assets: %s are not added to NativeAdView"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/appodeal/ads/utils/exception_handler/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_a
    invoke-static {v1}, Lcom/appodeal/ads/n5;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/l2;->a(Landroid/graphics/Rect;Landroid/view/View;Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Lcom/appodeal/ads/utils/exception_handler/a;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Required assets: %s are not visible or not found"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/appodeal/ads/utils/exception_handler/a;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/m2;->a:Lcom/appodeal/ads/l2;

    .line 1
    iget-object v1, v0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    .line 2
    invoke-virtual {v1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->onAdFinish()V

    iget-object v1, v0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    invoke-virtual {v1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getFinishNotifyUrls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/l2;->a(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/m2;->a:Lcom/appodeal/ads/l2;

    .line 4
    iget-object v1, v0, Lcom/appodeal/ads/l2;->c:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    .line 5
    iget-object v0, v0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    .line 6
    invoke-virtual {v1, v0}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdFinished(Lcom/appodeal/ads/unified/UnifiedNativeAd;)V

    return-void
.end method
