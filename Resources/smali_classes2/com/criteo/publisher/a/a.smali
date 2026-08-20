.class public Lcom/criteo/publisher/a/a;
.super Ljava/lang/Object;
.source "AppEvents.java"

# interfaces
.implements Lcom/criteo/publisher/n0/d;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/criteo/publisher/n0/b;

.field private final c:Lcom/criteo/publisher/i;

.field private final d:Lcom/criteo/publisher/k0/g;

.field private final e:Lcom/criteo/publisher/l0/c;

.field private final f:Lcom/criteo/publisher/model/u;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/n0/b;Lcom/criteo/publisher/i;Lcom/criteo/publisher/k0/g;Lcom/criteo/publisher/l0/c;Lcom/criteo/publisher/model/u;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/criteo/publisher/a/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 62
    iput-object p1, p0, Lcom/criteo/publisher/a/a;->a:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/criteo/publisher/a/a;->b:Lcom/criteo/publisher/n0/b;

    .line 64
    iput-object p3, p0, Lcom/criteo/publisher/a/a;->c:Lcom/criteo/publisher/i;

    .line 65
    iput-object p4, p0, Lcom/criteo/publisher/a/a;->d:Lcom/criteo/publisher/k0/g;

    .line 66
    iput-object p5, p0, Lcom/criteo/publisher/a/a;->e:Lcom/criteo/publisher/l0/c;

    .line 67
    iput-object p6, p0, Lcom/criteo/publisher/a/a;->f:Lcom/criteo/publisher/model/u;

    .line 68
    iput-object p7, p0, Lcom/criteo/publisher/a/a;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    .line 72
    invoke-direct {p0}, Lcom/criteo/publisher/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/a/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/criteo/publisher/a/a;->c:Lcom/criteo/publisher/i;

    invoke-interface {v2}, Lcom/criteo/publisher/i;->a()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/a/a;->g:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/criteo/publisher/k0/a;

    iget-object v2, p0, Lcom/criteo/publisher/a/a;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/criteo/publisher/a/a;->b:Lcom/criteo/publisher/n0/b;

    iget-object v5, p0, Lcom/criteo/publisher/a/a;->d:Lcom/criteo/publisher/k0/g;

    iget-object v6, p0, Lcom/criteo/publisher/a/a;->f:Lcom/criteo/publisher/model/u;

    iget-object v7, p0, Lcom/criteo/publisher/a/a;->e:Lcom/criteo/publisher/l0/c;

    move-object v1, v9

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/criteo/publisher/k0/a;-><init>(Landroid/content/Context;Lcom/criteo/publisher/n0/d;Lcom/criteo/publisher/n0/b;Lcom/criteo/publisher/k0/g;Lcom/criteo/publisher/model/u;Lcom/criteo/publisher/l0/c;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/criteo/publisher/a/a;->e:Lcom/criteo/publisher/l0/c;

    invoke-virtual {v0}, Lcom/criteo/publisher/l0/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/criteo/publisher/a/a;->e:Lcom/criteo/publisher/l0/c;

    .line 115
    invoke-virtual {v0}, Lcom/criteo/publisher/l0/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/criteo/publisher/a/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/criteo/publisher/a/a;->c:Lcom/criteo/publisher/i;

    invoke-interface {v1}, Lcom/criteo/publisher/i;->a()J

    move-result-wide v1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 102
    const-string v0, "Active"

    invoke-direct {p0, v0}, Lcom/criteo/publisher/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 106
    const-string v0, "Inactive"

    invoke-direct {p0, v0}, Lcom/criteo/publisher/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 98
    const-string v0, "Launch"

    invoke-direct {p0, v0}, Lcom/criteo/publisher/a/a;->a(Ljava/lang/String;)V

    return-void
.end method
