.class public final Lcom/yandex/metrica/impl/ob/F0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile x:Lcom/yandex/metrica/impl/ob/F0;


# instance fields
.field private final a:Landroid/content/Context;

.field private volatile b:Lcom/yandex/metrica/impl/ob/sg;

.field private volatile c:Lcom/yandex/metrica/impl/ob/kh;

.field private volatile d:Lcom/yandex/metrica/impl/ob/Jf;

.field private volatile e:Lcom/yandex/metrica/impl/ob/ib;

.field private volatile f:Lcom/yandex/metrica/impl/ob/s2;

.field private volatile g:Lcom/yandex/metrica/impl/ob/dh;

.field private volatile h:Lcom/yandex/metrica/impl/ob/Pm;

.field private volatile i:Lcom/yandex/metrica/impl/ob/Xj;

.field private volatile j:Lcom/yandex/metrica/impl/ob/E;

.field private volatile k:Lcom/yandex/metrica/impl/ob/j2;

.field private volatile l:Lcom/yandex/metrica/impl/ob/qc;

.field private volatile m:Lcom/yandex/metrica/impl/ob/xb;

.field private volatile n:Lcom/yandex/metrica/impl/ob/Bb;

.field private volatile o:Lcom/yandex/metrica/impl/ob/I1;

.field private volatile p:Lcom/yandex/metrica/impl/ob/I;

.field private volatile q:Lcom/yandex/metrica/impl/ob/e9;

.field private volatile r:Lcom/yandex/metrica/impl/ob/e8;

.field private s:Lcom/yandex/metrica/impl/ob/e2;

.field private t:Lcom/yandex/metrica/impl/ob/f1;

.field private u:Lcom/yandex/metrica/impl/ob/sd;

.field private final v:Lcom/yandex/metrica/impl/ob/l2;

.field private w:Lcom/yandex/metrica/impl/ob/jd;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/F0$a;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/F0$a;-><init>(Lcom/yandex/metrica/impl/ob/F0;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->v:Lcom/yandex/metrica/impl/ob/l2;

    .line 18
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    .line 19
    new-instance v0, Lcom/yandex/metrica/impl/ob/Pm;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Pm;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->h:Lcom/yandex/metrica/impl/ob/Pm;

    .line 20
    new-instance v0, Lcom/yandex/metrica/impl/ob/f1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->h:Lcom/yandex/metrica/impl/ob/Pm;

    .line 22
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pm;->a()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/f1;-><init>(Landroid/content/Context;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->t:Lcom/yandex/metrica/impl/ob/f1;

    .line 24
    new-instance p1, Lcom/yandex/metrica/impl/ob/E;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->h:Lcom/yandex/metrica/impl/ob/Pm;

    .line 25
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Pm;->a()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->t:Lcom/yandex/metrica/impl/ob/f1;

    .line 26
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/f1;->b()Lcom/yandex/metrica/impl/ob/C;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/E;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/C;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/F0;->j:Lcom/yandex/metrica/impl/ob/E;

    .line 28
    new-instance p1, Lcom/yandex/metrica/impl/ob/e2;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/e2;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/F0;->s:Lcom/yandex/metrica/impl/ob/e2;

    .line 29
    new-instance p1, Lcom/yandex/metrica/impl/ob/jd;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/jd;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/F0;->w:Lcom/yandex/metrica/impl/ob/jd;

    .line 30
    invoke-static {}, Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;->init()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/F0;->x:Lcom/yandex/metrica/impl/ob/F0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/yandex/metrica/impl/ob/F0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/F0;->x:Lcom/yandex/metrica/impl/ob/F0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/yandex/metrica/impl/ob/F0;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/F0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yandex/metrica/impl/ob/F0;->x:Lcom/yandex/metrica/impl/ob/F0;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static g()Lcom/yandex/metrica/impl/ob/F0;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/F0;->x:Lcom/yandex/metrica/impl/ob/F0;

    return-object v0
.end method

.method private y()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->o:Lcom/yandex/metrica/impl/ob/I1;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->o:Lcom/yandex/metrica/impl/ob/I1;

    if-nez v0, :cond_0

    .line 4
    const-class v0, Lcom/yandex/metrica/impl/ob/Ud;

    .line 5
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/fa$b;->a(Ljava/lang/Class;)Lcom/yandex/metrica/impl/ob/fa;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/fa;->a(Landroid/content/Context;)Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    move-result-object v4

    .line 6
    invoke-interface {v4}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/yandex/metrica/impl/ob/Ud;

    .line 7
    new-instance v0, Lcom/yandex/metrica/impl/ob/I1;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    new-instance v5, Lcom/yandex/metrica/impl/ob/be;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/be;-><init>()V

    new-instance v6, Lcom/yandex/metrica/impl/ob/Td;

    invoke-direct {v6, v11}, Lcom/yandex/metrica/impl/ob/Td;-><init>(Lcom/yandex/metrica/impl/ob/Ud;)V

    new-instance v7, Lcom/yandex/metrica/impl/ob/ge;

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/ge;-><init>()V

    new-instance v8, Lcom/yandex/metrica/impl/ob/ae;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    invoke-direct {v8, v1}, Lcom/yandex/metrica/impl/ob/ae;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/yandex/metrica/impl/ob/ce;

    .line 8
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v1

    const-string v2, "GlobalServiceLocator.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/F0;->s()Lcom/yandex/metrica/impl/ob/e9;

    move-result-object v1

    const-string v2, "GlobalServiceLocator.get\u2026ance().servicePreferences"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v1}, Lcom/yandex/metrica/impl/ob/ce;-><init>(Lcom/yandex/metrica/impl/ob/e9;)V

    .line 9
    new-instance v10, Lcom/yandex/metrica/impl/ob/Vd;

    invoke-direct {v10}, Lcom/yandex/metrica/impl/ob/Vd;-><init>()V

    const-string v12, "[PreloadInfoStorage]"

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/yandex/metrica/impl/ob/I1;-><init>(Landroid/content/Context;Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/t0;Lcom/yandex/metrica/impl/ob/z2;Lcom/yandex/metrica/impl/ob/r2;Lcom/yandex/metrica/impl/ob/b2;Lcom/yandex/metrica/impl/ob/Y1;Lcom/yandex/metrica/impl/ob/e0;Lcom/yandex/metrica/impl/ob/Ud;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->o:Lcom/yandex/metrica/impl/ob/I1;

    .line 22
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/Bb;
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->n:Lcom/yandex/metrica/impl/ob/Bb;

    if-nez v0, :cond_1

    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->n:Lcom/yandex/metrica/impl/ob/Bb;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/Bb;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    .line 29
    invoke-static {}, Lcom/yandex/metrica/impl/ob/Cb;->a()Lcom/yandex/metrica/appsetid/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Bb;-><init>(Landroid/content/Context;Lcom/yandex/metrica/appsetid/d;)V

    .line 30
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->n:Lcom/yandex/metrica/impl/ob/Bb;

    .line 32
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->n:Lcom/yandex/metrica/impl/ob/Bb;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/k2;)V
    .locals 2

    monitor-enter p0

    .line 35
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/j2;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/j2;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/k2;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->k:Lcom/yandex/metrica/impl/ob/j2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 6

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->m:Lcom/yandex/metrica/impl/ob/xb;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->m:Lcom/yandex/metrica/impl/ob/xb;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/xb;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->g:Lcom/yandex/metrica/impl/ob/dh;

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->g:Lcom/yandex/metrica/impl/ob/dh;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/dh;->b(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 13
    :cond_1
    invoke-static {}, Lcom/yandex/metrica/coreutils/services/UtilityServiceLocator;->getInstance()Lcom/yandex/metrica/coreutils/services/UtilityServiceLocator;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/coreutils/services/UtilityServiceConfiguration;

    .line 15
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->o()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->B()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/coreutils/services/UtilityServiceConfiguration;-><init>(JJ)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/coreutils/services/UtilityServiceLocator;->updateConfiguration(Lcom/yandex/metrica/coreutils/services/UtilityServiceConfiguration;)V

    .line 21
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->e:Lcom/yandex/metrica/impl/ob/ib;

    if-eqz v0, :cond_2

    .line 22
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->e:Lcom/yandex/metrica/impl/ob/ib;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ib;->b(Lcom/yandex/metrica/impl/ob/pi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Lcom/yandex/metrica/impl/ob/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->t:Lcom/yandex/metrica/impl/ob/f1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/f1;->a()Lcom/yandex/metrica/impl/ob/w;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/E;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->j:Lcom/yandex/metrica/impl/ob/E;

    return-object v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/I;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->p:Lcom/yandex/metrica/impl/ob/I;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->p:Lcom/yandex/metrica/impl/ob/I;

    if-nez v0, :cond_0

    .line 4
    const-class v0, Lcom/yandex/metrica/impl/ob/v3;

    .line 5
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/fa$b;->a(Ljava/lang/Class;)Lcom/yandex/metrica/impl/ob/fa;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/fa;->a(Landroid/content/Context;)Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    move-result-object v4

    .line 6
    new-instance v0, Lcom/yandex/metrica/impl/ob/I;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    new-instance v5, Lcom/yandex/metrica/impl/ob/w3;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/w3;-><init>()V

    new-instance v6, Lcom/yandex/metrica/impl/ob/r3;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/r3;-><init>()V

    new-instance v7, Lcom/yandex/metrica/impl/ob/y3;

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/y3;-><init>()V

    new-instance v8, Lcom/yandex/metrica/impl/ob/a2;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    invoke-direct {v8, v1}, Lcom/yandex/metrica/impl/ob/a2;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/yandex/metrica/impl/ob/x3;

    .line 13
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/F0;->s()Lcom/yandex/metrica/impl/ob/e9;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/yandex/metrica/impl/ob/x3;-><init>(Lcom/yandex/metrica/impl/ob/e9;)V

    new-instance v10, Lcom/yandex/metrica/impl/ob/s3;

    invoke-direct {v10}, Lcom/yandex/metrica/impl/ob/s3;-><init>()V

    .line 15
    invoke-interface {v4}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/yandex/metrica/impl/ob/v3;

    const-string v12, "[ClidsInfoStorage]"

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/yandex/metrica/impl/ob/I;-><init>(Landroid/content/Context;Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/t0;Lcom/yandex/metrica/impl/ob/z2;Lcom/yandex/metrica/impl/ob/r2;Lcom/yandex/metrica/impl/ob/b2;Lcom/yandex/metrica/impl/ob/Y1;Lcom/yandex/metrica/impl/ob/e0;Lcom/yandex/metrica/impl/ob/v3;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->p:Lcom/yandex/metrica/impl/ob/I;

    .line 19
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->p:Lcom/yandex/metrica/impl/ob/I;

    return-object v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    return-object v0
.end method

.method public f()Lcom/yandex/metrica/impl/ob/ib;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->e:Lcom/yandex/metrica/impl/ob/ib;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->e:Lcom/yandex/metrica/impl/ob/ib;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/ib;

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->t:Lcom/yandex/metrica/impl/ob/f1;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/f1;->a()Lcom/yandex/metrica/impl/ob/w;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/yandex/metrica/impl/ob/hb;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/hb;-><init>()V

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ib;-><init>(Lcom/yandex/metrica/impl/ob/w;Lcom/yandex/metrica/impl/ob/hb;)V

    .line 8
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->e:Lcom/yandex/metrica/impl/ob/ib;

    .line 10
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->e:Lcom/yandex/metrica/impl/ob/ib;

    return-object v0
.end method

.method public h()Lcom/yandex/metrica/impl/ob/f1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->t:Lcom/yandex/metrica/impl/ob/f1;

    return-object v0
.end method

.method public i()Lcom/yandex/metrica/impl/ob/qc;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->l:Lcom/yandex/metrica/impl/ob/qc;

    if-nez v0, :cond_1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->l:Lcom/yandex/metrica/impl/ob/qc;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/yandex/metrica/impl/ob/qc;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/qc;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->l:Lcom/yandex/metrica/impl/ob/qc;

    .line 9
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public j()Lcom/yandex/metrica/impl/ob/jd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->w:Lcom/yandex/metrica/impl/ob/jd;

    return-object v0
.end method

.method public k()Lcom/yandex/metrica/impl/ob/I1;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/F0;->y()V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->o:Lcom/yandex/metrica/impl/ob/I1;

    return-object v0
.end method

.method public l()Lcom/yandex/metrica/impl/ob/Jf;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->d:Lcom/yandex/metrica/impl/ob/Jf;

    if-nez v0, :cond_3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->d:Lcom/yandex/metrica/impl/ob/Jf;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jf;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    const-class v1, Lcom/yandex/metrica/impl/ob/Jf$e;

    .line 6
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/fa$b;->a(Ljava/lang/Class;)Lcom/yandex/metrica/impl/ob/fa;

    move-result-object v1

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    invoke-interface {v1, v3}, Lcom/yandex/metrica/impl/ob/fa;->a(Landroid/content/Context;)Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/F0;->u()Lcom/yandex/metrica/impl/ob/s2;

    move-result-object v4

    .line 8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->c:Lcom/yandex/metrica/impl/ob/kh;

    if-nez v1, :cond_1

    .line 9
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->c:Lcom/yandex/metrica/impl/ob/kh;

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/yandex/metrica/impl/ob/kh;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/kh;-><init>()V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->c:Lcom/yandex/metrica/impl/ob/kh;

    .line 13
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 15
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/F0;->c:Lcom/yandex/metrica/impl/ob/kh;

    .line 16
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->h:Lcom/yandex/metrica/impl/ob/Pm;

    .line 17
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pm;->g()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v6

    .line 18
    new-instance v7, Lcom/yandex/metrica/impl/ob/Ml;

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/Ml;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/impl/ob/Jf;-><init>(Landroid/content/Context;Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/s2;Lcom/yandex/metrica/impl/ob/kh;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/Rl;)V

    .line 19
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->d:Lcom/yandex/metrica/impl/ob/Jf;

    .line 22
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 24
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->d:Lcom/yandex/metrica/impl/ob/Jf;

    return-object v0
.end method

.method public m()Lcom/yandex/metrica/impl/ob/sg;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->b:Lcom/yandex/metrica/impl/ob/sg;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->b:Lcom/yandex/metrica/impl/ob/sg;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/sg;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/sg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->b:Lcom/yandex/metrica/impl/ob/sg;

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->b:Lcom/yandex/metrica/impl/ob/sg;

    return-object v0
.end method

.method public n()Lcom/yandex/metrica/impl/ob/e2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->s:Lcom/yandex/metrica/impl/ob/e2;

    return-object v0
.end method

.method public o()Lcom/yandex/metrica/impl/ob/dh;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->g:Lcom/yandex/metrica/impl/ob/dh;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->g:Lcom/yandex/metrica/impl/ob/dh;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/dh;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/F0;->h:Lcom/yandex/metrica/impl/ob/Pm;

    .line 6
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Pm;->g()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dh;-><init>(Landroid/content/Context;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->g:Lcom/yandex/metrica/impl/ob/dh;

    .line 9
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->g:Lcom/yandex/metrica/impl/ob/dh;

    return-object v0
.end method

.method public declared-synchronized p()Lcom/yandex/metrica/impl/ob/j2;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->k:Lcom/yandex/metrica/impl/ob/j2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public q()Lcom/yandex/metrica/impl/ob/Pm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->h:Lcom/yandex/metrica/impl/ob/Pm;

    return-object v0
.end method

.method public r()Lcom/yandex/metrica/impl/ob/xb;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->m:Lcom/yandex/metrica/impl/ob/xb;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->m:Lcom/yandex/metrica/impl/ob/xb;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/xb;

    new-instance v2, Lcom/yandex/metrica/impl/ob/xb$h;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/xb$h;-><init>()V

    new-instance v3, Lcom/yandex/metrica/impl/ob/xb$d;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/xb$d;-><init>()V

    new-instance v4, Lcom/yandex/metrica/impl/ob/xb$c;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/xb$c;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->h:Lcom/yandex/metrica/impl/ob/Pm;

    .line 6
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pm;->a()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v5

    const-string v6, "ServiceInternal"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/xb;-><init>(Lcom/yandex/metrica/impl/ob/xb$g;Lcom/yandex/metrica/impl/ob/xb$g;Lcom/yandex/metrica/impl/ob/xb$g;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->m:Lcom/yandex/metrica/impl/ob/xb;

    .line 10
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->m:Lcom/yandex/metrica/impl/ob/xb;

    return-object v0
.end method

.method public s()Lcom/yandex/metrica/impl/ob/e9;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->q:Lcom/yandex/metrica/impl/ob/e9;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->q:Lcom/yandex/metrica/impl/ob/e9;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/e9;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    .line 5
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ja;->i()Lcom/yandex/metrica/impl/ob/S7;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/e9;-><init>(Lcom/yandex/metrica/impl/ob/S7;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->q:Lcom/yandex/metrica/impl/ob/e9;

    .line 9
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->q:Lcom/yandex/metrica/impl/ob/e9;

    return-object v0
.end method

.method public declared-synchronized t()Lcom/yandex/metrica/impl/ob/sd;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->u:Lcom/yandex/metrica/impl/ob/sd;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/sd;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/sd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->u:Lcom/yandex/metrica/impl/ob/sd;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->u:Lcom/yandex/metrica/impl/ob/sd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public u()Lcom/yandex/metrica/impl/ob/s2;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->f:Lcom/yandex/metrica/impl/ob/s2;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->f:Lcom/yandex/metrica/impl/ob/s2;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/s2;

    new-instance v1, Lcom/yandex/metrica/impl/ob/s2$b;

    .line 5
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/F0;->s()Lcom/yandex/metrica/impl/ob/e9;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/s2$b;-><init>(Lcom/yandex/metrica/impl/ob/e9;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/s2;-><init>(Lcom/yandex/metrica/impl/ob/s2$a;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->f:Lcom/yandex/metrica/impl/ob/s2;

    .line 8
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->f:Lcom/yandex/metrica/impl/ob/s2;

    return-object v0
.end method

.method public v()Lcom/yandex/metrica/impl/ob/Xj;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->i:Lcom/yandex/metrica/impl/ob/Xj;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->i:Lcom/yandex/metrica/impl/ob/Xj;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/Xj;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/F0;->h:Lcom/yandex/metrica/impl/ob/Pm;

    .line 6
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Pm;->h()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Xj;-><init>(Landroid/content/Context;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->i:Lcom/yandex/metrica/impl/ob/Xj;

    .line 9
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->i:Lcom/yandex/metrica/impl/ob/Xj;

    return-object v0
.end method

.method public declared-synchronized w()Lcom/yandex/metrica/impl/ob/e8;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->r:Lcom/yandex/metrica/impl/ob/e8;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/e8;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/e8;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->r:Lcom/yandex/metrica/impl/ob/e8;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->r:Lcom/yandex/metrica/impl/ob/e8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized x()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/coreutils/services/UtilityServiceLocator;->getInstance()Lcom/yandex/metrica/coreutils/services/UtilityServiceLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/services/UtilityServiceLocator;->initAsync()V

    .line 2
    invoke-static {}, Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;->getInstance()Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;->initAsync()V

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/F0;->t:Lcom/yandex/metrica/impl/ob/f1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/F0;->v:Lcom/yandex/metrica/impl/ob/l2;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/f1;->a(Lcom/yandex/metrica/impl/ob/l2;)V

    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/F0;->l()Lcom/yandex/metrica/impl/ob/Jf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Jf;->a()V

    .line 5
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/F0;->y()V

    .line 6
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/F0;->i()Lcom/yandex/metrica/impl/ob/qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/qc;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
