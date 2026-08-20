.class public Lcom/yandex/metrica/impl/ob/ri;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/metrica/impl/ob/I3;

.field private final c:Lcom/yandex/metrica/impl/ob/oi;

.field private final d:Lcom/yandex/metrica/impl/ob/pi$b;

.field private volatile e:Lcom/yandex/metrica/networktasks/api/NetworkTask;

.field private f:Lcom/yandex/metrica/impl/ob/fi;

.field private final g:Lcom/yandex/metrica/coreutils/services/TimeProvider;

.field private final h:Lcom/yandex/metrica/impl/ob/I;

.field private final i:Lcom/yandex/metrica/impl/ob/Rh;

.field private final j:Lcom/yandex/metrica/impl/ob/l3;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/Mg$b;Lcom/yandex/metrica/impl/ob/oi;Lcom/yandex/metrica/impl/ob/pi$b;Lcom/yandex/metrica/impl/ob/Pl;Lcom/yandex/metrica/coreutils/services/TimeProvider;Lcom/yandex/metrica/impl/ob/I;Lcom/yandex/metrica/impl/ob/Rh;Lcom/yandex/metrica/impl/ob/l3;)V
    .locals 12

    .line 13
    invoke-virtual/range {p5 .. p5}, Lcom/yandex/metrica/impl/ob/pi$b;->a()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 14
    invoke-direct/range {v0 .. v11}, Lcom/yandex/metrica/impl/ob/ri;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/Mg$b;Lcom/yandex/metrica/impl/ob/oi;Lcom/yandex/metrica/impl/ob/pi$b;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/Pl;Lcom/yandex/metrica/coreutils/services/TimeProvider;Lcom/yandex/metrica/impl/ob/I;Lcom/yandex/metrica/impl/ob/Rh;Lcom/yandex/metrica/impl/ob/l3;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/Mg$b;Lcom/yandex/metrica/impl/ob/oi;Lcom/yandex/metrica/impl/ob/pi$b;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/Pl;Lcom/yandex/metrica/coreutils/services/TimeProvider;Lcom/yandex/metrica/impl/ob/I;Lcom/yandex/metrica/impl/ob/Rh;Lcom/yandex/metrica/impl/ob/l3;)V
    .locals 13

    move-object v1, p1

    .line 15
    new-instance v7, Lcom/yandex/metrica/impl/ob/fi;

    new-instance v0, Lcom/yandex/metrica/impl/ob/Mg$c;

    .line 23
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/I3;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/yandex/metrica/impl/ob/Mg$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v2, p3

    move-object/from16 v5, p6

    invoke-direct {v7, v0, v5, v2}, Lcom/yandex/metrica/impl/ob/fi;-><init>(Lcom/yandex/metrica/impl/ob/Mg$c;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/Mg$b;)V

    .line 30
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ej;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ej;

    move-result-object v0

    new-instance v2, Lcom/yandex/metrica/impl/ob/ij;

    move-object/from16 v4, p5

    invoke-direct {v2, v4}, Lcom/yandex/metrica/impl/ob/ij;-><init>(Lcom/yandex/metrica/impl/ob/pi$b;)V

    invoke-virtual {v0, p1, v2}, Lcom/yandex/metrica/impl/ob/ej;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/bj;)Lcom/yandex/metrica/impl/ob/dj;

    move-result-object v11

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v6, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v12, p11

    .line 31
    invoke-direct/range {v0 .. v12}, Lcom/yandex/metrica/impl/ob/ri;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/oi;Lcom/yandex/metrica/impl/ob/pi$b;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/Pl;Lcom/yandex/metrica/impl/ob/fi;Lcom/yandex/metrica/coreutils/services/TimeProvider;Lcom/yandex/metrica/impl/ob/I;Lcom/yandex/metrica/impl/ob/Rh;Lcom/yandex/metrica/impl/ob/dj;Lcom/yandex/metrica/impl/ob/l3;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/oi;Lcom/yandex/metrica/impl/ob/pi$b;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/Pl;Lcom/yandex/metrica/impl/ob/fi;Lcom/yandex/metrica/coreutils/services/TimeProvider;Lcom/yandex/metrica/impl/ob/I;Lcom/yandex/metrica/impl/ob/Rh;Lcom/yandex/metrica/impl/ob/dj;Lcom/yandex/metrica/impl/ob/l3;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ri;->a:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ri;->b:Lcom/yandex/metrica/impl/ob/I3;

    .line 35
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ri;->c:Lcom/yandex/metrica/impl/ob/oi;

    .line 36
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ri;->d:Lcom/yandex/metrica/impl/ob/pi$b;

    .line 37
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/ri;->f:Lcom/yandex/metrica/impl/ob/fi;

    .line 38
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/ri;->g:Lcom/yandex/metrica/coreutils/services/TimeProvider;

    .line 39
    iput-object p9, p0, Lcom/yandex/metrica/impl/ob/ri;->h:Lcom/yandex/metrica/impl/ob/I;

    .line 40
    iput-object p10, p0, Lcom/yandex/metrica/impl/ob/ri;->i:Lcom/yandex/metrica/impl/ob/Rh;

    .line 41
    iput-object p12, p0, Lcom/yandex/metrica/impl/ob/ri;->j:Lcom/yandex/metrica/impl/ob/l3;

    .line 42
    invoke-direct {p0, p6, p11, p5}, Lcom/yandex/metrica/impl/ob/ri;->a(Lcom/yandex/metrica/impl/ob/Pl;Lcom/yandex/metrica/impl/ob/dj;Lcom/yandex/metrica/impl/ob/pi;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Mg$b;Lcom/yandex/metrica/impl/ob/oi;)V
    .locals 11

    .line 1
    new-instance v2, Lcom/yandex/metrica/impl/ob/E3;

    invoke-direct {v2, p2}, Lcom/yandex/metrica/impl/ob/E3;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/yandex/metrica/impl/ob/pi$b;

    invoke-direct {v5, p1}, Lcom/yandex/metrica/impl/ob/pi$b;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/yandex/metrica/impl/ob/Pl;

    invoke-direct {v6, p1}, Lcom/yandex/metrica/impl/ob/Pl;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;

    invoke-direct {v7}, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;-><init>()V

    .line 9
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/F0;->d()Lcom/yandex/metrica/impl/ob/I;

    move-result-object v8

    new-instance v9, Lcom/yandex/metrica/impl/ob/Rh;

    invoke-direct {v9}, Lcom/yandex/metrica/impl/ob/Rh;-><init>()V

    .line 11
    invoke-static {}, Lcom/yandex/metrica/impl/ob/l3;->a()Lcom/yandex/metrica/impl/ob/l3;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 12
    invoke-direct/range {v0 .. v10}, Lcom/yandex/metrica/impl/ob/ri;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/Mg$b;Lcom/yandex/metrica/impl/ob/oi;Lcom/yandex/metrica/impl/ob/pi$b;Lcom/yandex/metrica/impl/ob/Pl;Lcom/yandex/metrica/coreutils/services/TimeProvider;Lcom/yandex/metrica/impl/ob/I;Lcom/yandex/metrica/impl/ob/Rh;Lcom/yandex/metrica/impl/ob/l3;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ri;)Lcom/yandex/metrica/impl/ob/I;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/ri;->h:Lcom/yandex/metrica/impl/ob/I;

    return-object p0
.end method

.method private a(Lcom/yandex/metrica/impl/ob/Pl;Lcom/yandex/metrica/impl/ob/dj;Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 2

    .line 2
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/pi;->a()Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object v0

    .line 3
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/pi;->V()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/ni;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/dj;->a()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/pi$a;->k(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object v0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Pl;->a()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/pi;->i()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/ni;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 8
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/pi$a;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/pi$a;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object v0

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/pi$a;->a()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ri;->b(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ri;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->c:Lcom/yandex/metrica/impl/ob/oi;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ri;->b:Lcom/yandex/metrica/impl/ob/I3;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/I3;->b()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/yandex/metrica/impl/ob/ei$a;

    .line 170
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/ei$a;->a:Lcom/yandex/metrica/impl/ob/ei;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/ei;->a(Lcom/yandex/metrica/impl/ob/ei;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 171
    :try_start_0
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/ei$a;->a:Lcom/yandex/metrica/impl/ob/ei;

    invoke-static {v3, p1}, Lcom/yandex/metrica/impl/ob/ei;->a(Lcom/yandex/metrica/impl/ob/ei;Lcom/yandex/metrica/impl/ob/pi;)Lcom/yandex/metrica/impl/ob/pi;

    .line 172
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ei$a;->a:Lcom/yandex/metrica/impl/ob/ei;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ei;->b(Lcom/yandex/metrica/impl/ob/ei;)Lcom/yandex/metrica/impl/ob/rm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/rm;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 178
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 179
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/ki;

    .line 183
    invoke-interface {v1, p1}, Lcom/yandex/metrica/impl/ob/ki;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 184
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized b(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 3

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->f:Lcom/yandex/metrica/impl/ob/fi;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Gg;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->d:Lcom/yandex/metrica/impl/ob/pi$b;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/pi$b;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 4
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/F0;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->j:Lcom/yandex/metrica/impl/ob/l3;

    new-instance v1, Lcom/yandex/metrica/impl/ob/q3;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ri;->b:Lcom/yandex/metrica/impl/ob/I3;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/I3;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/yandex/metrica/impl/ob/q3;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/pi;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/l3;->a(Lcom/yandex/metrica/impl/ob/n3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/I3;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->b:Lcom/yandex/metrica/impl/ob/I3;

    return-object v0
.end method

.method protected a(Lcom/yandex/metrica/impl/ob/Ui;Lcom/yandex/metrica/impl/ob/Mg;Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/pi;
    .locals 8

    .line 52
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Mg;->C()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Tl;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Mg;->B()Lcom/yandex/metrica/impl/ob/v3$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/v3$a;->b()Ljava/util/Map;

    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->n()Ljava/lang/String;

    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ri;->f:Lcom/yandex/metrica/impl/ob/fi;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/Gg;->d()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/pi;->n()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 58
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/Tl;->d(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 60
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/Tl;->d(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 61
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ri;->f:Lcom/yandex/metrica/impl/ob/fi;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/Gg;->d()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/pi;->i()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->i()Ljava/lang/String;

    move-result-object v3

    .line 65
    :cond_2
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/ri;->f:Lcom/yandex/metrica/impl/ob/fi;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/Gg;->d()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object v4

    .line 66
    new-instance v5, Lcom/yandex/metrica/impl/ob/pi$a;

    new-instance v6, Lcom/yandex/metrica/impl/ob/qi$b;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->e()Lcom/yandex/metrica/impl/ob/Sh;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/yandex/metrica/impl/ob/qi$b;-><init>(Lcom/yandex/metrica/impl/ob/Sh;)V

    invoke-direct {v5, v6}, Lcom/yandex/metrica/impl/ob/pi$a;-><init>(Lcom/yandex/metrica/impl/ob/qi$b;)V

    .line 67
    invoke-virtual {v5, v3}, Lcom/yandex/metrica/impl/ob/pi$a;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object v3

    .line 68
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/pi$a;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object v3

    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/ri;->g:Lcom/yandex/metrica/coreutils/services/TimeProvider;

    .line 69
    invoke-interface {v5}, Lcom/yandex/metrica/coreutils/services/TimeProvider;->currentTimeSeconds()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/yandex/metrica/impl/ob/pi$a;->c(J)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object v3

    .line 70
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/pi;->V()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/pi$a;->k(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object v3

    .line 71
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/pi$a;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object v3

    .line 72
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->G()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/pi$a;->c(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object v3

    .line 73
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Mg;->J()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/yandex/metrica/impl/ob/pi$a;->b(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 74
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->y()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/yandex/metrica/impl/ob/pi$a;->i(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 75
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->r()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/yandex/metrica/impl/ob/pi$a;->e(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 76
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/yandex/metrica/impl/ob/pi$a;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 77
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/yandex/metrica/impl/ob/pi$a;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 78
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 79
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->j()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 80
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->t()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/yandex/metrica/impl/ob/pi$a;->g(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 81
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->g()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 82
    invoke-virtual {p2, v2}, Lcom/yandex/metrica/impl/ob/pi$a;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 83
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/pi$a;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->i:Lcom/yandex/metrica/impl/ob/Rh;

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 130
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v0

    goto :goto_1

    .line 133
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 134
    :goto_1
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/pi$a;->c(Z)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 138
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Tl;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/pi$a;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 139
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->E()Lcom/yandex/metrica/impl/ob/di;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Lcom/yandex/metrica/impl/ob/di;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 140
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->q()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/pi$a;->d(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 141
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->z()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/pi$a;->j(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 142
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/pi$a;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 143
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->w()Lcom/yandex/metrica/impl/ob/ai;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Lcom/yandex/metrica/impl/ob/ai;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 144
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->v()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/pi$a;->h(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 145
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->C()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Lcom/yandex/metrica/impl/ob/ci;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 146
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->H()Lcom/yandex/metrica/impl/ob/ti;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Lcom/yandex/metrica/impl/ob/ti;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Z)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    .line 149
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, p3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/yandex/metrica/impl/ob/pi$a;->b(J)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->f:Lcom/yandex/metrica/impl/ob/fi;

    .line 150
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Gg;->b()Lcom/yandex/metrica/impl/ob/Eg;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Mg;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Mg;->a(J)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/yandex/metrica/impl/ob/pi$a;->a(J)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    const/4 p3, 0x0

    .line 151
    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/pi$a;->b(Z)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 152
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->p()Lcom/yandex/metrica/impl/ob/Zh;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Lcom/yandex/metrica/impl/ob/Zh;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 153
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->B()Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 154
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->L()Lcom/yandex/metrica/impl/ob/wl;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Lcom/yandex/metrica/impl/ob/wl;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 155
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->K()Lcom/yandex/metrica/impl/ob/hl;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/pi$a;->b(Lcom/yandex/metrica/impl/ob/hl;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 156
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->M()Lcom/yandex/metrica/impl/ob/hl;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/pi$a;->c(Lcom/yandex/metrica/impl/ob/hl;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 157
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->J()Lcom/yandex/metrica/impl/ob/hl;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Lcom/yandex/metrica/impl/ob/hl;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 158
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->I()Lcom/yandex/metrica/impl/ob/ui;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Lcom/yandex/metrica/impl/ob/ui;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 159
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->c()Lcom/yandex/metrica/impl/ob/Ph;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Lcom/yandex/metrica/impl/ob/Ph;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 160
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->k()Lcom/yandex/metrica/impl/ob/ra;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Lcom/yandex/metrica/impl/ob/ra;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 161
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->s()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/pi$a;->f(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 162
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->b()Lcom/yandex/metrica/impl/ob/i;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Lcom/yandex/metrica/impl/ob/i;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 163
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->a()Lcom/yandex/metrica/impl/ob/Oh;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Lcom/yandex/metrica/impl/ob/Oh;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 164
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->l()Lcom/yandex/metrica/impl/ob/w0;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Lcom/yandex/metrica/impl/ob/w0;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 165
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->m()Lcom/yandex/metrica/impl/ob/Uh;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Lcom/yandex/metrica/impl/ob/Uh;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 166
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->F()Lcom/yandex/metrica/impl/ob/si;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/pi$a;->a(Lcom/yandex/metrica/impl/ob/si;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p2

    .line 167
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->u()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/pi$a;->b(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi$a;->a()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/Mg$b;)V
    .locals 5

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->f:Lcom/yandex/metrica/impl/ob/fi;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/fi;->a(Lcom/yandex/metrica/impl/ob/Mg$b;)V

    .line 189
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ri;->f:Lcom/yandex/metrica/impl/ob/fi;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Gg;->b()Lcom/yandex/metrica/impl/ob/Eg;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/Mg;

    .line 190
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Mg;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Mg;->G()Ljava/util/List;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Mg;->J()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ri;->f:Lcom/yandex/metrica/impl/ob/fi;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Gg;->d()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/pi;->a()Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ob/pi$a;->b(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object v3

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 200
    :goto_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 201
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Mg;->J()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 202
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ri;->f:Lcom/yandex/metrica/impl/ob/fi;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Gg;->d()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->a()Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/pi$a;->b(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/pi$a;

    move-result-object v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 207
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/pi$a;->a()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object p1

    .line 208
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ri;->b(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ri;->a(Lcom/yandex/metrica/impl/ob/pi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/Ui;Lcom/yandex/metrica/impl/ob/Mg;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/Ui;",
            "Lcom/yandex/metrica/impl/ob/Mg;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    invoke-static {p3}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Date"

    .line 35
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 37
    invoke-static {p3}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 39
    :try_start_1
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "E, d MMM yyyy HH:mm:ss z"

    :try_start_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 42
    invoke-virtual {v0, p3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    move-object p3, v1

    :goto_0
    const-wide/16 v2, 0x0

    .line 43
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-nez p3, :cond_1

    move-object p3, v0

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->N()Ljava/lang/Long;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/yandex/metrica/impl/ob/fm;->c()Lcom/yandex/metrica/impl/ob/fm;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v0}, Lcom/yandex/metrica/impl/ob/fm;->a(JLjava/lang/Long;)V

    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/ri;->a(Lcom/yandex/metrica/impl/ob/Ui;Lcom/yandex/metrica/impl/ob/Mg;Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/pi;

    move-result-object p1

    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 47
    :try_start_4
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ri;->e:Lcom/yandex/metrica/networktasks/api/NetworkTask;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit p0

    .line 48
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ri;->b(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 49
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 50
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ri;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    return-void

    :catchall_1
    move-exception p1

    :try_start_6
    monitor-exit p0

    throw p1

    :catchall_2
    move-exception p1

    .line 51
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/gi;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 14
    :try_start_0
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->e:Lcom/yandex/metrica/networktasks/api/NetworkTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->c:Lcom/yandex/metrica/impl/ob/oi;

    .line 16
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ri;->b:Lcom/yandex/metrica/impl/ob/I3;

    .line 17
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/I3;->b()Ljava/lang/String;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ri;->f:Lcom/yandex/metrica/impl/ob/fi;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Gg;->d()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object v2

    .line 19
    check-cast v0, Lcom/yandex/metrica/impl/ob/ei$a;

    .line 20
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/ei$a;->a:Lcom/yandex/metrica/impl/ob/ei;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/ei;->a(Lcom/yandex/metrica/impl/ob/ei;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 21
    :try_start_1
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ei$a;->a:Lcom/yandex/metrica/impl/ob/ei;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ei;->b(Lcom/yandex/metrica/impl/ob/ei;)Lcom/yandex/metrica/impl/ob/rm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/rm;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 27
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 28
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/ki;

    .line 31
    invoke-interface {v1, p1, v2}, Lcom/yandex/metrica/impl/ob/ki;->a(Lcom/yandex/metrica/impl/ob/gi;Lcom/yandex/metrica/impl/ob/pi;)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 32
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/List;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->f:Lcom/yandex/metrica/impl/ob/fi;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Gg;->d()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/yandex/metrica/impl/ob/ri$a;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/ri$a;-><init>(Lcom/yandex/metrica/impl/ob/ri;)V

    .line 187
    invoke-static {v0, p1, p2, v1}, Lcom/yandex/metrica/impl/ob/ni;->a(Lcom/yandex/metrica/impl/ob/pi;Ljava/util/Collection;Ljava/util/Map;Lkotlin/jvm/functions/Function0;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->a:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized c()Lcom/yandex/metrica/networktasks/api/NetworkTask;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ri;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->e:Lcom/yandex/metrica/networktasks/api/NetworkTask;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->f:Lcom/yandex/metrica/impl/ob/fi;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Gg;->b()Lcom/yandex/metrica/impl/ob/Eg;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Mg;

    .line 4
    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/ob/rd;->a(Lcom/yandex/metrica/impl/ob/ri;Lcom/yandex/metrica/impl/ob/Mg;)Lcom/yandex/metrica/networktasks/api/NetworkTask;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->e:Lcom/yandex/metrica/networktasks/api/NetworkTask;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->e:Lcom/yandex/metrica/networktasks/api/NetworkTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/pi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->f:Lcom/yandex/metrica/impl/ob/fi;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Gg;->d()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized e()Z
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ri;->f:Lcom/yandex/metrica/impl/ob/fi;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Gg;->d()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ni;->b(Lcom/yandex/metrica/impl/ob/pi;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ni;->a(Lcom/yandex/metrica/impl/ob/pi;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 6
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ri;->i:Lcom/yandex/metrica/impl/ob/Rh;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/ri;->f:Lcom/yandex/metrica/impl/ob/fi;

    .line 7
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/Gg;->b()Lcom/yandex/metrica/impl/ob/Eg;

    move-result-object v4

    check-cast v4, Lcom/yandex/metrica/impl/ob/Mg;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/Mg;->C()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/ri;->h:Lcom/yandex/metrica/impl/ob/I;

    .line 8
    invoke-virtual {v3, v4, v0, v5}, Lcom/yandex/metrica/impl/ob/Rh;->a(Ljava/util/Map;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/I;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
