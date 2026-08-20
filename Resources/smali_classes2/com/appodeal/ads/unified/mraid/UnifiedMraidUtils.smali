.class Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;,
        Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;,
        Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidAd;,
        Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraid;,
        Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid;,
        Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidAd;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils;->performLoadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidAd;)V

    return-void
.end method

.method public static createMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;)Lcom/explorestack/iab/mraid/MraidView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener<",
            "*>;)",
            "Lcom/explorestack/iab/mraid/MraidView;"
        }
    .end annotation

    new-instance v0, Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-direct {v0}, Lcom/explorestack/iab/mraid/MraidView$Builder;-><init>()V

    iget-object v1, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setBaseUrl(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidView$Builder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->preload:Z

    invoke-static {v1}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils;->getCacheControlByPreload(Z)Lcom/explorestack/iab/CacheControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setCacheControl(Lcom/explorestack/iab/CacheControl;)Lcom/explorestack/iab/mraid/MraidView$Builder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->isTag:Z

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setIsTag(Z)Lcom/explorestack/iab/mraid/MraidView$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setListener(Lcom/explorestack/iab/mraid/MraidViewListener;)Lcom/explorestack/iab/mraid/MraidView$Builder;

    move-result-object p2

    iget-object p1, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->pageFinishedScript:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setPageFinishedScript(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidView$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/iab/mraid/MraidView$Builder;->build(Landroid/content/Context;)Lcom/explorestack/iab/mraid/MraidView;

    move-result-object p0

    return-object p0
.end method

.method public static createMraidInterstitial(Landroid/content/Context;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;)Lcom/explorestack/iab/mraid/MraidInterstitial;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener<",
            "*>;)",
            "Lcom/explorestack/iab/mraid/MraidInterstitial;"
        }
    .end annotation

    invoke-static {}, Lcom/explorestack/iab/mraid/MraidInterstitial;->newBuilder()Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setBaseUrl(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->preload:Z

    invoke-static {v1}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils;->getCacheControlByPreload(Z)Lcom/explorestack/iab/CacheControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setCacheControl(Lcom/explorestack/iab/CacheControl;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->isTag:Z

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setIsTag(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setListener(Lcom/explorestack/iab/mraid/MraidInterstitialListener;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object p2

    iget v0, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->closeTime:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setCloseTime(F)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object p2

    iget-object p1, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->pageFinishedScript:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setPageFinishedScript(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->build(Landroid/content/Context;)Lcom/explorestack/iab/mraid/MraidInterstitial;

    move-result-object p0

    return-object p0
.end method

.method private static getCacheControlByPreload(Z)Lcom/explorestack/iab/CacheControl;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/explorestack/iab/CacheControl;->FullLoad:Lcom/explorestack/iab/CacheControl;

    return-object p0

    :cond_0
    sget-object p0, Lcom/explorestack/iab/CacheControl;->Stream:Lcom/explorestack/iab/CacheControl;

    return-object p0
.end method

.method public static isValidAdm(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static performLoadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidAd;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UnifiedAdParamsType::",
            "Lcom/appodeal/ads/unified/UnifiedAdParams;",
            "UnifiedAdCallbackType:",
            "Lcom/appodeal/ads/unified/UnifiedAdCallback;",
            ">(",
            "Landroid/content/Context;",
            "TUnifiedAdParamsType;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            "TUnifiedAdCallbackType;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidAd<",
            "TUnifiedAdParamsType;TUnifiedAdCallbackType;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->adm:Ljava/lang/String;

    invoke-static {v0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils;->isValidAdm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidAd;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V

    goto :goto_1

    :cond_1
    iget-object v0, p2, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->adUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->adUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v6, p2, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->adUrl:Ljava/lang/String;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidAd;->performMraidRequest(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p3, p0}, Lcom/appodeal/ads/unified/UnifiedAdCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_1
    return-void
.end method
