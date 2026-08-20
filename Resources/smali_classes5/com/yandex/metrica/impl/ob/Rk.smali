.class Lcom/yandex/metrica/impl/ob/Rk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/bl;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/metrica/impl/ob/Ak;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/cl;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/qk;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/yandex/metrica/impl/ob/Fl;

.field private final g:Lcom/yandex/metrica/impl/ob/sk;

.field private final h:Lcom/yandex/metrica/impl/ob/wl;

.field private final i:Lcom/yandex/metrica/impl/ob/yl;

.field private final j:Lcom/yandex/metrica/impl/ob/sl;

.field private final k:Lcom/yandex/metrica/impl/ob/Hl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Rk;->l:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/yandex/metrica/impl/ob/Rk;->m:Ljava/util/List;

    .line 6
    const-class v2, Landroid/widget/ListView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    const-class v2, Landroid/widget/GridView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "androidx.recyclerview.widget.RecyclerView"

    .line 8
    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ob/Rk;->a(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "androidx.viewpager.widget.ViewPager"

    .line 9
    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ob/Rk;->a(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "androidx.viewpager2.widget.ViewPager2"

    .line 10
    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ob/Rk;->a(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "androidx.coordinatorlayout.widget.CoordinatorLayout"

    .line 11
    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/ob/Rk;->a(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "androidx.drawerlayout.widget.DrawerLayout"

    .line 12
    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/ob/Rk;->a(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "androidx.slidingpanelayout.widget.SlidingPaneLayout"

    .line 13
    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/ob/Rk;->a(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "androidx.swiperefreshlayout.widget.SwipeRefreshLayout"

    .line 14
    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/ob/Rk;->a(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "androidx.core.widget.NestedScrollView"

    .line 15
    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/ob/Rk;->a(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "androidx.constraintlayout.widget.ConstraintLayout"

    .line 16
    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/ob/Rk;->a(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "androidx.appcompat.widget.ContentFrameLayout"

    .line 17
    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/ob/Rk;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 19
    const-class v0, Landroid/widget/AbsoluteLayout;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    const-class v0, Landroid/widget/FrameLayout;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    const-class v0, Landroid/widget/LinearLayout;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    const-class v0, Landroid/widget/TableLayout;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    const-class v0, Landroid/widget/ScrollView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    const-class v0, Landroid/widget/GridLayout;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/Fl;Lcom/yandex/metrica/impl/ob/sk;Lcom/yandex/metrica/impl/ob/Ak;Ljava/util/List;Ljava/util/List;Lcom/yandex/metrica/impl/ob/yl;Lcom/yandex/metrica/impl/ob/sl;Lcom/yandex/metrica/impl/ob/Hl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/wl;",
            "Lcom/yandex/metrica/impl/ob/Fl;",
            "Lcom/yandex/metrica/impl/ob/sk;",
            "Lcom/yandex/metrica/impl/ob/Ak;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/cl;",
            ">;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/qk;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/yl;",
            "Lcom/yandex/metrica/impl/ob/sl;",
            "Lcom/yandex/metrica/impl/ob/Hl;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Rk;->a:Ljava/util/TreeSet;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Rk;->b:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Rk;->h:Lcom/yandex/metrica/impl/ob/wl;

    .line 55
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Rk;->f:Lcom/yandex/metrica/impl/ob/Fl;

    .line 56
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Rk;->g:Lcom/yandex/metrica/impl/ob/sk;

    .line 57
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Rk;->c:Lcom/yandex/metrica/impl/ob/Ak;

    .line 58
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Rk;->d:Ljava/util/List;

    .line 59
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Rk;->e:Ljava/util/List;

    .line 60
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/Rk;->i:Lcom/yandex/metrica/impl/ob/yl;

    .line 61
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/Rk;->j:Lcom/yandex/metrica/impl/ob/sl;

    .line 62
    iput-object p9, p0, Lcom/yandex/metrica/impl/ob/Rk;->k:Lcom/yandex/metrica/impl/ob/Hl;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/rl;Landroid/view/View;I)Lcom/yandex/metrica/impl/ob/Pk;
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v4, v0, Lcom/yandex/metrica/impl/ob/rl;->e:Z

    if-nez v4, :cond_0

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/rl;->g:Lcom/yandex/metrica/impl/ob/rl$a;

    sget-object v4, Lcom/yandex/metrica/impl/ob/rl$a;->b:Lcom/yandex/metrica/impl/ob/rl$a;

    if-ne v0, v4, :cond_1

    :cond_0
    move/from16 v16, v2

    goto :goto_0

    :cond_1
    move/from16 v16, v3

    .line 4
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    .line 5
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/yandex/metrica/impl/ob/rl$c;->b:Lcom/yandex/metrica/impl/ob/rl$c;

    goto :goto_1

    .line 8
    :cond_2
    sget-object v0, Lcom/yandex/metrica/impl/ob/rl$c;->c:Lcom/yandex/metrica/impl/ob/rl$c;

    :goto_1
    move-object/from16 v18, v0

    .line 9
    sget-object v0, Lcom/yandex/metrica/impl/ob/Rk;->l:Ljava/util/List;

    invoke-direct {v8, v0, v1}, Lcom/yandex/metrica/impl/ob/Rk;->a(Ljava/util/List;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    sget-object v0, Lcom/yandex/metrica/impl/ob/rl$a;->b:Lcom/yandex/metrica/impl/ob/rl$a;

    :goto_2
    move-object/from16 v19, v0

    goto :goto_3

    .line 11
    :cond_3
    instance-of v0, v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 12
    sget-object v0, Lcom/yandex/metrica/impl/ob/rl$a;->h:Lcom/yandex/metrica/impl/ob/rl$a;

    goto :goto_2

    .line 13
    :cond_4
    instance-of v0, v1, Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    .line 14
    sget-object v0, Lcom/yandex/metrica/impl/ob/rl$a;->i:Lcom/yandex/metrica/impl/ob/rl$a;

    goto :goto_2

    .line 15
    :cond_5
    sget-object v0, Lcom/yandex/metrica/impl/ob/Rk;->m:Ljava/util/List;

    invoke-direct {v8, v0, v1}, Lcom/yandex/metrica/impl/ob/Rk;->a(Ljava/util/List;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    sget-object v0, Lcom/yandex/metrica/impl/ob/rl$a;->e:Lcom/yandex/metrica/impl/ob/rl$a;

    goto :goto_2

    .line 17
    :cond_6
    instance-of v0, v1, Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 18
    sget-object v0, Lcom/yandex/metrica/impl/ob/rl$a;->d:Lcom/yandex/metrica/impl/ob/rl$a;

    goto :goto_2

    .line 19
    :cond_7
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_8

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getInputType()I

    move-result v4

    if-eqz v4, :cond_8

    .line 20
    sget-object v0, Lcom/yandex/metrica/impl/ob/rl$a;->g:Lcom/yandex/metrica/impl/ob/rl$a;

    goto :goto_2

    :cond_8
    const/16 v4, 0x15

    .line 21
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 22
    instance-of v3, v1, Landroid/widget/Toolbar;

    :cond_9
    if-eqz v3, :cond_a

    .line 23
    sget-object v0, Lcom/yandex/metrica/impl/ob/rl$a;->f:Lcom/yandex/metrica/impl/ob/rl$a;

    goto :goto_2

    :cond_a
    if-eqz v0, :cond_b

    .line 24
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    if-nez v0, :cond_b

    .line 25
    sget-object v0, Lcom/yandex/metrica/impl/ob/rl$a;->c:Lcom/yandex/metrica/impl/ob/rl$a;

    goto :goto_2

    .line 27
    :cond_b
    sget-object v0, Lcom/yandex/metrica/impl/ob/rl$a;->j:Lcom/yandex/metrica/impl/ob/rl$a;

    goto :goto_2

    .line 28
    :goto_3
    instance-of v0, v1, Landroid/widget/TextView;

    const/16 v20, 0x0

    if-eqz v0, :cond_11

    .line 30
    :try_start_0
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    .line 32
    iget-object v0, v8, Lcom/yandex/metrica/impl/ob/Rk;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/cl;

    .line 33
    invoke-interface {v1, v2}, Lcom/yandex/metrica/impl/ob/Cl;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 34
    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/Cl;->a()Lcom/yandex/metrica/impl/ob/rl$b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v1, v0

    goto :goto_4

    :cond_d
    move-object/from16 v1, v20

    :goto_4
    if-nez v1, :cond_f

    .line 39
    :try_start_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 40
    iget-object v3, v8, Lcom/yandex/metrica/impl/ob/Rk;->c:Lcom/yandex/metrica/impl/ob/Ak;

    if-nez v0, :cond_e

    move-object/from16 v0, v20

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v3, v0}, Lcom/yandex/metrica/impl/ob/Ak;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/rl$b;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_f
    move-object v9, v1

    :goto_6
    if-nez v9, :cond_10

    move-object/from16 v1, p0

    move-object v3, v15

    move-object/from16 v4, v17

    move/from16 v5, p3

    move/from16 v6, v16

    move-object/from16 v7, v19

    .line 43
    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/impl/ob/Rk;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IZLcom/yandex/metrica/impl/ob/rl$a;)Lcom/yandex/metrica/impl/ob/rl;

    move-result-object v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_8

    :cond_10
    :goto_7
    move-object v12, v9

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v1, v20

    .line 47
    :goto_8
    iget-object v2, v8, Lcom/yandex/metrica/impl/ob/Rk;->i:Lcom/yandex/metrica/impl/ob/yl;

    const-string v3, "ui_parsing_text_view"

    invoke-virtual {v2, v3, v0}, Lcom/yandex/metrica/impl/ob/yl;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v12, v1

    goto :goto_9

    .line 49
    :cond_11
    instance-of v0, v1, Landroid/webkit/WebView;

    if-eqz v0, :cond_12

    .line 50
    move-object v0, v1

    check-cast v0, Landroid/webkit/WebView;

    .line 51
    new-instance v1, Lcom/yandex/metrica/impl/ob/Il;

    const/4 v12, 0x0

    move-object v9, v1

    move-object v10, v15

    move-object/from16 v11, v17

    move/from16 v13, p3

    move/from16 v14, v16

    invoke-direct/range {v9 .. v14}, Lcom/yandex/metrica/impl/ob/Il;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/rl$b;IZ)V

    .line 52
    iget-object v3, v8, Lcom/yandex/metrica/impl/ob/Rk;->k:Lcom/yandex/metrica/impl/ob/Hl;

    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 81
    :try_start_3
    new-instance v2, Lcom/yandex/metrica/impl/ob/Gl;

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/yandex/metrica/impl/ob/Gl;-><init>(Lcom/yandex/metrica/impl/ob/Hl;Lcom/yandex/metrica/impl/ob/Il;Landroid/webkit/WebView;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 94
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v4, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-object/from16 v12, v20

    move-object/from16 v20, v1

    goto :goto_9

    :cond_12
    move-object/from16 v12, v20

    :goto_9
    if-nez v20, :cond_13

    .line 95
    new-instance v20, Lcom/yandex/metrica/impl/ob/rl;

    move-object/from16 v9, v20

    move-object v10, v15

    move-object/from16 v11, v17

    move/from16 v13, p3

    move/from16 v14, v16

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    invoke-direct/range {v9 .. v16}, Lcom/yandex/metrica/impl/ob/rl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/rl$b;IZLcom/yandex/metrica/impl/ob/rl$c;Lcom/yandex/metrica/impl/ob/rl$a;)V

    :cond_13
    move-object/from16 v0, v20

    .line 105
    iget-object v1, v8, Lcom/yandex/metrica/impl/ob/Rk;->g:Lcom/yandex/metrica/impl/ob/sk;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/sk;->a(Lcom/yandex/metrica/impl/ob/rl;)V

    .line 106
    new-instance v1, Lcom/yandex/metrica/impl/ob/Pk;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/Pk;-><init>(Lcom/yandex/metrica/impl/ob/rl;)V

    return-object v1
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IZLcom/yandex/metrica/impl/ob/rl$a;)Lcom/yandex/metrica/impl/ob/rl;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v9, v1

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move/from16 v16, v2

    goto :goto_1

    :cond_1
    move/from16 v16, v3

    :goto_1
    const/4 v1, 0x0

    .line 116
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget v7, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v12, v4

    goto :goto_3

    :catchall_0
    move-object v6, v1

    goto :goto_2

    :catchall_1
    move-object v5, v1

    move-object v6, v5

    :catchall_2
    :goto_2
    move-object v12, v1

    :goto_3
    move-object v10, v5

    move-object v11, v6

    if-eqz v10, :cond_2

    .line 123
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/Rk;->h:Lcom/yandex/metrica/impl/ob/wl;

    iget-boolean v4, v4, Lcom/yandex/metrica/impl/ob/wl;->e:Z

    if-eqz v4, :cond_2

    .line 124
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/Rk;->a:Ljava/util/TreeSet;

    invoke-virtual {v4, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_2
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/Rk;->f:Lcom/yandex/metrica/impl/ob/Fl;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ob/Fl;->a(Landroid/widget/TextView;)I

    move-result v17

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    if-nez v4, :cond_3

    .line 129
    sget-object v2, Lcom/yandex/metrica/impl/ob/bl$b;->f:Lcom/yandex/metrica/impl/ob/bl$b;

    :goto_4
    move-object/from16 v18, v2

    goto :goto_5

    .line 131
    :cond_3
    sget-object v6, Lcom/yandex/metrica/impl/ob/bl$a;->a:[I

    invoke-virtual {v4}, Landroid/text/TextUtils$TruncateAt;->ordinal()I

    move-result v4

    aget v4, v6, v4

    if-eq v4, v2, :cond_7

    const/4 v2, 0x2

    if-eq v4, v2, :cond_6

    const/4 v2, 0x3

    if-eq v4, v2, :cond_5

    const/4 v2, 0x4

    if-eq v4, v2, :cond_4

    .line 141
    sget-object v2, Lcom/yandex/metrica/impl/ob/bl$b;->g:Lcom/yandex/metrica/impl/ob/bl$b;

    goto :goto_4

    .line 142
    :cond_4
    sget-object v2, Lcom/yandex/metrica/impl/ob/bl$b;->e:Lcom/yandex/metrica/impl/ob/bl$b;

    goto :goto_4

    .line 143
    :cond_5
    sget-object v2, Lcom/yandex/metrica/impl/ob/bl$b;->d:Lcom/yandex/metrica/impl/ob/bl$b;

    goto :goto_4

    .line 144
    :cond_6
    sget-object v2, Lcom/yandex/metrica/impl/ob/bl$b;->c:Lcom/yandex/metrica/impl/ob/bl$b;

    goto :goto_4

    .line 145
    :cond_7
    sget-object v2, Lcom/yandex/metrica/impl/ob/bl$b;->b:Lcom/yandex/metrica/impl/ob/bl$b;

    goto :goto_4

    .line 146
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    if-nez v2, :cond_8

    const/16 v4, 0x14

    .line 147
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 148
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    :cond_8
    if-eqz v2, :cond_9

    .line 151
    invoke-virtual {v2}, Landroid/graphics/Typeface;->isBold()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 152
    invoke-virtual {v2}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v14, v1

    move-object v15, v2

    goto :goto_6

    :cond_9
    move-object v14, v1

    move-object v15, v14

    .line 154
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    .line 155
    new-instance v1, Lcom/yandex/metrica/impl/ob/bl;

    move-object v2, v1

    const/4 v5, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v18}, Lcom/yandex/metrica/impl/ob/bl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/rl$b;IZLcom/yandex/metrica/impl/ob/rl$a;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZILcom/yandex/metrica/impl/ob/bl$b;)V

    .line 173
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/Rk;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/impl/ob/qk;

    .line 174
    invoke-interface {v3, v1}, Lcom/yandex/metrica/impl/ob/qk;->a(Lcom/yandex/metrica/impl/ob/bl;)V

    goto :goto_7

    .line 176
    :cond_a
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/Rk;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 198
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/h2;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 196
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 197
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method a(Landroid/view/View;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    :try_start_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 181
    check-cast p1, Landroid/view/ViewGroup;

    .line 182
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Rk;->g:Lcom/yandex/metrica/impl/ob/sk;

    .line 183
    invoke-virtual {v1, p2}, Lcom/yandex/metrica/impl/ob/sk;->a(I)I

    move-result p2

    .line 184
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 185
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 190
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 195
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Rk;->i:Lcom/yandex/metrica/impl/ob/yl;

    const-string v1, "ui_parsing_children"

    invoke-virtual {p2, v1, p1}, Lcom/yandex/metrica/impl/ob/yl;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method a()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rk;->a:Ljava/util/TreeSet;

    return-object v0
.end method

.method b(Lcom/yandex/metrica/impl/ob/rl;Landroid/view/View;I)Lcom/yandex/metrica/impl/ob/Pk;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rk;->j:Lcom/yandex/metrica/impl/ob/sl;

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/sl;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Rk;->a(Lcom/yandex/metrica/impl/ob/rl;Landroid/view/View;I)Lcom/yandex/metrica/impl/ob/Pk;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Rk;->i:Lcom/yandex/metrica/impl/ob/yl;

    const-string p3, "ui_parsing_view"

    invoke-virtual {p2, p3, p1}, Lcom/yandex/metrica/impl/ob/yl;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/bl;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rk;->b:Ljava/util/List;

    return-object v0
.end method
