.class public abstract Lcom/appodeal/ads/unified/mraid/UnifiedMraidMrec;
.super Lcom/appodeal/ads/unified/UnifiedMrec;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NetworkRequestParams:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/appodeal/ads/unified/UnifiedMrec<",
        "TNetworkRequestParams;>;",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid<",
        "Lcom/appodeal/ads/unified/UnifiedMrecParams;",
        "Lcom/appodeal/ads/unified/UnifiedMrecCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final unifiedMraid:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd<",
            "Lcom/appodeal/ads/unified/UnifiedMrecParams;",
            "Lcom/appodeal/ads/unified/UnifiedMrecCallback;",
            "TNetworkRequestParams;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedMrec;-><init>()V

    new-instance v0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;-><init>(Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid;)V

    iput-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidMrec;->unifiedMraid:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;

    return-void
.end method


# virtual methods
.method public createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedMrecParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedMrecCallback;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appodeal/ads/unified/UnifiedMrecParams;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            "Lcom/appodeal/ads/unified/UnifiedMrecCallback;",
            ")",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener<",
            "Lcom/appodeal/ads/unified/UnifiedMrecCallback;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidMrecListener;

    invoke-direct {p1, p4, p3}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidMrecListener;-><init>(Lcom/appodeal/ads/unified/UnifiedMrecCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;)V

    return-object p1
.end method

.method public bridge synthetic createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedMrecParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidMrec;->createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedMrecParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedMrecCallback;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedMrecParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidMrec;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedMrecParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedMrecCallback;)V

    return-void
.end method

.method public load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedMrecParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedMrecCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/unified/UnifiedMrecParams;",
            "TNetworkRequestParams;",
            "Lcom/appodeal/ads/unified/UnifiedMrecCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidMrec;->unifiedMraid:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;)V

    return-void
.end method

.method public bridge synthetic loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedMrecParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidMrec;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedMrecParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedMrecCallback;)V

    return-void
.end method

.method public loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedMrecParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedMrecCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidMrec;->unifiedMraid:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;)V

    return-void
.end method

.method public onClicked()V
    .locals 1

    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedAd;->onClicked()V

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidMrec;->unifiedMraid:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidMrec;->unifiedMraid:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->onDestroy()V

    return-void
.end method

.method public onFinished()V
    .locals 1

    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedAd;->onFinished()V

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidMrec;->unifiedMraid:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onFinished()V

    return-void
.end method

.method public bridge synthetic onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedMrecParams;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidMrec;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedMrecParams;)V

    return-void
.end method

.method public onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedMrecParams;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/appodeal/ads/unified/UnifiedAd;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidMrec;->unifiedMraid:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedViewAdParams;)V

    return-void
.end method
