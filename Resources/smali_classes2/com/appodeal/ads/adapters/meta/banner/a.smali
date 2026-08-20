.class public final Lcom/appodeal/ads/adapters/meta/banner/a;
.super Lcom/appodeal/ads/unified/UnifiedBanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/meta/banner/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/UnifiedBanner<",
        "Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/facebook/ads/AdSize;

.field public b:Lcom/facebook/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedBanner;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/appodeal/ads/adapters/meta/banner/a;)Lcom/facebook/ads/AdView;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/adapters/meta/banner/a;->b:Lcom/facebook/ads/AdView;

    return-object p0
.end method

.method public static synthetic b(Lcom/appodeal/ads/adapters/meta/banner/a;)Lcom/facebook/ads/AdSize;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/adapters/meta/banner/a;->a:Lcom/facebook/ads/AdSize;

    return-object p0
.end method


# virtual methods
.method public final load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 1

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedBannerParams;

    check-cast p3, Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    .line 1
    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/appodeal/ads/unified/UnifiedBannerParams;->needLeaderBoard(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    :goto_0
    iput-object p2, p0, Lcom/appodeal/ads/adapters/meta/banner/a;->a:Lcom/facebook/ads/AdSize;

    new-instance p2, Lcom/facebook/ads/AdView;

    iget-object p3, p3, Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;->metaKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/banner/a;->a:Lcom/facebook/ads/AdSize;

    invoke-direct {p2, p1, p3, v0}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object p2, p0, Lcom/appodeal/ads/adapters/meta/banner/a;->b:Lcom/facebook/ads/AdView;

    new-instance p1, Lcom/appodeal/ads/adapters/meta/banner/a$a;

    invoke-direct {p1, p0, p4}, Lcom/appodeal/ads/adapters/meta/banner/a$a;-><init>(Lcom/appodeal/ads/adapters/meta/banner/a;Lcom/appodeal/ads/unified/UnifiedBannerCallback;)V

    invoke-virtual {p2}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/banner/a;->b:Lcom/facebook/ads/AdView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    iput-object v1, p0, Lcom/appodeal/ads/adapters/meta/banner/a;->b:Lcom/facebook/ads/AdView;

    :cond_0
    iput-object v1, p0, Lcom/appodeal/ads/adapters/meta/banner/a;->a:Lcom/facebook/ads/AdSize;

    return-void
.end method
