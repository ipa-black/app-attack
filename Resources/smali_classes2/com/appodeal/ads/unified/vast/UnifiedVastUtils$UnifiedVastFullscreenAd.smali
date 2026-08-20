.class Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;
.super Lcom/appodeal/ads/unified/UnifiedFullscreenAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/unified/vast/UnifiedVastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnifiedVastFullscreenAd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdParamsType::",
        "Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;",
        "UnifiedAdCallbackType:",
        "Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;",
        "NetworkRequestParams:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/appodeal/ads/unified/UnifiedFullscreenAd<",
        "TUnifiedAdParamsType;TUnifiedAdCallbackType;TNetworkRequestParams;>;"
    }
.end annotation


# instance fields
.field private final unifiedVastAd:Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedFullscreenVast;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedFullscreenVast<",
            "TUnifiedAdParamsType;TUnifiedAdCallbackType;>;"
        }
    .end annotation
.end field

.field private vastListener:Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener<",
            "TUnifiedAdCallbackType;>;"
        }
    .end annotation
.end field

.field public vastRequest:Lcom/explorestack/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedFullscreenVast;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedFullscreenVast<",
            "TUnifiedAdParamsType;TUnifiedAdCallbackType;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedFullscreenAd;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->unifiedVastAd:Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedFullscreenVast;

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V

    return-void
.end method

.method public load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "TUnifiedAdParamsType;TNetworkRequestParams;TUnifiedAdCallbackType;)V"
        }
    .end annotation

    move-object v3, p3

    check-cast v3, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, v3, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->adm:Ljava/lang/String;

    invoke-static {p1}, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils;->access$000(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1, p2, v3, p4}, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->loadVast(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->unifiedVastAd:Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedFullscreenVast;

    iget-object v5, v3, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->vastUrl:Ljava/lang/String;

    move-object v2, p2

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedFullscreenVast;->performVastRequest(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public loadVast(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TUnifiedAdParamsType;",
            "Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;",
            "TUnifiedAdCallbackType;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->unifiedVastAd:Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedFullscreenVast;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedFullscreenVast;->createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;

    move-result-object p4

    iput-object p4, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->vastListener:Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;

    iget-object p4, p3, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->vastUrl:Ljava/lang/String;

    invoke-static {p2, p3, p4}, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils;->access$100(Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Ljava/lang/String;)Lcom/explorestack/iab/vast/VastRequest;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    iget-object p3, p3, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->adm:Ljava/lang/String;

    iget-object p4, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->vastListener:Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;

    invoke-virtual {p2, p1, p3, p4}, Lcom/explorestack/iab/vast/VastRequest;->loadVideoWithData(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TUnifiedAdCallbackType;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->checkFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    iget-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->unifiedVastAd:Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedFullscreenVast;

    invoke-interface {v0}, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedFullscreenVast;->getVideoType()Lcom/explorestack/iab/vast/VideoType;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->vastListener:Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;

    invoke-virtual {p2, p1, v0, v1}, Lcom/explorestack/iab/vast/VastRequest;->display(Landroid/content/Context;Lcom/explorestack/iab/vast/VideoType;Lcom/explorestack/iab/vast/VastActivityListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedAdCallback;->onAdShowFailed()V

    :goto_0
    return-void
.end method
