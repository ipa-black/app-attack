.class Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;
.super Lcom/appodeal/ads/unified/UnifiedFullscreenAd;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidAd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnifiedMraidFullscreenAd"
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
        "TUnifiedAdParamsType;TUnifiedAdCallbackType;TNetworkRequestParams;>;",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidAd<",
        "TUnifiedAdParamsType;TUnifiedAdCallbackType;>;"
    }
.end annotation


# instance fields
.field private mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

.field private final unifiedMraidViewAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid<",
            "TUnifiedAdParamsType;TUnifiedAdCallbackType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid<",
            "TUnifiedAdParamsType;TUnifiedAdCallbackType;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedFullscreenAd;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->unifiedMraidViewAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid;

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V

    return-void
.end method

.method public load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "TUnifiedAdParamsType;TNetworkRequestParams;TUnifiedAdCallbackType;)V"
        }
    .end annotation

    check-cast p3, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, p3, p4, p0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils;->access$000(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidAd;)V

    return-void
.end method

.method public bridge synthetic loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V

    return-void
.end method

.method public loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TUnifiedAdParamsType;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            "TUnifiedAdCallbackType;)V"
        }
    .end annotation

    iget-object v0, p3, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->adm:Ljava/lang/String;

    invoke-static {v0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils;->isValidAdm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p4, p1}, Lcom/appodeal/ads/unified/UnifiedAdCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->unifiedMraidViewAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid;->createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils;->createMraidInterstitial(Landroid/content/Context;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;)Lcom/explorestack/iab/mraid/MraidInterstitial;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

    iget-object p2, p3, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->adm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/explorestack/iab/mraid/MraidInterstitial;->load(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->destroy()V

    :cond_0
    return-void
.end method

.method public bridge synthetic performMraidRequest(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    invoke-virtual/range {p0 .. p5}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->performMraidRequest(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;Ljava/lang/String;)V

    return-void
.end method

.method public performMraidRequest(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TUnifiedAdParamsType;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            "TUnifiedAdCallbackType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->unifiedMraidViewAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraid;->requestMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 1

    iget-object p2, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->unifiedMraidViewAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid;

    invoke-interface {v0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid;->getMraidType()Lcom/explorestack/iab/mraid/MraidType;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/explorestack/iab/mraid/MraidActivity;->show(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidInterstitial;Lcom/explorestack/iab/mraid/MraidType;)V

    return-void
.end method
