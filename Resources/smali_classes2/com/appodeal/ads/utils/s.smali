.class public final Lcom/appodeal/ads/utils/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/utils/s$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/concurrent/TimeUnit;

.field public static final c:I

.field public static final d:I

.field public static e:Lcom/appodeal/ads/utils/s;


# instance fields
.field public final a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/appodeal/ads/utils/s;->b:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/appodeal/ads/utils/s;->c:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/appodeal/ads/utils/s;->d:I

    new-instance v0, Lcom/appodeal/ads/utils/s;

    invoke-direct {v0}, Lcom/appodeal/ads/utils/s;-><init>()V

    sput-object v0, Lcom/appodeal/ads/utils/s;->e:Lcom/appodeal/ads/utils/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/appodeal/ads/utils/s$a;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/appodeal/ads/utils/s$a;-><init>(I)V

    new-instance v7, Lcom/appodeal/ads/utils/u;

    invoke-direct {v7}, Lcom/appodeal/ads/utils/u;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lcom/appodeal/ads/utils/s;->c:I

    sget v2, Lcom/appodeal/ads/utils/s;->d:I

    sget-object v5, Lcom/appodeal/ads/utils/s;->b:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lcom/appodeal/ads/utils/s;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/s;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
