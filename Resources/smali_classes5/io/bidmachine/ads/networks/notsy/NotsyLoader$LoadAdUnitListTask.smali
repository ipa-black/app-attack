.class Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;
.super Ljava/lang/Object;
.source "NotsyLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/notsy/NotsyLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadAdUnitListTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$AwaitLoadListener;,
        Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$NotsyAdLoadTask;
    }
.end annotation


# static fields
.field private static final loadAdTaskExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private final adUnitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final bottomBorderLoadedAd:I

.field private final breakAfterAdLoaded:Z

.field private final isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final restAdLoadMs:I

.field private final restTaskLoadMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 223
    invoke-static {}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->access$100()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->loadAdTaskExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;IIIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->adUnitList:Ljava/util/List;

    .line 240
    iput p2, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->bottomBorderLoadedAd:I

    .line 241
    iput p3, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->restAdLoadMs:I

    .line 242
    iput p4, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->restTaskLoadMs:I

    .line 243
    iput-boolean p5, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->breakAfterAdLoaded:Z

    .line 244
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;IIIZLio/bidmachine/ads/networks/notsy/NotsyLoader$1;)V
    .locals 0

    .line 220
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;-><init>(Ljava/util/List;IIIZ)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 288
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 9

    const/4 v0, 0x0

    .line 250
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 251
    iget-object v1, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->adUnitList:Ljava/util/List;

    invoke-static {v1}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->access$200(Ljava/util/List;)I

    move-result v1

    .line 252
    iget v3, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->bottomBorderLoadedAd:I

    if-lt v1, v3, :cond_0

    .line 253
    iget-object v1, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 257
    :cond_0
    iget-object v3, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->adUnitList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;

    .line 258
    invoke-static {v4}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Factory;->create(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;)Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 262
    :cond_1
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 263
    sget-object v6, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->loadAdTaskExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$NotsyAdLoadTask;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v4, v8}, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$NotsyAdLoadTask;-><init>(Ljava/util/concurrent/CountDownLatch;Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Lio/bidmachine/ads/networks/notsy/NotsyLoader$1;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :try_start_1
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :catch_0
    :try_start_2
    invoke-virtual {v4}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->isLoaded()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 270
    iget-boolean v4, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->breakAfterAdLoaded:Z

    if-eqz v4, :cond_2

    goto :goto_1

    .line 274
    :cond_2
    iget v4, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->restAdLoadMs:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 277
    :cond_3
    :goto_1
    iget-object v2, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 278
    iget v2, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->bottomBorderLoadedAd:I

    if-ge v1, v2, :cond_4

    .line 279
    iget v1, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->restTaskLoadMs:I

    invoke-static {p0, v1}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->access$400(Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 282
    :catchall_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 283
    iget v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->restTaskLoadMs:I

    invoke-static {p0, v0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->access$400(Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;I)V

    :cond_4
    :goto_2
    return-void
.end method
