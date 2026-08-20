.class public Lcom/criteo/publisher/n0/b;
.super Ljava/lang/Object;
.source "AdvertisingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/n0/b$d;,
        Lcom/criteo/publisher/n0/b$e;,
        Lcom/criteo/publisher/n0/b$c;,
        Lcom/criteo/publisher/n0/b$f;
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Lcom/criteo/publisher/n0/b$f;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/criteo/publisher/n0/b$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/criteo/publisher/n0/b$f;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/n0/b;->a:Lcom/criteo/publisher/logging/g;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/n0/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 55
    iput-object p1, p0, Lcom/criteo/publisher/n0/b;->c:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/criteo/publisher/n0/b;->d:Ljava/util/concurrent/Executor;

    .line 57
    iput-object p3, p0, Lcom/criteo/publisher/n0/b;->b:Lcom/criteo/publisher/n0/b$f;

    return-void
.end method

.method private a()V
    .locals 4

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/criteo/publisher/n0/b;->b:Lcom/criteo/publisher/n0/b$f;

    iget-object v1, p0, Lcom/criteo/publisher/n0/b;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/n0/b$f;->a(Landroid/content/Context;)Lcom/criteo/publisher/n0/b$c;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/criteo/publisher/n0/b$c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-static {}, Lcom/criteo/publisher/n0/b$c;->d()Lcom/criteo/publisher/n0/b$c;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/criteo/publisher/n0/b$c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/n0/b$c;->a(Ljava/lang/String;)Lcom/criteo/publisher/n0/b$c;

    move-result-object v0
    :try_end_0
    .catch Lcom/criteo/publisher/n0/b$e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Lcom/criteo/publisher/n0/b$d;

    invoke-direct {v1, v0}, Lcom/criteo/publisher/n0/b$d;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/criteo/publisher/n0/o;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    .line 124
    invoke-static {}, Lcom/criteo/publisher/n0/b$c;->a()Lcom/criteo/publisher/n0/b$c;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/criteo/publisher/n0/b;->a:Lcom/criteo/publisher/logging/g;

    const-string v3, "Error getting advertising id"

    invoke-virtual {v2, v3, v0}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/criteo/publisher/n0/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/criteo/publisher/n0/b$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/n0/b;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/criteo/publisher/n0/b;->a()V

    return-void
.end method

.method private c()Lcom/criteo/publisher/n0/b$c;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/criteo/publisher/n0/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/n0/b$c;

    if-nez v0, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/criteo/publisher/n0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/criteo/publisher/n0/b;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/criteo/publisher/n0/b$b;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/n0/b$b;-><init>(Lcom/criteo/publisher/n0/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/criteo/publisher/n0/b;->a()V

    .line 94
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/criteo/publisher/n0/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/n0/b$c;

    if-nez v0, :cond_2

    .line 96
    invoke-static {}, Lcom/criteo/publisher/n0/b$c;->a()Lcom/criteo/publisher/n0/b$c;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private e()Z
    .locals 2

    .line 103
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 107
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/criteo/publisher/n0/b;->c()Lcom/criteo/publisher/n0/b$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/b$c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/criteo/publisher/n0/b;->c()Lcom/criteo/publisher/n0/b$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/b$c;->c()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/criteo/publisher/n0/b;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/criteo/publisher/n0/b$a;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/n0/b$a;-><init>(Lcom/criteo/publisher/n0/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
