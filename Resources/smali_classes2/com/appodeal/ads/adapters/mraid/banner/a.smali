.class public final Lcom/appodeal/ads/adapters/mraid/banner/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback<",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/unified/UnifiedBannerParams;

.field public final synthetic b:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

.field public final synthetic c:Lcom/appodeal/ads/adapters/mraid/banner/b;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/adapters/mraid/banner/b;Lcom/appodeal/ads/unified/UnifiedBannerParams;Lcom/appodeal/ads/unified/UnifiedBannerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/adapters/mraid/banner/a;->c:Lcom/appodeal/ads/adapters/mraid/banner/b;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/mraid/banner/a;->a:Lcom/appodeal/ads/unified/UnifiedBannerParams;

    iput-object p3, p0, Lcom/appodeal/ads/adapters/mraid/banner/a;->b:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/adapters/mraid/banner/a;->b:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/UnifiedBannerCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onSuccess(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/adapters/mraid/banner/a;->c:Lcom/appodeal/ads/adapters/mraid/banner/b;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/mraid/banner/a;->a:Lcom/appodeal/ads/unified/UnifiedBannerParams;

    iget-object v2, p0, Lcom/appodeal/ads/adapters/mraid/banner/a;->b:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedBannerParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedBannerCallback;)V

    return-void
.end method
