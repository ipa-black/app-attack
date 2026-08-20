.class public Lcom/criteo/publisher/f0/l;
.super Ljava/lang/Object;
.source "CsmBidLifecycleListener.java"

# interfaces
.implements Lcom/criteo/publisher/c0/a;


# instance fields
.field private final a:Lcom/criteo/publisher/f0/r;

.field private final b:Lcom/criteo/publisher/f0/x;

.field private final c:Lcom/criteo/publisher/i;

.field private final d:Lcom/criteo/publisher/model/t;

.field private final e:Lcom/criteo/publisher/l0/a;

.field private final f:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$6-lQzJrbH-z4bot-6GZNF4xC2as(Lcom/criteo/publisher/f0/n$a;)V
    .locals 0

    invoke-static {p0}, Lcom/criteo/publisher/f0/l;->a(Lcom/criteo/publisher/f0/n$a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aQqHhMAguwahZb7fCTUFLr4obug(Lcom/criteo/publisher/f0/n$a;)V
    .locals 0

    invoke-static {p0}, Lcom/criteo/publisher/f0/l;->b(Lcom/criteo/publisher/f0/n$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/criteo/publisher/f0/r;Lcom/criteo/publisher/f0/x;Lcom/criteo/publisher/i;Lcom/criteo/publisher/model/t;Lcom/criteo/publisher/l0/a;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/criteo/publisher/f0/l;->a:Lcom/criteo/publisher/f0/r;

    .line 70
    iput-object p2, p0, Lcom/criteo/publisher/f0/l;->b:Lcom/criteo/publisher/f0/x;

    .line 71
    iput-object p3, p0, Lcom/criteo/publisher/f0/l;->c:Lcom/criteo/publisher/i;

    .line 72
    iput-object p4, p0, Lcom/criteo/publisher/f0/l;->d:Lcom/criteo/publisher/model/t;

    .line 73
    iput-object p5, p0, Lcom/criteo/publisher/f0/l;->e:Lcom/criteo/publisher/l0/a;

    .line 74
    iput-object p6, p0, Lcom/criteo/publisher/f0/l;->f:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/f0/l;)Lcom/criteo/publisher/f0/r;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/criteo/publisher/f0/l;->a:Lcom/criteo/publisher/f0/r;

    return-object p0
.end method

.method static synthetic a(Lcom/criteo/publisher/f0/l;Lcom/criteo/publisher/model/o;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/criteo/publisher/f0/l;->c(Lcom/criteo/publisher/model/o;)V

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/f0/l;Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/f0/r$a;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/criteo/publisher/f0/l;->a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/f0/r$a;)V

    return-void
.end method

.method private static synthetic a(Lcom/criteo/publisher/f0/n$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0}, Lcom/criteo/publisher/f0/n$a;->c(Z)Lcom/criteo/publisher/f0/n$a;

    return-void
.end method

.method private a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/f0/r$a;)V
    .locals 2

    .line 291
    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/model/q;

    .line 292
    iget-object v1, p0, Lcom/criteo/publisher/f0/l;->a:Lcom/criteo/publisher/f0/r;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/criteo/publisher/f0/r;->a(Ljava/lang/String;Lcom/criteo/publisher/f0/r$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/criteo/publisher/f0/l;)Lcom/criteo/publisher/f0/x;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/criteo/publisher/f0/l;->b:Lcom/criteo/publisher/f0/x;

    return-object p0
.end method

.method static synthetic b(Lcom/criteo/publisher/f0/l;Lcom/criteo/publisher/model/o;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/criteo/publisher/f0/l;->b(Lcom/criteo/publisher/model/o;)V

    return-void
.end method

.method private static synthetic b(Lcom/criteo/publisher/f0/n$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0, v0}, Lcom/criteo/publisher/f0/n$a;->b(Z)Lcom/criteo/publisher/f0/n$a;

    .line 221
    invoke-virtual {p0, v0}, Lcom/criteo/publisher/f0/n$a;->c(Z)Lcom/criteo/publisher/f0/n$a;

    return-void
.end method

.method private b(Lcom/criteo/publisher/model/o;)V
    .locals 1

    .line 215
    new-instance v0, Lcom/criteo/publisher/f0/l$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/criteo/publisher/f0/l$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/criteo/publisher/f0/l;->a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/f0/r$a;)V

    return-void
.end method

.method private b()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/criteo/publisher/f0/l;->d:Lcom/criteo/publisher/model/t;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/t;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/criteo/publisher/f0/l;->e:Lcom/criteo/publisher/l0/a;

    invoke-virtual {v0}, Lcom/criteo/publisher/l0/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic c(Lcom/criteo/publisher/f0/l;)Lcom/criteo/publisher/i;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/criteo/publisher/f0/l;->c:Lcom/criteo/publisher/i;

    return-object p0
.end method

.method private c(Lcom/criteo/publisher/model/o;)V
    .locals 1

    .line 219
    new-instance v0, Lcom/criteo/publisher/f0/l$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/criteo/publisher/f0/l$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/criteo/publisher/f0/l;->a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/f0/r$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/criteo/publisher/f0/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f0/l;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/criteo/publisher/f0/l$a;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/f0/l$a;-><init>(Lcom/criteo/publisher/f0/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/model/s;)V
    .locals 1

    .line 239
    invoke-direct {p0}, Lcom/criteo/publisher/f0/l;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/criteo/publisher/f0/l;->f:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/criteo/publisher/f0/l$e;

    invoke-direct {v0, p0, p2}, Lcom/criteo/publisher/f0/l$e;-><init>(Lcom/criteo/publisher/f0/l;Lcom/criteo/publisher/model/s;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/criteo/publisher/model/o;)V
    .locals 2

    .line 105
    invoke-direct {p0}, Lcom/criteo/publisher/f0/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f0/l;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/criteo/publisher/f0/l$b;

    invoke-direct {v1, p0, p1}, Lcom/criteo/publisher/f0/l$b;-><init>(Lcom/criteo/publisher/f0/l;Lcom/criteo/publisher/model/o;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Lcom/criteo/publisher/f0/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f0/l;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/criteo/publisher/f0/l$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/criteo/publisher/f0/l$c;-><init>(Lcom/criteo/publisher/f0/l;Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/criteo/publisher/model/o;Ljava/lang/Exception;)V
    .locals 2

    .line 189
    invoke-direct {p0}, Lcom/criteo/publisher/f0/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f0/l;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/criteo/publisher/f0/l$d;

    invoke-direct {v1, p0, p2, p1}, Lcom/criteo/publisher/f0/l$d;-><init>(Lcom/criteo/publisher/f0/l;Ljava/lang/Exception;Lcom/criteo/publisher/model/o;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/criteo/publisher/model/s;)V
    .locals 2

    .line 269
    invoke-direct {p0}, Lcom/criteo/publisher/f0/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f0/l;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/criteo/publisher/f0/l$f;

    invoke-direct {v1, p0, p1}, Lcom/criteo/publisher/f0/l$f;-><init>(Lcom/criteo/publisher/f0/l;Lcom/criteo/publisher/model/s;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
