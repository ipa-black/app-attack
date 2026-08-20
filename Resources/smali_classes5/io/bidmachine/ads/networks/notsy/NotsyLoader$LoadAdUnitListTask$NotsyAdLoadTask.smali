.class Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$NotsyAdLoadTask;
.super Ljava/lang/Object;
.source "NotsyLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotsyAdLoadTask"
.end annotation


# instance fields
.field private final countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final notsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/CountDownLatch;Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$NotsyAdLoadTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 300
    iput-object p2, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$NotsyAdLoadTask;->notsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Lio/bidmachine/ads/networks/notsy/NotsyLoader$1;)V
    .locals 0

    .line 291
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$NotsyAdLoadTask;-><init>(Ljava/util/concurrent/CountDownLatch;Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 306
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$NotsyAdLoadTask;->notsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    invoke-static {}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->access$500()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$AwaitLoadListener;

    iget-object v3, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$NotsyAdLoadTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$AwaitLoadListener;-><init>(Ljava/util/concurrent/CountDownLatch;Lio/bidmachine/ads/networks/notsy/NotsyLoader$1;)V

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->load(Landroid/content/Context;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 308
    :catchall_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$NotsyAdLoadTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void
.end method
