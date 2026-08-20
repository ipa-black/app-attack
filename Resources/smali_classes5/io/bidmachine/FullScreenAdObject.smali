.class public final Lio/bidmachine/FullScreenAdObject;
.super Lio/bidmachine/AdObjectImpl;
.source "FullScreenAdObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/FullScreenAdObject$UnifiedFullscreenAdCallbackImpl;,
        Lio/bidmachine/FullScreenAdObject$ImpressionThresholdTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lio/bidmachine/FullScreenAdRequest<",
        "TAdRequestType;>;>",
        "Lio/bidmachine/AdObjectImpl<",
        "TAdRequestType;",
        "Lio/bidmachine/models/AdObjectParams;",
        "Lio/bidmachine/unified/UnifiedFullscreenAd;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdCallback;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field private final isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final thresholdTask:Lio/bidmachine/FullScreenAdObject$ImpressionThresholdTask;


# direct methods
.method public constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/FullScreenAdRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedFullscreenAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/AdProcessCallback;",
            "TAdRequestType;",
            "Lio/bidmachine/models/AdObjectParams;",
            "Lio/bidmachine/unified/UnifiedFullscreenAd;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/AdObjectImpl;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedAd;)V

    .line 17
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/FullScreenAdObject;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    new-instance p1, Lio/bidmachine/FullScreenAdObject$1;

    invoke-direct {p1, p0}, Lio/bidmachine/FullScreenAdObject$1;-><init>(Lio/bidmachine/FullScreenAdObject;)V

    iput-object p1, p0, Lio/bidmachine/FullScreenAdObject;->thresholdTask:Lio/bidmachine/FullScreenAdObject$ImpressionThresholdTask;

    return-void
.end method

.method private cancelImpressionThresholdTask()V
    .locals 1

    .line 93
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject;->thresholdTask:Lio/bidmachine/FullScreenAdObject$ImpressionThresholdTask;

    invoke-virtual {v0}, Lio/bidmachine/FullScreenAdObject$ImpressionThresholdTask;->cancel()V

    return-void
.end method

.method private startImpressionThresholdTask()V
    .locals 3

    .line 89
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject;->thresholdTask:Lio/bidmachine/FullScreenAdObject$ImpressionThresholdTask;

    invoke-virtual {p0}, Lio/bidmachine/FullScreenAdObject;->getParams()Lio/bidmachine/models/AdObjectParams;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/models/AdObjectParams;->getViewabilityTimeThresholdMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/FullScreenAdObject$ImpressionThresholdTask;->start(J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedAdCallback;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lio/bidmachine/FullScreenAdObject;->createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    move-result-object p1

    return-object p1
.end method

.method public createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedFullscreenAdCallback;
    .locals 1

    .line 37
    new-instance v0, Lio/bidmachine/FullScreenAdObject$UnifiedFullscreenAdCallbackImpl;

    invoke-direct {v0, p1}, Lio/bidmachine/FullScreenAdObject$UnifiedFullscreenAdCallbackImpl;-><init>(Lio/bidmachine/AdProcessCallback;)V

    return-object v0
.end method

.method public onClosed(Z)V
    .locals 2

    .line 74
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    invoke-super {p0, p1}, Lio/bidmachine/AdObjectImpl;->onClosed(Z)V

    .line 78
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdObject;->cancelImpressionThresholdTask()V

    return-void
.end method

.method public onFinished()V
    .locals 0

    .line 83
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onFinished()V

    .line 85
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdObject;->cancelImpressionThresholdTask()V

    return-void
.end method

.method public onImpression()V
    .locals 0

    .line 67
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onImpression()V

    .line 69
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdObject;->cancelImpressionThresholdTask()V

    return-void
.end method

.method public onShowFailed()V
    .locals 2

    .line 60
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onShowFailed()V

    return-void
.end method

.method public onShown()V
    .locals 0

    .line 53
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onShown()V

    .line 55
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdObject;->startImpressionThresholdTask()V

    return-void
.end method

.method public show(Lio/bidmachine/ContextProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string p1, "Fullscreen ad already showing, please wait until the ad closes"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject;->isShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    invoke-virtual {p0}, Lio/bidmachine/FullScreenAdObject;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object v0

    check-cast v0, Lio/bidmachine/unified/UnifiedFullscreenAd;

    invoke-virtual {p0}, Lio/bidmachine/FullScreenAdObject;->getUnifiedAdCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object v1

    check-cast v1, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/unified/UnifiedFullscreenAd;->show(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V

    .line 48
    invoke-virtual {p0}, Lio/bidmachine/FullScreenAdObject;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processFillAd()V

    return-void
.end method
