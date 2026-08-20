.class public Lcom/bykv/vk/openvk/preload/geckox/utils/e;
.super Ljava/lang/Object;
.source "IOSerialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static volatile a:Lcom/bykv/vk/openvk/preload/geckox/utils/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bykv/vk/openvk/preload/geckox/utils/e;
    .locals 2

    .line 14
    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/utils/e;->a:Lcom/bykv/vk/openvk/preload/geckox/utils/e;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Lcom/bykv/vk/openvk/preload/geckox/utils/e;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/bykv/vk/openvk/preload/geckox/utils/e;->a:Lcom/bykv/vk/openvk/preload/geckox/utils/e;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/bykv/vk/openvk/preload/geckox/utils/e;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/geckox/utils/e;-><init>()V

    sput-object v1, Lcom/bykv/vk/openvk/preload/geckox/utils/e;->a:Lcom/bykv/vk/openvk/preload/geckox/utils/e;

    .line 19
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/utils/e;->a:Lcom/bykv/vk/openvk/preload/geckox/utils/e;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 26
    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/b;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
