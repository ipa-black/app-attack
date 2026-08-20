.class Lio/bidmachine/AdResponse$AdProcessCallbackComposite;
.super Ljava/lang/Object;
.source "AdResponse.java"

# interfaces
.implements Lio/bidmachine/AdProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdProcessCallbackComposite"
.end annotation


# instance fields
.field private final adProcessCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/AdProcessCallback;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isClickTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isCloseTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isFinishTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isImpressionTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isLoadTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isResultShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isVisibilityTrackerShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isVisibilityTrackerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mutexCallback:Ljava/lang/Object;

.field private final weakAdResponse:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/AdResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/AdResponse;)V
    .locals 1

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->weakAdResponse:Ljava/lang/ref/WeakReference;

    .line 537
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->adProcessCallbackMap:Ljava/util/Map;

    .line 538
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->mutexCallback:Ljava/lang/Object;

    .line 539
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 540
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 541
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isLoadTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 542
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 543
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isVisibilityTrackerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 544
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isVisibilityTrackerShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 545
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isResultShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 546
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isImpressionTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 547
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isClickTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 548
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isFinishTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 549
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isCloseTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/AdResponse$AdProcessCallbackComposite;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 504
    iget-object p0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lio/bidmachine/AdResponse$AdProcessCallbackComposite;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 504
    iget-object p0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lio/bidmachine/AdResponse$AdProcessCallbackComposite;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 504
    iget-object p0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isResultShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lio/bidmachine/AdResponse$AdProcessCallbackComposite;)V
    .locals 0

    .line 504
    invoke-direct {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->destroy()V

    return-void
.end method

.method static synthetic access$400(Lio/bidmachine/AdResponse$AdProcessCallbackComposite;)Z
    .locals 0

    .line 504
    invoke-direct {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isLoading()Z

    move-result p0

    return p0
.end method

.method private destroy()V
    .locals 1

    .line 839
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->weakAdResponse:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 840
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->adProcessCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private getAdResponse()Lio/bidmachine/AdResponse;
    .locals 1

    .line 806
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->weakAdResponse:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/AdResponse;

    return-object v0
.end method

.method private isLoading()Z
    .locals 1

    .line 810
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$processLoadFail$0(Lio/bidmachine/utils/BMError;Lio/bidmachine/AdProcessCallback;)V
    .locals 0

    .line 585
    invoke-interface {p1, p0}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method static synthetic lambda$processShowFail$1(Lio/bidmachine/utils/BMError;Lio/bidmachine/AdProcessCallback;)V
    .locals 0

    .line 620
    invoke-interface {p1, p0}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method


# virtual methods
.method appendCallback(Lio/bidmachine/AdProcessCallback;)V
    .locals 3

    .line 815
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->mutexCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->adProcessCallbackMap:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method executeOnCallback(Lio/bidmachine/Executable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/Executable<",
            "Lio/bidmachine/AdProcessCallback;",
            ">;)V"
        }
    .end annotation

    .line 829
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->mutexCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 830
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->adProcessCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/AdProcessCallback;

    if-eqz v2, :cond_0

    .line 832
    invoke-interface {p1, v2}, Lio/bidmachine/Executable;->execute(Ljava/lang/Object;)V

    goto :goto_0

    .line 835
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getAdProcessCallbackMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/bidmachine/AdProcessCallback;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 846
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->adProcessCallbackMap:Ljava/util/Map;

    return-object v0
.end method

.method public processBeforeStartVisibilityTracker()V
    .locals 2

    .line 592
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isVisibilityTrackerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public processClicked()V
    .locals 4

    .line 708
    invoke-direct {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 710
    invoke-static {v0}, Lio/bidmachine/AdResponse;->access$600(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processClicked - %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 714
    invoke-interface {v1}, Lio/bidmachine/models/AdObject;->onClicked()V

    .line 717
    :cond_0
    iget-object v1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isClickTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 718
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v1

    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/SessionManager;->getSessionAdParams(Lio/bidmachine/AdsType;)Lio/bidmachine/SessionAdParams;

    move-result-object v1

    .line 719
    invoke-virtual {v1}, Lio/bidmachine/SessionAdParams;->addClick()V

    .line 721
    :cond_1
    sget-object v1, Lio/bidmachine/TrackEventType;->Click:Lio/bidmachine/TrackEventType;

    invoke-static {v0, v1}, Lio/bidmachine/AdResponse;->access$700(Lio/bidmachine/AdResponse;Lio/bidmachine/TrackEventType;)V

    .line 724
    :cond_2
    new-instance v0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->executeOnCallback(Lio/bidmachine/Executable;)V

    return-void
.end method

.method public processClosed()V
    .locals 4

    .line 753
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isCloseTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 757
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 759
    invoke-static {v0}, Lio/bidmachine/AdResponse;->access$600(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isFinishTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "processClosed (%s) - %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 763
    iget-object v2, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isFinishTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/bidmachine/models/AdObject;->onClosed(Z)V

    .line 765
    :cond_1
    sget-object v1, Lio/bidmachine/TrackEventType;->Close:Lio/bidmachine/TrackEventType;

    invoke-static {v0, v1}, Lio/bidmachine/AdResponse;->access$700(Lio/bidmachine/AdResponse;Lio/bidmachine/TrackEventType;)V

    .line 768
    :cond_2
    new-instance v0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->executeOnCallback(Lio/bidmachine/Executable;)V

    return-void
.end method

.method public processDestroy()V
    .locals 4

    .line 794
    new-instance v0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->executeOnCallback(Lio/bidmachine/Executable;)V

    .line 796
    invoke-direct {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 798
    invoke-static {v0}, Lio/bidmachine/AdResponse;->access$600(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processDestroy - %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-static {v0}, Lio/bidmachine/AdResponse;->access$1000(Lio/bidmachine/AdResponse;)V

    :cond_0
    return-void
.end method

.method public processExpired()V
    .locals 4

    .line 773
    invoke-direct {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 775
    invoke-static {v0}, Lio/bidmachine/AdResponse;->access$600(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processExpired - %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 779
    invoke-interface {v1}, Lio/bidmachine/models/AdObject;->onExpired()V

    .line 781
    :cond_0
    sget-object v1, Lio/bidmachine/TrackEventType;->Expired:Lio/bidmachine/TrackEventType;

    invoke-static {v0, v1}, Lio/bidmachine/AdResponse;->access$700(Lio/bidmachine/AdResponse;Lio/bidmachine/TrackEventType;)V

    .line 784
    :cond_1
    new-instance v1, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v1}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->executeOnCallback(Lio/bidmachine/Executable;)V

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 787
    invoke-virtual {v0, v1}, Lio/bidmachine/AdResponse;->notifyExpired(Z)V

    .line 789
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->processDestroy()V

    return-void
.end method

.method public processFillAd()V
    .locals 4

    .line 597
    invoke-direct {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    invoke-static {v0}, Lio/bidmachine/AdResponse;->access$600(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processFillAd - %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    sget-object v1, Lio/bidmachine/TrackEventType;->FillAd:Lio/bidmachine/TrackEventType;

    invoke-static {v0, v1}, Lio/bidmachine/AdResponse;->access$700(Lio/bidmachine/AdResponse;Lio/bidmachine/TrackEventType;)V

    .line 604
    :cond_0
    new-instance v0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->executeOnCallback(Lio/bidmachine/Executable;)V

    return-void
.end method

.method public processFinished()V
    .locals 4

    .line 729
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isFinishTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 733
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 735
    invoke-static {v0}, Lio/bidmachine/AdResponse;->access$600(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processFinished - %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 739
    invoke-interface {v1}, Lio/bidmachine/models/AdObject;->onFinished()V

    .line 741
    :cond_1
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getCreativeFormat()Lio/bidmachine/CreativeFormat;

    move-result-object v1

    sget-object v2, Lio/bidmachine/CreativeFormat;->Video:Lio/bidmachine/CreativeFormat;

    if-ne v1, v2, :cond_2

    .line 742
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v1

    .line 743
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/SessionManager;->getSessionAdParams(Lio/bidmachine/AdsType;)Lio/bidmachine/SessionAdParams;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Lio/bidmachine/SessionAdParams;->addCompletedVideo()V

    .line 748
    :cond_2
    new-instance v0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->executeOnCallback(Lio/bidmachine/Executable;)V

    return-void
.end method

.method public processLoadFail(Lio/bidmachine/utils/BMError;)V
    .locals 4

    .line 572
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isLoadTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 576
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 578
    invoke-direct {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 580
    invoke-static {v0}, Lio/bidmachine/AdResponse;->access$600(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processLoadFail - %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    sget-object v1, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    invoke-static {v0, v1, p1}, Lio/bidmachine/AdResponse;->access$800(Lio/bidmachine/AdResponse;Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    .line 585
    :cond_1
    new-instance v0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/utils/BMError;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->executeOnCallback(Lio/bidmachine/Executable;)V

    .line 587
    invoke-virtual {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->processDestroy()V

    return-void
.end method

.method public processLoadSuccess()V
    .locals 4

    .line 554
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isLoadTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 558
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 560
    invoke-direct {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 562
    invoke-static {v0}, Lio/bidmachine/AdResponse;->access$600(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processLoadSuccess - %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    sget-object v1, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    invoke-static {v0, v1}, Lio/bidmachine/AdResponse;->access$700(Lio/bidmachine/AdResponse;Lio/bidmachine/TrackEventType;)V

    .line 567
    :cond_1
    new-instance v0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->executeOnCallback(Lio/bidmachine/Executable;)V

    return-void
.end method

.method processResultShown()V
    .locals 6

    .line 644
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isResultShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 648
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 650
    invoke-static {v0}, Lio/bidmachine/AdResponse;->access$600(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processShown - %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-static {v0}, Lio/bidmachine/AdResponse;->access$900(Lio/bidmachine/AdResponse;)V

    .line 654
    invoke-static {}, Lio/bidmachine/AdResponseManager;->get()Lio/bidmachine/AdResponseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/bidmachine/AdResponseManager;->remove(Lio/bidmachine/AdResponse;)V

    .line 656
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 658
    invoke-interface {v1}, Lio/bidmachine/models/AdObject;->onShown()V

    .line 660
    :cond_1
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v1

    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/SessionManager;->getSessionAdParams(Lio/bidmachine/AdsType;)Lio/bidmachine/SessionAdParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 661
    invoke-virtual {v1, v2}, Lio/bidmachine/SessionAdParams;->setLastBundle(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v1, v2}, Lio/bidmachine/SessionAdParams;->setLastAdDomain(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v1}, Lio/bidmachine/SessionAdParams;->addImpression()V

    .line 664
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getCreativeFormat()Lio/bidmachine/CreativeFormat;

    move-result-object v2

    sget-object v3, Lio/bidmachine/CreativeFormat;->Video:Lio/bidmachine/CreativeFormat;

    if-ne v2, v3, :cond_2

    .line 665
    invoke-virtual {v1}, Lio/bidmachine/SessionAdParams;->addVideoImpression()V

    .line 667
    :cond_2
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getAd()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v2

    .line 668
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Ad;->getBundleList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/explorestack/protobuf/ProtocolStringList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 669
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 670
    invoke-virtual {v1, v4}, Lio/bidmachine/SessionAdParams;->setLastBundle(Ljava/lang/String;)V

    .line 674
    :cond_4
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Ad;->getAdomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/explorestack/protobuf/ProtocolStringList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 675
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 676
    invoke-virtual {v1, v3}, Lio/bidmachine/SessionAdParams;->setLastAdDomain(Ljava/lang/String;)V

    .line 680
    :cond_6
    sget-object v1, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    invoke-static {v0, v1}, Lio/bidmachine/AdResponse;->access$700(Lio/bidmachine/AdResponse;Lio/bidmachine/TrackEventType;)V

    .line 683
    :cond_7
    new-instance v0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->executeOnCallback(Lio/bidmachine/Executable;)V

    return-void
.end method

.method public processShowFail(Lio/bidmachine/utils/BMError;)V
    .locals 4

    .line 609
    invoke-direct {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 611
    invoke-static {v0}, Lio/bidmachine/AdResponse;->access$600(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processShowFail - %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 615
    invoke-interface {v1}, Lio/bidmachine/models/AdObject;->onShowFailed()V

    .line 617
    :cond_0
    sget-object v1, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    invoke-static {v0, v1, p1}, Lio/bidmachine/AdResponse;->access$800(Lio/bidmachine/AdResponse;Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    .line 620
    :cond_1
    new-instance v0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/utils/BMError;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->executeOnCallback(Lio/bidmachine/Executable;)V

    return-void
.end method

.method public processShown()V
    .locals 2

    .line 625
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 626
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isVisibilityTrackerShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isVisibilityTrackerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 627
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->processResultShown()V

    :cond_1
    return-void
.end method

.method public processVisibilityTrackerImpression()V
    .locals 4

    .line 688
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isImpressionTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 692
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 694
    invoke-static {v0}, Lio/bidmachine/AdResponse;->access$600(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processImpression - %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 698
    invoke-interface {v1}, Lio/bidmachine/models/AdObject;->onImpression()V

    .line 700
    :cond_1
    sget-object v1, Lio/bidmachine/TrackEventType;->Impression:Lio/bidmachine/TrackEventType;

    invoke-static {v0, v1}, Lio/bidmachine/AdResponse;->access$700(Lio/bidmachine/AdResponse;Lio/bidmachine/TrackEventType;)V

    .line 703
    :cond_2
    new-instance v0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->executeOnCallback(Lio/bidmachine/Executable;)V

    return-void
.end method

.method public processVisibilityTrackerShown(Lio/bidmachine/unified/UnifiedAd;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/unified/UnifiedAd<",
            "**>;)Z"
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isVisibilityTrackerShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 634
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->isShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lio/bidmachine/unified/UnifiedAd;->isConsiderNetworkImpressionTracking()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 635
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->processResultShown()V

    return v1
.end method

.method removeCallback(Lio/bidmachine/AdProcessCallback;)V
    .locals 2

    .line 822
    iget-object v0, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->mutexCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 823
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->adProcessCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
