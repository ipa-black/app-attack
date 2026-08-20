.class abstract Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/vast/VastRequestListener;
.implements Lcom/explorestack/iab/vast/VastActivityListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedCallbackType:",
        "Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/explorestack/iab/vast/VastRequestListener;",
        "Lcom/explorestack/iab/vast/VastActivityListener;"
    }
.end annotation


# instance fields
.field public final callback:Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedCallbackType;"
        }
    .end annotation
.end field

.field private final clickHandler:Lcom/appodeal/ads/utils/q;

.field public final vastParams:Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnifiedCallbackType;",
            "Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appodeal/ads/utils/q;

    invoke-direct {v0}, Lcom/appodeal/ads/utils/q;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->clickHandler:Lcom/appodeal/ads/utils/q;

    iput-object p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->callback:Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    iput-object p2, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->vastParams:Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;

    return-void
.end method


# virtual methods
.method public onVastClick(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/utils/IabClickCallback;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->clickHandler:Lcom/appodeal/ads/utils/q;

    iget-object p2, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->vastParams:Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;

    iget-object v3, p2, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->packageName:Ljava/lang/String;

    iget-wide v4, p2, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->expiryTime:J

    new-instance v6, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener$1;

    invoke-direct {v6, p0, p3}, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener$1;-><init>(Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;Lcom/explorestack/iab/utils/IabClickCallback;)V

    move-object v1, p1

    move-object v2, p4

    invoke-virtual/range {v0 .. v6}, Lcom/appodeal/ads/utils/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/appodeal/ads/utils/q$b;)V

    return-void
.end method

.method public onVastComplete(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    return-void
.end method

.method public onVastDismiss(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Z)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->callback:Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;->onAdFinished()V

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->callback:Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;->onAdClosed()V

    return-void
.end method

.method public onVastError(Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequest;I)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->callback:Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/appodeal/ads/unified/UnifiedAdCallback;->printError(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->callback:Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    invoke-virtual {p1, p3}, Lcom/appodeal/ads/unified/UnifiedAdCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public onVastLoaded(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->callback:Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method

.method public onVastShown(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->callback:Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;->onAdShown()V

    return-void
.end method
