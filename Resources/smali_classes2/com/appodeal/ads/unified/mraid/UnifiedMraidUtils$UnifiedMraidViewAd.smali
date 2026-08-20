.class Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;
.super Lcom/appodeal/ads/unified/UnifiedViewAd;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidAd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnifiedMraidViewAd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdParamsType::",
        "Lcom/appodeal/ads/unified/UnifiedViewAdParams;",
        "UnifiedAdCallbackType:",
        "Lcom/appodeal/ads/unified/UnifiedViewAdCallback;",
        "NetworkRequestParams:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/appodeal/ads/unified/UnifiedViewAd<",
        "TUnifiedAdParamsType;TUnifiedAdCallbackType;TNetworkRequestParams;>;",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidAd<",
        "TUnifiedAdParamsType;TUnifiedAdCallbackType;>;"
    }
.end annotation


# instance fields
.field private mraidView:Lcom/explorestack/iab/mraid/MraidView;

.field private final unifiedMraidViewAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid<",
            "TUnifiedAdParamsType;TUnifiedAdCallbackType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid<",
            "TUnifiedAdParamsType;TUnifiedAdCallbackType;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedViewAd;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->unifiedMraidViewAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid;

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedViewAdParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedViewAdCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;)V

    return-void
.end method

.method public load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;)V
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

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedViewAdParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedViewAdCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;)V

    return-void
.end method

.method public loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;)V
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
    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->unifiedMraidViewAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid;->createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils;->createMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;)Lcom/explorestack/iab/mraid/MraidView;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->mraidView:Lcom/explorestack/iab/mraid/MraidView;

    iget-object p2, p3, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->adm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/explorestack/iab/mraid/MraidView;->load(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->mraidView:Lcom/explorestack/iab/mraid/MraidView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->mraidView:Lcom/explorestack/iab/mraid/MraidView;

    :cond_0
    return-void
.end method

.method public bridge synthetic onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedViewAdParams;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedViewAdParams;)V

    return-void
.end method

.method public onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedViewAdParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TUnifiedAdParamsType;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/appodeal/ads/unified/UnifiedAd;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V

    iget-object p2, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->mraidView:Lcom/explorestack/iab/mraid/MraidView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/explorestack/iab/mraid/MraidView;->show(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic performMraidRequest(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedViewAdParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedViewAdCallback;

    invoke-virtual/range {p0 .. p5}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->performMraidRequest(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;Ljava/lang/String;)V

    return-void
.end method

.method public performMraidRequest(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;Ljava/lang/String;)V
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

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->unifiedMraidViewAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraid;->requestMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Ljava/lang/String;)V

    return-void
.end method
