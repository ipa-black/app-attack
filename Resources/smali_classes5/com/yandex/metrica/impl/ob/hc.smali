.class public Lcom/yandex/metrica/impl/ob/hc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ic;

.field private final b:Lcom/yandex/metrica/impl/ob/jc;

.field private final c:Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;

.field private d:Lcom/yandex/metrica/impl/ob/mc;

.field private final e:Lcom/yandex/metrica/impl/ob/E;

.field private final f:Lcom/yandex/metrica/impl/ob/H2;

.field private final g:Lcom/yandex/metrica/impl/ob/Xc;

.field private final h:Lcom/yandex/metrica/impl/ob/w;

.field private i:Z

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ic;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Xc;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ic;->a:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Sb;->a:Landroid/content/Context;

    .line 5
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/ic;->e:Lcom/yandex/metrica/impl/ob/mc;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/mc;->m:Lcom/yandex/metrica/impl/ob/Xb;

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Xc;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Xb;)V

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/hc;-><init>(Lcom/yandex/metrica/impl/ob/ic;Lcom/yandex/metrica/impl/ob/Xc;)V

    return-void
.end method

.method private constructor <init>(Lcom/yandex/metrica/impl/ob/ic;Lcom/yandex/metrica/impl/ob/Xc;)V
    .locals 9

    .line 7
    new-instance v2, Lcom/yandex/metrica/impl/ob/jc;

    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ic;->a:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Sb;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/jc;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;

    invoke-direct {v3}, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;-><init>()V

    .line 11
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->c()Lcom/yandex/metrica/impl/ob/E;

    move-result-object v4

    .line 12
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->b()Lcom/yandex/metrica/impl/ob/w;

    move-result-object v5

    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ic;->a:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Sb;->a:Landroid/content/Context;

    .line 13
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/H2;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/H2;

    move-result-object v6

    new-instance v8, Lcom/yandex/metrica/impl/ob/H0$c;

    invoke-direct {v8}, Lcom/yandex/metrica/impl/ob/H0$c;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/yandex/metrica/impl/ob/hc;-><init>(Lcom/yandex/metrica/impl/ob/ic;Lcom/yandex/metrica/impl/ob/jc;Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;Lcom/yandex/metrica/impl/ob/E;Lcom/yandex/metrica/impl/ob/w;Lcom/yandex/metrica/impl/ob/H2;Lcom/yandex/metrica/impl/ob/Xc;Lcom/yandex/metrica/impl/ob/H0$c;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ic;Lcom/yandex/metrica/impl/ob/jc;Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;Lcom/yandex/metrica/impl/ob/E;Lcom/yandex/metrica/impl/ob/w;Lcom/yandex/metrica/impl/ob/H2;Lcom/yandex/metrica/impl/ob/Xc;Lcom/yandex/metrica/impl/ob/H0$c;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/yandex/metrica/impl/ob/hc$a;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/hc$a;-><init>(Lcom/yandex/metrica/impl/ob/hc;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hc;->j:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hc;->a:Lcom/yandex/metrica/impl/ob/ic;

    .line 59
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/hc;->b:Lcom/yandex/metrica/impl/ob/jc;

    .line 60
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/hc;->c:Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;

    .line 61
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/ic;->e:Lcom/yandex/metrica/impl/ob/mc;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/hc;->d:Lcom/yandex/metrica/impl/ob/mc;

    .line 62
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/hc;->e:Lcom/yandex/metrica/impl/ob/E;

    .line 63
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/hc;->h:Lcom/yandex/metrica/impl/ob/w;

    .line 64
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/hc;->f:Lcom/yandex/metrica/impl/ob/H2;

    .line 65
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/hc;->g:Lcom/yandex/metrica/impl/ob/Xc;

    .line 66
    invoke-virtual {p6}, Lcom/yandex/metrica/impl/ob/H2;->a()Lcom/yandex/metrica/impl/ob/I2;

    move-result-object p2

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ic;->a:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    .line 69
    invoke-virtual {p6}, Lcom/yandex/metrica/impl/ob/H2;->a()Lcom/yandex/metrica/impl/ob/I2;

    move-result-object p3

    .line 70
    invoke-virtual {p8, p1, p7, p3}, Lcom/yandex/metrica/impl/ob/H0$c;->a(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/J0;Lcom/yandex/metrica/impl/ob/H0$d;)Lcom/yandex/metrica/impl/ob/H0;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/G0;->a(Lcom/yandex/metrica/impl/ob/H0;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hc;->d:Lcom/yandex/metrica/impl/ob/mc;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/mc;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hc;->i:Z

    if-eq v1, v0, :cond_2

    .line 13
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/hc;->i:Z

    if-eqz v0, :cond_1

    .line 15
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/hc;->c()V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hc;->a:Lcom/yandex/metrica/impl/ob/ic;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ic;->a:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hc;->j:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;->remove(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/hc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/hc;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hc;->d:Lcom/yandex/metrica/impl/ob/mc;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/yandex/metrica/impl/ob/mc;->h:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hc;->a:Lcom/yandex/metrica/impl/ob/ic;

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/ic;->a:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/hc;->j:Ljava/lang/Runnable;

    invoke-interface {v2, v3, v0, v1}, Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/mc;)V
    .locals 1

    .line 17
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hc;->d:Lcom/yandex/metrica/impl/ob/mc;

    .line 18
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hc;->g:Lcom/yandex/metrica/impl/ob/Xc;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/mc;->m:Lcom/yandex/metrica/impl/ob/Xb;

    .line 20
    :goto_0
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xc;->a(Lcom/yandex/metrica/impl/ob/Xb;)V

    .line 22
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/hc;->a()V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/lc;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/lc;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hc;->c:Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;

    invoke-virtual {v1}, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/lc;->b(J)V

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hc;->c:Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;

    invoke-virtual {v1}, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/lc;->a(J)V

    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hc;->g:Lcom/yandex/metrica/impl/ob/Xc;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Xc;->b()V

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hc;->f:Lcom/yandex/metrica/impl/ob/H2;

    .line 6
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/H2;->a()Lcom/yandex/metrica/impl/ob/I2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/v2;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/F2;->a(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lc;->b(Lorg/json/JSONArray;)V

    .line 10
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hc;->a:Lcom/yandex/metrica/impl/ob/ic;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/ic;->b:Lcom/yandex/metrica/impl/ob/Xj;

    new-instance v2, Lcom/yandex/metrica/impl/ob/hc$b;

    invoke-direct {v2, p0, v0}, Lcom/yandex/metrica/impl/ob/hc$b;-><init>(Lcom/yandex/metrica/impl/ob/hc;Lcom/yandex/metrica/impl/ob/lc;)V

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/Xj;->a(Lcom/yandex/metrica/impl/ob/vj;)V

    .line 15
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hc;->e:Lcom/yandex/metrica/impl/ob/E;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/E;->b()Lcom/yandex/metrica/impl/ob/E$b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lc;->a(Lcom/yandex/metrica/impl/ob/E$b$a;)V

    .line 16
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hc;->h:Lcom/yandex/metrica/impl/ob/w;

    .line 17
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/w;->c()Lcom/yandex/metrica/impl/ob/w$a;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/oc$a;->a(Lcom/yandex/metrica/impl/ob/w$a;)Lcom/yandex/metrica/impl/ob/oc$a;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lc;->a(Lcom/yandex/metrica/impl/ob/oc$a;)V

    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hc;->b:Lcom/yandex/metrica/impl/ob/jc;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/jc;->a(Lcom/yandex/metrica/impl/ob/lc;)V

    .line 22
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hc;->a:Lcom/yandex/metrica/impl/ob/ic;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ic;->c:Lcom/yandex/metrica/impl/ob/Sc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Sc;->a()V

    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hc;->a:Lcom/yandex/metrica/impl/ob/ic;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ic;->d:Lcom/yandex/metrica/impl/ob/Rb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rb;->a()V

    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/hc;->a()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hc;->a:Lcom/yandex/metrica/impl/ob/ic;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ic;->a:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hc;->j:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;->remove(Ljava/lang/Runnable;)V

    return-void
.end method
