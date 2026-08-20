.class public Lcom/pgl/ssdk/M;
.super Ljava/lang/Object;
.source "HandlerPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pgl/ssdk/M$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/pgl/ssdk/P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pgl/ssdk/P<",
            "Lcom/pgl/ssdk/N;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/pgl/ssdk/Q;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/pgl/ssdk/P;->a(I)Lcom/pgl/ssdk/P;

    move-result-object v0

    iput-object v0, p0, Lcom/pgl/ssdk/M;->a:Lcom/pgl/ssdk/P;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pgl/ssdk/M$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/pgl/ssdk/M;-><init>()V

    return-void
.end method

.method public static a()Lcom/pgl/ssdk/M;
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/M$b;->a()Lcom/pgl/ssdk/M;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/pgl/ssdk/Q;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/pgl/ssdk/M;->a:Lcom/pgl/ssdk/P;

    invoke-virtual {v0}, Lcom/pgl/ssdk/P;->a()Lcom/pgl/ssdk/O;

    move-result-object v0

    check-cast v0, Lcom/pgl/ssdk/N;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/pgl/ssdk/Q;->a:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v0, p1}, Lcom/pgl/ssdk/N;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/pgl/ssdk/H;->b()Lcom/pgl/ssdk/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pgl/ssdk/H;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 9
    new-instance p1, Lcom/pgl/ssdk/N;

    invoke-direct {p1, v0, v1}, Lcom/pgl/ssdk/N;-><init>(Landroid/os/HandlerThread;Lcom/pgl/ssdk/Q$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public b()Lcom/pgl/ssdk/Q;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pgl/ssdk/M;->b:Lcom/pgl/ssdk/Q;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/pgl/ssdk/M;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/pgl/ssdk/M;->b:Lcom/pgl/ssdk/Q;

    if-nez v1, :cond_0

    const-string v1, "ssdk_net_handler"

    .line 4
    invoke-virtual {p0, v1}, Lcom/pgl/ssdk/M;->a(Ljava/lang/String;)Lcom/pgl/ssdk/Q;

    move-result-object v1

    iput-object v1, p0, Lcom/pgl/ssdk/M;->b:Lcom/pgl/ssdk/Q;

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pgl/ssdk/M;->b:Lcom/pgl/ssdk/Q;

    return-object v0
.end method

.method public c()Lcom/pgl/ssdk/Q;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pgl/ssdk/M;->b:Lcom/pgl/ssdk/Q;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/pgl/ssdk/M;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/pgl/ssdk/M;->b:Lcom/pgl/ssdk/Q;

    if-nez v1, :cond_0

    const-string v1, "ssdk_handler"

    .line 4
    invoke-virtual {p0, v1}, Lcom/pgl/ssdk/M;->a(Ljava/lang/String;)Lcom/pgl/ssdk/Q;

    move-result-object v1

    iput-object v1, p0, Lcom/pgl/ssdk/M;->b:Lcom/pgl/ssdk/Q;

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pgl/ssdk/M;->b:Lcom/pgl/ssdk/Q;

    return-object v0
.end method
