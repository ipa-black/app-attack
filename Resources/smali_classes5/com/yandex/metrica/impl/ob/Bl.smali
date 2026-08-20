.class Lcom/yandex/metrica/impl/ob/Bl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/Bl$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;

.field private final b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private final c:Lcom/yandex/metrica/impl/ob/lk;

.field private final d:Lcom/yandex/metrica/impl/ob/el;

.field private final e:Lcom/yandex/metrica/impl/ob/zk;

.field private final f:Lcom/yandex/metrica/impl/ob/Bl$a;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/xl;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Vk;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/yandex/metrica/impl/ob/Bk$a;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/lk;Lcom/yandex/metrica/impl/ob/zk;)V
    .locals 8

    .line 1
    new-instance v4, Lcom/yandex/metrica/impl/ob/el;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/el;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/Bl$a;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/Bl$a;-><init>()V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/yandex/metrica/impl/ob/Bk$a;

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/Bk$a;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/yandex/metrica/impl/ob/Bl;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/lk;Lcom/yandex/metrica/impl/ob/zk;Lcom/yandex/metrica/impl/ob/el;Lcom/yandex/metrica/impl/ob/Bl$a;Ljava/util/List;Lcom/yandex/metrica/impl/ob/Bk$a;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/lk;Lcom/yandex/metrica/impl/ob/zk;Lcom/yandex/metrica/impl/ob/el;Lcom/yandex/metrica/impl/ob/Bl$a;Ljava/util/List;Lcom/yandex/metrica/impl/ob/Bk$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/core/api/executors/ICommonExecutor;",
            "Lcom/yandex/metrica/impl/ob/lk;",
            "Lcom/yandex/metrica/impl/ob/zk;",
            "Lcom/yandex/metrica/impl/ob/el;",
            "Lcom/yandex/metrica/impl/ob/Bl$a;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Vk;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/Bk$a;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Bl;->g:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Bl;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 40
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Bl;->c:Lcom/yandex/metrica/impl/ob/lk;

    .line 41
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Bl;->e:Lcom/yandex/metrica/impl/ob/zk;

    .line 42
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Bl;->d:Lcom/yandex/metrica/impl/ob/el;

    .line 43
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Bl;->f:Lcom/yandex/metrica/impl/ob/Bl$a;

    .line 44
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Bl;->h:Ljava/util/List;

    .line 45
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/Bl;->i:Lcom/yandex/metrica/impl/ob/Bk$a;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/Bl;)Ljava/util/List;
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Bl;->g:Ljava/util/List;

    return-object p0
.end method

.method static a(Lcom/yandex/metrica/impl/ob/Bl;Landroid/app/Activity;J)V
    .locals 1

    .line 452
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Bl;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/xl;

    .line 453
    invoke-interface {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/xl;->a(Landroid/app/Activity;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/Bl;Ljava/util/List;Lcom/yandex/metrica/impl/ob/dl;Ljava/util/List;Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/Bk;J)V
    .locals 10

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/metrica/impl/ob/vl;

    move-wide/from16 v3, p7

    move-object v5, p4

    move-object v6, p2

    move-object v7, p3

    move-object v8, p5

    move-object/from16 v9, p6

    .line 446
    invoke-interface/range {v2 .. v9}, Lcom/yandex/metrica/impl/ob/vl;->a(JLandroid/app/Activity;Lcom/yandex/metrica/impl/ob/dl;Ljava/util/List;Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/Bk;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    .line 448
    iget-object v0, v1, Lcom/yandex/metrica/impl/ob/Bl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/metrica/impl/ob/vl;

    move-wide/from16 v3, p7

    move-object v5, p4

    move-object v6, p2

    move-object v7, p3

    move-object v8, p5

    move-object/from16 v9, p6

    .line 449
    invoke-interface/range {v2 .. v9}, Lcom/yandex/metrica/impl/ob/vl;->a(JLandroid/app/Activity;Lcom/yandex/metrica/impl/ob/dl;Ljava/util/List;Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/Bk;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/Bl;Ljava/util/List;Ljava/lang/Throwable;Lcom/yandex/metrica/impl/ob/wl;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/vl;

    .line 228
    invoke-interface {v0, p2, p3}, Lcom/yandex/metrica/impl/ob/vl;->a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/ob/wl;)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Bl;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/vl;

    .line 231
    invoke-interface {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/vl;->a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/ob/wl;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/Bl;)Lcom/yandex/metrica/impl/ob/Bl$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Bl;->f:Lcom/yandex/metrica/impl/ob/Bl$a;

    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/Bl;)Lcom/yandex/metrica/impl/ob/lk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Bl;->c:Lcom/yandex/metrica/impl/ob/lk;

    return-object p0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ob/Bl;)Lcom/yandex/metrica/impl/ob/el;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Bl;->d:Lcom/yandex/metrica/impl/ob/el;

    return-object p0
.end method


# virtual methods
.method a(Landroid/app/Activity;JLcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/wl;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Lcom/yandex/metrica/impl/ob/fl;",
            "Lcom/yandex/metrica/impl/ob/wl;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/vl;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    move-object v9, p1

    .line 454
    iget-object v0, v8, Lcom/yandex/metrica/impl/ob/Bl;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/Vk;

    move-object/from16 v5, p5

    .line 455
    invoke-virtual {v1, p1, v5}, Lcom/yandex/metrica/impl/ob/Vk;->a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/wl;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v5, p5

    const/4 v0, 0x0

    :goto_0
    move v10, v0

    .line 456
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, v8, Lcom/yandex/metrica/impl/ob/Bl;->i:Lcom/yandex/metrica/impl/ob/Bk$a;

    iget-object v1, v8, Lcom/yandex/metrica/impl/ob/Bl;->e:Lcom/yandex/metrica/impl/ob/zk;

    .line 457
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    new-instance v6, Lcom/yandex/metrica/impl/ob/Bk;

    move-object/from16 v4, p4

    invoke-direct {v6, v1, v4}, Lcom/yandex/metrica/impl/ob/Bk;-><init>(Lcom/yandex/metrica/impl/ob/zk;Lcom/yandex/metrica/impl/ob/fl;)V

    .line 479
    new-instance v11, Lcom/yandex/metrica/impl/ob/Al;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v3, p6

    move-object/from16 v5, p5

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/yandex/metrica/impl/ob/Al;-><init>(Lcom/yandex/metrica/impl/ob/Bl;Ljava/lang/ref/WeakReference;Ljava/util/List;Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/Bk;Z)V

    .line 480
    iget-object v0, v8, Lcom/yandex/metrica/impl/ob/Bl;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 481
    iget-object v1, v8, Lcom/yandex/metrica/impl/ob/Bl;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    invoke-interface {v1, v0}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    .line 483
    :cond_2
    iput-object v11, v8, Lcom/yandex/metrica/impl/ob/Bl;->a:Ljava/lang/Runnable;

    .line 484
    iget-object v0, v8, Lcom/yandex/metrica/impl/ob/Bl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/xl;

    .line 485
    invoke-interface {v1, p1, v10}, Lcom/yandex/metrica/impl/ob/xl;->a(Landroid/app/Activity;Z)V

    goto :goto_1

    .line 486
    :cond_3
    iget-object v0, v8, Lcom/yandex/metrica/impl/ob/Bl;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-wide v1, p2

    invoke-interface {v0, v11, p2, p3}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method varargs a([Lcom/yandex/metrica/impl/ob/xl;)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bl;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
