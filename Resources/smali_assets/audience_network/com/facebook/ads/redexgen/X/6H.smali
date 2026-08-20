.class public final Lcom/facebook/ads/redexgen/X/6H;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExoPlayerCacheCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/6M;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 2

    .line 15301
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6H;->A01:Lcom/facebook/ads/redexgen/X/6M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15302
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A00:Ljava/util/concurrent/BlockingQueue;

    .line 15303
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xf;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Xf;-><init>(Lcom/facebook/ads/redexgen/X/6H;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/6I;)V

    .line 15304
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15305
    return-void
.end method

.method private final A00()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A00:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/6H;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 15307
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6H;->A00:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/6H;Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 0

    .line 15308
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6H;->A03(Lcom/facebook/ads/redexgen/X/6I;)V

    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 12

    .line 15309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 15310
    .local v7, "startTime":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A01:Lcom/facebook/ads/redexgen/X/6M;

    .line 15311
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6M;->A07(Lcom/facebook/ads/redexgen/X/6M;)Lcom/facebook/ads/redexgen/X/7N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Py;->A05(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/Py;

    move-result-object v4

    .line 15312
    .local v9, "exoPlayerCacheManager":Lcom/facebook/ads/redexgen/X/Py;
    move-object v7, p1

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/6I;->A08:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 15313
    .local v10, "uri":Landroid/net/Uri;
    iget-wide v8, v7, Lcom/facebook/ads/redexgen/X/6I;->A00:J

    .line 15314
    .local v0, "preloadSizeBytes":J
    const-wide/16 v1, -0x1

    cmp-long v0, v8, v1

    if-nez v0, :cond_0

    .line 15315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A01:Lcom/facebook/ads/redexgen/X/6M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6M;->A07(Lcom/facebook/ads/redexgen/X/6M;)Lcom/facebook/ads/redexgen/X/7N;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A0N(Landroid/content/Context;)J

    move-result-wide v8

    .line 15316
    .end local v0    # "preloadSizeBytes":J
    .local v11, "preloadSizeBytes":J
    .local v3, "finalPreloadSizeBytes":J
    :cond_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/Xe;

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Xe;-><init>(Lcom/facebook/ads/redexgen/X/6H;Lcom/facebook/ads/redexgen/X/6I;JJ)V

    invoke-virtual {v4, v3, v5, v8, v9}, Lcom/facebook/ads/redexgen/X/Py;->A0G(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/Px;J)V

    .line 15317
    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15318
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6H;->A00()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
