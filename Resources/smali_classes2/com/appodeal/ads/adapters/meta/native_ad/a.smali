.class public final Lcom/appodeal/ads/adapters/meta/native_ad/a;
.super Lcom/appodeal/ads/unified/UnifiedNative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/meta/native_ad/a$b;,
        Lcom/appodeal/ads/adapters/meta/native_ad/a$c;,
        Lcom/appodeal/ads/adapters/meta/native_ad/a$d;,
        Lcom/appodeal/ads/adapters/meta/native_ad/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/UnifiedNative<",
        "Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/adapters/meta/native_ad/a$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedNative;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/appodeal/ads/adapters/meta/native_ad/a;)Lcom/appodeal/ads/adapters/meta/native_ad/a$d;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a;->a:Lcom/appodeal/ads/adapters/meta/native_ad/a$d;

    return-object p0
.end method

.method public static a(Lcom/appodeal/ads/adapters/meta/native_ad/a;Lcom/facebook/ads/NativeAdBase$Image;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic a(Lcom/appodeal/ads/adapters/meta/native_ad/a;Lcom/appodeal/ads/adapters/meta/native_ad/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a;->a:Lcom/appodeal/ads/adapters/meta/native_ad/a$d;

    return-void
.end method


# virtual methods
.method public final load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 1

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedNativeParams;

    check-cast p3, Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    .line 1
    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p2}, Lcom/appodeal/ads/unified/UnifiedNativeParams;->getMediaAssetType()Lcom/appodeal/ads/Native$MediaAssetType;

    move-result-object p2

    sget-object v0, Lcom/appodeal/ads/Native$MediaAssetType;->ICON:Lcom/appodeal/ads/Native$MediaAssetType;

    if-ne p2, v0, :cond_0

    iget-object p2, p3, Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;->metaKey:Ljava/lang/String;

    .line 2
    new-instance p3, Lcom/facebook/ads/NativeBannerAd;

    invoke-direct {p3, p1, p2}, Lcom/facebook/ads/NativeBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p3, Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;->metaKey:Ljava/lang/String;

    .line 4
    new-instance p3, Lcom/facebook/ads/NativeAd;

    invoke-direct {p3, p1, p2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    :goto_0
    new-instance p1, Lcom/appodeal/ads/adapters/meta/native_ad/a$a;

    invoke-direct {p1, p0, p4}, Lcom/appodeal/ads/adapters/meta/native_ad/a$a;-><init>(Lcom/appodeal/ads/adapters/meta/native_ad/a;Lcom/appodeal/ads/unified/UnifiedNativeCallback;)V

    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdBase;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    invoke-interface {p1, p2}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withMediaCacheFlag(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/facebook/ads/NativeAdBase;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a;->a:Lcom/appodeal/ads/adapters/meta/native_ad/a$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/adapters/meta/native_ad/a$d;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a;->a:Lcom/appodeal/ads/adapters/meta/native_ad/a$d;

    :cond_0
    return-void
.end method
