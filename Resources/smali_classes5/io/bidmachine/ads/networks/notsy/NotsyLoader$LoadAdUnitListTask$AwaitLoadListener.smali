.class Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$AwaitLoadListener;
.super Ljava/lang/Object;
.source "NotsyLoader.java"

# interfaces
.implements Lio/bidmachine/ads/networks/notsy/InternalLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AwaitLoadListener"
.end annotation


# instance fields
.field private final countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$AwaitLoadListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;Lio/bidmachine/ads/networks/notsy/NotsyLoader$1;)V
    .locals 0

    .line 314
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$AwaitLoadListener;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 332
    invoke-static {p1}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->access$700(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    .line 334
    iget-object p1, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$AwaitLoadListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V
    .locals 0

    .line 325
    invoke-static {p1}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->storeNotsyAd(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    .line 327
    iget-object p1, p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask$AwaitLoadListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
