.class public Lcom/yandex/metrica/impl/ob/tl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/tl$b;,
        Lcom/yandex/metrica/impl/ob/tl$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/tl$b;

.field private final b:Lcom/yandex/metrica/impl/ob/tl$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/tl$b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/tl$b;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/tl$a;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/tl$a;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/tl;-><init>(Lcom/yandex/metrica/impl/ob/tl$b;Lcom/yandex/metrica/impl/ob/tl$a;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/tl$b;Lcom/yandex/metrica/impl/ob/tl$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/tl;->a:Lcom/yandex/metrica/impl/ob/tl$b;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/tl;->b:Lcom/yandex/metrica/impl/ob/tl$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/Hk;Lcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/Ak;Lcom/yandex/metrica/impl/ob/yl;Lcom/yandex/metrica/impl/ob/sl;)Lcom/yandex/metrica/impl/ob/dl;
    .locals 15

    move-object v1, p0

    move-object/from16 v12, p3

    move-object/from16 v9, p5

    .line 1
    new-instance v13, Lcom/yandex/metrica/impl/ob/dl;

    invoke-direct {v13}, Lcom/yandex/metrica/impl/ob/dl;-><init>()V

    const v0, 0x1020002

    move-object/from16 v2, p1

    .line 4
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "ui_parsing_root"

    .line 7
    invoke-virtual {v9, v2, v0}, Lcom/yandex/metrica/impl/ob/yl;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 10
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/tl;->a:Lcom/yandex/metrica/impl/ob/tl$b;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    new-instance v14, Lcom/yandex/metrica/impl/ob/Rk;

    .line 42
    new-instance v4, Lcom/yandex/metrica/impl/ob/Fl;

    invoke-direct {v4, v9}, Lcom/yandex/metrica/impl/ob/Fl;-><init>(Lcom/yandex/metrica/impl/ob/yl;)V

    new-instance v5, Lcom/yandex/metrica/impl/ob/sk;

    iget v2, v12, Lcom/yandex/metrica/impl/ob/wl;->c:I

    invoke-direct {v5, v2}, Lcom/yandex/metrica/impl/ob/sk;-><init>(I)V

    new-instance v2, Lcom/yandex/metrica/impl/ob/Mk;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Mk;-><init>()V

    .line 47
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/yandex/metrica/impl/ob/qk;

    new-instance v3, Lcom/yandex/metrica/impl/ob/al;

    iget v6, v12, Lcom/yandex/metrica/impl/ob/wl;->b:I

    invoke-direct {v3, v6}, Lcom/yandex/metrica/impl/ob/al;-><init>(I)V

    const/4 v6, 0x0

    aput-object v3, v2, v6

    .line 48
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v11, Lcom/yandex/metrica/impl/ob/Hl;

    invoke-direct {v11}, Lcom/yandex/metrica/impl/ob/Hl;-><init>()V

    move-object v2, v14

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 49
    invoke-direct/range {v2 .. v11}, Lcom/yandex/metrica/impl/ob/Rk;-><init>(Lcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/Fl;Lcom/yandex/metrica/impl/ob/sk;Lcom/yandex/metrica/impl/ob/Ak;Ljava/util/List;Ljava/util/List;Lcom/yandex/metrica/impl/ob/yl;Lcom/yandex/metrica/impl/ob/sl;Lcom/yandex/metrica/impl/ob/Hl;)V

    move-object/from16 v2, p2

    .line 50
    invoke-virtual {v13, v14, v0, v2}, Lcom/yandex/metrica/impl/ob/dl;->a(Lcom/yandex/metrica/impl/ob/Rk;Landroid/view/View;Lcom/yandex/metrica/impl/ob/Hk;)V

    .line 51
    iget-boolean v0, v12, Lcom/yandex/metrica/impl/ob/wl;->e:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, v1, Lcom/yandex/metrica/impl/ob/tl;->b:Lcom/yandex/metrica/impl/ob/tl$a;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    new-instance v0, Lcom/yandex/metrica/impl/ob/rk;

    invoke-virtual {v14}, Lcom/yandex/metrica/impl/ob/Rk;->a()Ljava/util/TreeSet;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/ob/rk;-><init>(Ljava/util/TreeSet;)V

    .line 93
    invoke-virtual {v14}, Lcom/yandex/metrica/impl/ob/Rk;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/impl/ob/bl;

    .line 94
    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/rk;->a(Lcom/yandex/metrica/impl/ob/bl;)V

    goto :goto_1

    :cond_0
    return-object v13
.end method
