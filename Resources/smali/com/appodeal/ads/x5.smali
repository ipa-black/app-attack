.class public abstract Lcom/appodeal/ads/x5;
.super Lcom/appodeal/ads/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/x5$a;,
        Lcom/appodeal/ads/x5$d;,
        Lcom/appodeal/ads/x5$c;,
        Lcom/appodeal/ads/x5$f;,
        Lcom/appodeal/ads/x5$b;,
        Lcom/appodeal/ads/x5$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lcom/appodeal/ads/z5<",
        "TAdObjectType;>;AdObjectType:",
        "Lcom/appodeal/ads/r5<",
        "TAdRequestType;***>;>",
        "Lcom/appodeal/ads/p<",
        "TAdRequestType;TAdObjectType;",
        "Lcom/appodeal/ads/y5;",
        ">;"
    }
.end annotation


# static fields
.field public static final m:Landroid/os/Handler;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:I

.field public f:Lcom/appodeal/ads/a;

.field public g:Lcom/appodeal/ads/a;

.field public h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/appodeal/ads/x5$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/x5<",
            "TAdRequestType;TAdObjectType;>.c;"
        }
    .end annotation
.end field

.field public j:Z

.field public final k:Lcom/appodeal/ads/x5$d;

.field public final l:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/appodeal/ads/x5;->m:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/a;)V
    .locals 2

    invoke-direct {p0}, Lcom/appodeal/ads/p;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/appodeal/ads/x5;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/x5;->j:Z

    new-instance v0, Lcom/appodeal/ads/x5$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appodeal/ads/x5$d;-><init>(I)V

    iput-object v0, p0, Lcom/appodeal/ads/x5;->k:Lcom/appodeal/ads/x5$d;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/x5;->l:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/appodeal/ads/x5;->f:Lcom/appodeal/ads/a;

    return-void
.end method

.method public static a(Landroid/view/View;ZZ)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 150
    :cond_0
    sget-object v0, Lcom/appodeal/ads/utils/d0;->a:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/utils/d0$a;

    iget-object v3, v3, Lcom/appodeal/ads/utils/d0$a;->b:Landroid/view/View;

    if-ne v3, p0, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/utils/d0$a;

    .line 151
    invoke-virtual {v1}, Lcom/appodeal/ads/utils/d0$a;->b()V

    .line 152
    sget-object v1, Lcom/appodeal/ads/utils/d0;->a:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    instance-of v1, v0, Lcom/appodeal/ads/BannerView;

    const/16 v2, 0x8

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    instance-of v1, v0, Lcom/appodeal/ads/MrecView;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Appodeal"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz p2, :cond_7

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_7

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    return-void

    :catchall_0
    move-exception p0

    .line 155
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Lcom/appodeal/ads/x5;Landroid/app/Activity;Lcom/appodeal/ads/z5;Lcom/appodeal/ads/r5;Lcom/appodeal/ads/a;Lcom/appodeal/ads/a;Lcom/appodeal/ads/u;Z)V
    .locals 18

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v14, p6

    .line 1
    iget-object v2, v10, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    .line 2
    const-string v3, "Display Ads"

    const-string v4, "start"

    invoke-static {v2, v3, v4}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v10, Lcom/appodeal/ads/x5;->c:Landroid/view/View;

    if-nez v6, :cond_1

    if-eqz p7, :cond_1

    sget-object v0, Lcom/appodeal/ads/networking/LoadingError;->ShowFailed:Lcom/appodeal/ads/networking/LoadingError;

    .line 3
    iget-object v1, v13, Lcom/appodeal/ads/l;->i:Lcom/appodeal/ads/utils/ExchangeAd;

    if-eqz v1, :cond_0

    .line 4
    sget-object v2, Lcom/appodeal/ads/networking/LoadingError;->TimeoutError:Lcom/appodeal/ads/networking/LoadingError;

    if-ne v0, v2, :cond_0

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/utils/ExchangeAd;->trackError(I)V

    :cond_0
    iget-object v1, v13, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-eqz v1, :cond_25

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onError(Lcom/appodeal/ads/networking/LoadingError;)V

    goto/16 :goto_12

    :cond_1
    if-eqz v6, :cond_2

    if-eqz p7, :cond_2

    move-object v7, v6

    goto :goto_0

    .line 5
    :cond_2
    iget-object v2, v13, Lcom/appodeal/ads/r5;->s:Landroid/view/View;

    move-object v7, v2

    :goto_0
    if-nez v7, :cond_3

    .line 6
    iget-object v0, v14, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    .line 7
    sget-object v1, Lcom/appodeal/ads/networking/LoadingError;->NoFill:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v0, v12, v13}, Lcom/appodeal/ads/b0;->j(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    goto/16 :goto_12

    :cond_3
    const/4 v15, 0x1

    const/4 v9, 0x0

    if-ne v0, v1, :cond_4

    move v2, v15

    goto :goto_1

    :cond_4
    move v2, v9

    :goto_1
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Appodeal"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    sget-object v4, Lcom/appodeal/ads/a;->h:Lcom/appodeal/ads/a;

    const/16 v5, 0x168

    if-eq v0, v4, :cond_a

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v9

    goto :goto_4

    :cond_6
    instance-of v8, v2, Landroid/view/View;

    if-eqz v8, :cond_7

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    :goto_3
    invoke-virtual {v11, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_4
    if-nez v2, :cond_e

    .line 9
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/appodeal/ads/a;->a()I

    move-result v2

    if-eqz v2, :cond_9

    if-eq v2, v5, :cond_9

    move v2, v15

    goto :goto_5

    :cond_9
    move v2, v9

    .line 10
    :goto_5
    new-instance v3, Lcom/appodeal/ads/x5$b;

    invoke-direct {v3, v11, v2}, Lcom/appodeal/ads/x5$b;-><init>(Landroid/app/Activity;Z)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v13, v11}, Lcom/appodeal/ads/r5;->a(Landroid/content/Context;)I

    move-result v8

    const/4 v5, -0x1

    invoke-direct {v2, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "Appodeal"

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move v8, v15

    goto :goto_8

    .line 11
    :cond_a
    iget v2, v10, Lcom/appodeal/ads/x5;->e:I

    invoke-virtual {v11, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    iget-object v2, v10, Lcom/appodeal/ads/x5;->d:Landroid/view/View;

    :goto_6
    if-eqz v2, :cond_d

    invoke-virtual {v10, v2}, Lcom/appodeal/ads/x5;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only BannerView.class and MrecView.class are supported as target container for position type == AdDisplayPosition.VIEW"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_7
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    :cond_e
    move v8, v9

    :goto_8
    if-nez v3, :cond_f

    .line 12
    const-string v0, "Show Failed"

    const-string v1, "view not found"

    invoke-virtual {v14, v0, v1}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v10, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string v1, "Display Ads"

    const-string v2, "View container not found"

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_f
    iget-object v2, v10, Lcom/appodeal/ads/x5;->c:Landroid/view/View;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-nez v8, :cond_10

    move v2, v15

    goto :goto_9

    :cond_10
    move v2, v9

    :goto_9
    if-eqz v2, :cond_14

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, v10, Lcom/appodeal/ads/x5;->i:Lcom/appodeal/ads/x5$c;

    if-eqz v0, :cond_11

    sget-object v1, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    .line 14
    sget-boolean v1, Lcom/appodeal/ads/r0;->l:Z

    if-nez v1, :cond_11

    .line 15
    iget-object v0, v0, Lcom/appodeal/ads/x5$c;->a:Lcom/appodeal/ads/x5$a;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 18
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 19
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eq v0, v11, :cond_11

    goto :goto_a

    :cond_11
    move v15, v9

    :goto_a
    if-nez v15, :cond_12

    .line 20
    invoke-virtual/range {p6 .. p6}, Lcom/appodeal/ads/u;->k()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 21
    iget-boolean v0, v12, Lcom/appodeal/ads/r;->C:Z

    if-eqz v0, :cond_13

    .line 22
    :cond_12
    invoke-virtual {v10, v11, v14, v12}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;Lcom/appodeal/ads/u;Lcom/appodeal/ads/z5;)V

    .line 23
    :cond_13
    iget-object v0, v10, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    .line 24
    const-string v1, "Skip actual showing because view already on screen: "

    invoke-static {v1}, Lcom/appodeal/ads/h0;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    iget-object v2, v10, Lcom/appodeal/ads/x5;->i:Lcom/appodeal/ads/x5$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Display Ads"

    invoke-static {v0, v2, v1}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_14
    invoke-static {v7, v15, v15}, Lcom/appodeal/ads/x5;->a(Landroid/view/View;ZZ)V

    .line 26
    iget-object v2, v13, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-eqz v2, :cond_16

    .line 27
    iget-object v5, v13, Lcom/appodeal/ads/l;->g:Lcom/appodeal/ads/unified/UnifiedAdParams;

    if-eqz v5, :cond_15

    invoke-virtual {v2, v11, v5}, Lcom/appodeal/ads/unified/UnifiedAd;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V

    goto :goto_b

    :cond_15
    iget-object v2, v13, Lcom/appodeal/ads/l;->h:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/appodeal/ads/unified/UnifiedAdCallback;->onAdShowFailed()V

    .line 28
    :cond_16
    :goto_b
    invoke-virtual {v13, v11}, Lcom/appodeal/ads/r5;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v13, v11}, Lcom/appodeal/ads/r5;->a(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    if-nez v16, :cond_19

    if-eq v0, v4, :cond_19

    .line 29
    invoke-virtual/range {p4 .. p4}, Lcom/appodeal/ads/a;->a()I

    move-result v15

    if-eqz v15, :cond_17

    const/16 v9, 0x168

    if-eq v15, v9, :cond_17

    const/4 v9, 0x1

    goto :goto_c

    :cond_17
    const/4 v9, 0x0

    :goto_c
    if-eqz v9, :cond_18

    .line 30
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    iget v15, v0, Lcom/appodeal/ads/a;->c:I

    invoke-direct {v9, v5, v2, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_d

    :cond_18
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    iget v15, v0, Lcom/appodeal/ads/a;->c:I

    invoke-direct {v9, v2, v5, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 31
    :goto_d
    invoke-virtual {v11, v3, v9}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 32
    :cond_19
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    iget v15, v0, Lcom/appodeal/ads/a;->b:I

    invoke-direct {v9, v2, v5, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 34
    invoke-virtual/range {p4 .. p4}, Lcom/appodeal/ads/a;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v3, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    iput-object v7, v10, Lcom/appodeal/ads/x5;->c:Landroid/view/View;

    iput-object v0, v10, Lcom/appodeal/ads/x5;->f:Lcom/appodeal/ads/a;

    .line 35
    iput-object v12, v14, Lcom/appodeal/ads/u;->y:Lcom/appodeal/ads/r;

    if-ne v0, v1, :cond_1b

    if-eqz v6, :cond_1b

    .line 36
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-boolean v1, v10, Lcom/appodeal/ads/x5;->j:Z

    if-eqz v1, :cond_1b

    invoke-virtual {v6}, Landroid/view/View;->bringToFront()V

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    new-instance v5, Lcom/appodeal/ads/x5$f;

    if-eq v0, v4, :cond_1a

    const/4 v0, 0x1

    goto :goto_e

    :cond_1a
    move v0, v9

    :goto_e
    move-object v1, v5

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v11, v5

    move-object/from16 v5, p6

    move/from16 p5, v8

    move v8, v0

    move/from16 v17, v9

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/appodeal/ads/x5$f;-><init>(Lcom/appodeal/ads/x5;Lcom/appodeal/ads/z5;Lcom/appodeal/ads/r5;Lcom/appodeal/ads/u;Landroid/view/View;Landroid/view/View;ZZ)V

    invoke-virtual {v15, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_10

    :cond_1b
    move/from16 p5, v8

    move/from16 v17, v9

    .line 37
    new-instance v1, Lcom/appodeal/ads/u5;

    invoke-direct {v1, v10, v14, v12, v13}, Lcom/appodeal/ads/u5;-><init>(Lcom/appodeal/ads/x5;Lcom/appodeal/ads/u;Lcom/appodeal/ads/z5;Lcom/appodeal/ads/r5;)V

    .line 38
    iget v2, v14, Lcom/appodeal/ads/u;->q:I

    int-to-long v2, v2

    .line 39
    sget-object v5, Lcom/appodeal/ads/utils/d0;->a:Ljava/util/HashMap;

    monitor-enter v5

    .line 40
    :try_start_0
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/appodeal/ads/utils/d0$a;

    if-eqz v8, :cond_1c

    .line 41
    invoke-virtual {v8}, Lcom/appodeal/ads/utils/d0$a;->b()V

    .line 42
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    new-instance v8, Lcom/appodeal/ads/utils/d0$a;

    invoke-direct {v8, v7, v2, v3, v1}, Lcom/appodeal/ads/utils/d0$a;-><init>(Landroid/view/View;JLcom/appodeal/ads/utils/d0$b;)V

    invoke-virtual {v5, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/appodeal/ads/utils/d0$a;->c()V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    move/from16 v15, p5

    if-eq v0, v4, :cond_1d

    const/4 v9, 0x1

    goto :goto_f

    :cond_1d
    move/from16 v9, v17

    :goto_f
    :try_start_3
    invoke-static {v6, v9, v15}, Lcom/appodeal/ads/x5;->a(Landroid/view/View;ZZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_10

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 45
    :cond_1e
    :goto_10
    iget-object v0, v10, Lcom/appodeal/ads/x5;->i:Lcom/appodeal/ads/x5$c;

    if-eqz v0, :cond_1f

    sget-object v1, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    .line 46
    sget-boolean v1, Lcom/appodeal/ads/r0;->l:Z

    if-nez v1, :cond_1f

    .line 47
    iget-object v0, v0, Lcom/appodeal/ads/x5$c;->a:Lcom/appodeal/ads/x5$a;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 50
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 51
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_20

    const/4 v15, 0x1

    goto :goto_11

    :cond_1f
    move-object/from16 v1, p1

    :cond_20
    move/from16 v15, v17

    :goto_11
    if-nez v15, :cond_21

    .line 52
    invoke-virtual/range {p6 .. p6}, Lcom/appodeal/ads/u;->k()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 53
    iget-boolean v0, v12, Lcom/appodeal/ads/r;->C:Z

    if-eqz v0, :cond_22

    .line 54
    :cond_21
    invoke-virtual {v10, v1, v14, v12}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;Lcom/appodeal/ads/u;Lcom/appodeal/ads/z5;)V

    .line 55
    :cond_22
    iget-object v0, v13, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onShow()V

    :cond_23
    iget-wide v0, v13, Lcom/appodeal/ads/l;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v13, Lcom/appodeal/ads/l;->n:J

    .line 56
    :cond_24
    iget-object v0, v10, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string v1, "Display Ads"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    :goto_12
    return-void

    :catchall_0
    move-exception v0

    .line 57
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    .line 58
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public static a(Lcom/appodeal/ads/z5;Lcom/appodeal/ads/b0;)V
    .locals 2

    if-eqz p0, :cond_3

    .line 62
    iget-boolean v0, p0, Lcom/appodeal/ads/r;->F:Z

    if-nez v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    if-eqz v0, :cond_0

    .line 64
    invoke-static {v0}, Lcom/appodeal/ads/utils/o;->b(Lcom/appodeal/ads/l;)V

    .line 65
    iget-object v0, p0, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    .line 66
    check-cast v0, Lcom/appodeal/ads/r5;

    invoke-virtual {v0}, Lcom/appodeal/ads/l;->k()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    .line 68
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/l;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/appodeal/ads/utils/o;->b(Lcom/appodeal/ads/l;)V

    invoke-virtual {v1}, Lcom/appodeal/ads/l;->k()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/r;->a(ZZ)V

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/appodeal/ads/b0;->o(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    .line 70
    iput-boolean v1, p0, Lcom/appodeal/ads/r;->F:Z

    .line 71
    invoke-virtual {p0}, Lcom/appodeal/ads/r;->y()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/u;Lcom/appodeal/ads/z5;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;TAdRequestType;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_4

    .line 72
    iget-object v2, p2, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    if-eqz v2, :cond_4

    .line 73
    check-cast v2, Lcom/appodeal/ads/r5;

    .line 74
    iget-object v2, v2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 75
    invoke-interface {v2}, Lcom/appodeal/ads/AdUnit;->getImpressionInterval()I

    move-result v2

    if-lez v2, :cond_0

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/u;->e()Lcom/appodeal/ads/segments/g;

    move-result-object p1

    .line 77
    iget-object p1, p1, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    .line 78
    const-string v2, "impression_interval"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    const-string v3, "banner"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit16 v2, p1, 0x3e8

    :cond_1
    if-lez v2, :cond_2

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/appodeal/ads/x5;->b:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/appodeal/ads/x5;->b:Ljava/lang/Integer;

    if-nez p1, :cond_3

    const/16 p1, 0x3a98

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/appodeal/ads/x5;->b:Ljava/lang/Integer;

    .line 80
    :goto_2
    iget-wide v2, p2, Lcom/appodeal/ads/r;->m:J

    .line 81
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v2, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_4
    return-wide v0
.end method

.method public final a(Landroid/app/Activity;)Lcom/appodeal/ads/x5$d;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    .line 82
    sget-boolean v0, Lcom/appodeal/ads/r0;->l:Z

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/x5;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/x5$d;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Lcom/appodeal/ads/x5$d;

    .line 84
    invoke-direct {v0}, Lcom/appodeal/ads/x5$d;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/appodeal/ads/x5;->l:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/appodeal/ads/x5;->k:Lcom/appodeal/ads/x5$d;

    return-object p1
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/appodeal/ads/x5;->e:I

    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/appodeal/ads/q;Lcom/appodeal/ads/u;Lcom/appodeal/ads/p$a;)V
    .locals 2

    check-cast p2, Lcom/appodeal/ads/y5;

    .line 86
    iget-object v0, p4, Lcom/appodeal/ads/p$a;->a:Ljava/lang/String;

    const-string v1, "Show Failed"

    invoke-virtual {p3, v1, v0}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object p3, Lcom/appodeal/ads/p$a;->d:Lcom/appodeal/ads/p$a;

    if-eq p4, p3, :cond_0

    sget-object p3, Lcom/appodeal/ads/p$a;->c:Lcom/appodeal/ads/p$a;

    if-ne p4, p3, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;)Lcom/appodeal/ads/x5$d;

    move-result-object p1

    iget-object p2, p2, Lcom/appodeal/ads/y5;->c:Lcom/appodeal/ads/a;

    .line 88
    iput-object p2, p1, Lcom/appodeal/ads/x5$d;->a:Lcom/appodeal/ads/a;

    :cond_1
    return-void
.end method

.method public final declared-synchronized a(Landroid/app/Activity;Lcom/appodeal/ads/u;Lcom/appodeal/ads/z5;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;TAdRequestType;)V"
        }
    .end annotation

    const-string v0, "expect in "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string v2, "Toggle refresh"

    const-string v3, "start"

    invoke-static {v1, v2, v3}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appodeal/ads/x5;->i:Lcom/appodeal/ads/x5$c;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    .line 181
    sget-boolean v2, Lcom/appodeal/ads/r0;->l:Z

    if-nez v2, :cond_0

    .line 182
    iget-object v1, v1, Lcom/appodeal/ads/x5$c;->a:Lcom/appodeal/ads/x5$a;

    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    sget-object v1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 185
    iget-object v1, v1, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 186
    invoke-virtual {v1}, Lcom/appodeal/ads/context/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 187
    sget-object p1, Lcom/appodeal/ads/x5;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appodeal/ads/x5;->i:Lcom/appodeal/ads/x5$c;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string v1, "Toggle refresh"

    const-string v2, "remove previous refresh runnable"

    invoke-static {p1, v1, v2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string p2, "Toggle refresh"

    const-string p3, "skip: already pending"

    invoke-static {p1, p2, p3}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string v1, "Toggle refresh"

    const-string v2, "create new refresh runnable"

    invoke-static {p1, v1, v2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/appodeal/ads/x5$c;

    invoke-direct {p1, p0, p2}, Lcom/appodeal/ads/x5$c;-><init>(Lcom/appodeal/ads/x5;Lcom/appodeal/ads/u;)V

    iput-object p1, p0, Lcom/appodeal/ads/x5;->i:Lcom/appodeal/ads/x5$c;

    invoke-virtual {p0, p2, p3}, Lcom/appodeal/ads/x5;->a(Lcom/appodeal/ads/u;Lcom/appodeal/ads/z5;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Toggle refresh"

    invoke-static {p3, v1, v0}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/appodeal/ads/x5;->m:Landroid/os/Handler;

    iget-object v0, p0, Lcom/appodeal/ads/x5;->i:Lcom/appodeal/ads/x5$c;

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/x5;->d:Landroid/view/View;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appodeal/ads/x5;->j:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/x5;->j:Z

    return v0
.end method

.method public final bridge synthetic a(Landroid/app/Activity;Lcom/appodeal/ads/q;Lcom/appodeal/ads/u;)Z
    .locals 0

    check-cast p2, Lcom/appodeal/ads/y5;

    invoke-virtual {p0, p2, p3}, Lcom/appodeal/ads/x5;->a(Lcom/appodeal/ads/y5;Lcom/appodeal/ads/u;)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/app/Activity;Lcom/appodeal/ads/u;Lcom/appodeal/ads/a;Lcom/appodeal/ads/a;)Z
    .locals 11

    .line 171
    iget-object v0, p0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string v1, "start"

    const-string v2, "performShowPreviousAds"

    invoke-static {v0, v2, v1}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p2, Lcom/appodeal/ads/u;->y:Lcom/appodeal/ads/r;

    .line 173
    move-object v6, v0

    check-cast v6, Lcom/appodeal/ads/z5;

    const/4 v0, 0x0

    if-eqz v6, :cond_5

    .line 174
    iget-boolean v1, v6, Lcom/appodeal/ads/r;->C:Z

    if-eqz v1, :cond_5

    .line 175
    iget-boolean v1, v6, Lcom/appodeal/ads/r;->E:Z

    if-nez v1, :cond_5

    .line 176
    sget-object v1, Lcom/appodeal/ads/a;->h:Lcom/appodeal/ads/a;

    if-ne p3, v1, :cond_3

    .line 177
    iget v1, p0, Lcom/appodeal/ads/x5;->e:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/x5;->d:Landroid/view/View;

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/appodeal/ads/x5;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only BannerView.class and MrecView.class are supported as target container for position type == AdDisplayPosition.VIEW"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    .line 178
    const-string p1, "Show Failed"

    const-string p3, "view not found"

    invoke-virtual {p2, p1, p3}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string p2, "View container not found"

    invoke-static {p1, v2, p2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 179
    :cond_3
    iget-object v1, v6, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    .line 180
    move-object v7, v1

    check-cast v7, Lcom/appodeal/ads/r5;

    if-eqz v7, :cond_4

    iget-object v0, p0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string v1, "Perform showing previous ads"

    invoke-static {v0, v2, v1}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/appodeal/ads/t5;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p3

    move-object v9, p4

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/appodeal/ads/t5;-><init>(Lcom/appodeal/ads/x5;Landroid/app/Activity;Lcom/appodeal/ads/z5;Lcom/appodeal/ads/r5;Lcom/appodeal/ads/a;Lcom/appodeal/ads/a;Lcom/appodeal/ads/u;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string p2, "Previous ads hasn\'t loaded object"

    invoke-static {p1, v2, p2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string p2, "Can\'t show previous ads, because current displaying ads is: null, wasn\'t shown or cleared"

    invoke-static {p1, v2, p2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v0
.end method

.method public final a(Landroid/app/Activity;Lcom/appodeal/ads/y5;Lcom/appodeal/ads/u;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/appodeal/ads/y5;",
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;)Lcom/appodeal/ads/x5$d;

    move-result-object v0

    .line 156
    iget-boolean v1, p3, Lcom/appodeal/ads/u;->i:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "render"

    if-nez v1, :cond_1

    .line 157
    invoke-virtual {p3}, Lcom/appodeal/ads/u;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/appodeal/ads/y5;->c:Lcom/appodeal/ads/a;

    .line 158
    iput-object p1, v0, Lcom/appodeal/ads/x5$d;->a:Lcom/appodeal/ads/a;

    .line 159
    iget-object p1, p2, Lcom/appodeal/ads/q;->a:Lcom/appodeal/ads/segments/g;

    .line 160
    iput-object p1, p3, Lcom/appodeal/ads/u;->l:Lcom/appodeal/ads/segments/g;

    .line 161
    iget-object p1, p0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string p2, "Appodeal is initializing, ads will be displayed right after it\'s will be loaded"

    invoke-static {p1, v4, p2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string p2, "Appodeal hasn\'t been initialized yet, ads won\'t show"

    invoke-static {p1, v4, p2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    iget-boolean v1, p2, Lcom/appodeal/ads/y5;->d:Z

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, v0, Lcom/appodeal/ads/x5$d;->a:Lcom/appodeal/ads/a;

    if-nez v1, :cond_2

    .line 163
    iget-object v1, v0, Lcom/appodeal/ads/x5$d;->b:Lcom/appodeal/ads/f0;

    .line 164
    sget-object v5, Lcom/appodeal/ads/f0;->b:Lcom/appodeal/ads/f0;

    if-ne v1, v5, :cond_2

    return v3

    :cond_2
    invoke-static {}, Lcom/appodeal/ads/n5;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/appodeal/ads/utils/c;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Lcom/appodeal/ads/u;->k()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p2, Lcom/appodeal/ads/y5;->c:Lcom/appodeal/ads/a;

    .line 165
    iput-object p1, v0, Lcom/appodeal/ads/x5$d;->a:Lcom/appodeal/ads/a;

    .line 166
    iget-object p1, p2, Lcom/appodeal/ads/q;->a:Lcom/appodeal/ads/segments/g;

    .line 167
    iput-object p1, p3, Lcom/appodeal/ads/u;->l:Lcom/appodeal/ads/segments/g;

    .line 168
    iget-object p1, p0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string p2, "Fullscreen ads is showing, ads will be displayed right after it\'s will be closed"

    invoke-static {p1, v4, p2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    iget-object p1, p0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string p2, "Fullscreen ads is showing, ads won\'t show"

    invoke-static {p1, v4, p2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_4
    const/4 v1, 0x0

    .line 169
    iput-object v1, v0, Lcom/appodeal/ads/x5$d;->a:Lcom/appodeal/ads/a;

    .line 170
    iget-object v0, p2, Lcom/appodeal/ads/y5;->c:Lcom/appodeal/ads/a;

    iput-object v0, p0, Lcom/appodeal/ads/x5;->g:Lcom/appodeal/ads/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/p;->b(Landroid/app/Activity;Lcom/appodeal/ads/q;Lcom/appodeal/ads/u;)Z

    move-result p1

    return p1
.end method

.method public abstract a(Landroid/view/View;)Z
.end method

.method public final a(Lcom/appodeal/ads/y5;Lcom/appodeal/ads/u;)Z
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    iget-object v1, v8, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string v2, "start"

    const-string v3, "onRenderRequested"

    invoke-static {v1, v3, v2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-boolean v1, Lcom/appodeal/ads/r0;->l:Z

    if-eqz v1, :cond_0

    .line 90
    invoke-static {}, Lcom/appodeal/ads/n5;->b()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    sget-object v1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 92
    iget-object v1, v1, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 93
    invoke-virtual {v1}, Lcom/appodeal/ads/context/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    :goto_0
    move-object v9, v1

    const/4 v1, 0x0

    if-nez v9, :cond_1

    .line 94
    iget-object v0, v8, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string v2, "Target activity can\'t be resolved"

    invoke-static {v0, v3, v2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v6, v8, Lcom/appodeal/ads/x5;->f:Lcom/appodeal/ads/a;

    iget-object v5, v0, Lcom/appodeal/ads/y5;->c:Lcom/appodeal/ads/a;

    invoke-virtual {v8, v9}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;)Lcom/appodeal/ads/x5$d;

    move-result-object v10

    iget-object v2, v0, Lcom/appodeal/ads/q;->a:Lcom/appodeal/ads/segments/g;

    iget-boolean v4, v0, Lcom/appodeal/ads/q;->b:Z

    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v11

    check-cast v11, Lcom/appodeal/ads/z5;

    const-string v12, "Requesting cache"

    const-string v13, "Can\'t show for placement: "

    const-string v14, "Show"

    const-string v15, "isDebug: %s, isLoaded: %s, isLoading: %s, placement: \'%s\'"

    const/16 v16, 0x1

    if-nez v11, :cond_4

    iget-object v5, v8, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string v6, "No previous loaded ads"

    invoke-static {v5, v3, v6}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/appodeal/ads/q;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 95
    iget-object v6, v2, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 96
    filled-new-array {v0, v5, v5, v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v14, v0}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, v7, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    const-wide/16 v5, 0x0

    .line 98
    invoke-virtual {v2, v9, v0, v5, v6}, Lcom/appodeal/ads/segments/g;->a(Landroid/content/Context;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    iget-object v0, v8, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    .line 100
    invoke-static {v13}, Lcom/appodeal/ads/h0;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 101
    iget v2, v2, Lcom/appodeal/ads/segments/g;->a:I

    .line 102
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    if-nez v4, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/u;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v8, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    invoke-static {v0, v3, v12}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/appodeal/ads/x5;->c(Landroid/app/Activity;)V

    sget-object v0, Lcom/appodeal/ads/f0;->a:Lcom/appodeal/ads/f0;

    .line 103
    iput-object v0, v10, Lcom/appodeal/ads/x5$d;->b:Lcom/appodeal/ads/f0;

    return v16

    .line 104
    :cond_3
    iget-object v0, v8, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string v2, "Skipping cache because it\'s debug or not auto-cache"

    invoke-static {v0, v3, v2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    iget-boolean v1, v0, Lcom/appodeal/ads/q;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v17, v12

    .line 105
    iget-boolean v12, v11, Lcom/appodeal/ads/r;->u:Z

    .line 106
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11}, Lcom/appodeal/ads/r;->u()Z

    move-result v18

    move-object/from16 v19, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v18, v5

    .line 107
    iget-object v5, v2, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 108
    filled-new-array {v1, v12, v10, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v15, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v14, v1}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, v7, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 110
    iget-wide v14, v11, Lcom/appodeal/ads/r;->t:D

    .line 111
    invoke-virtual {v2, v9, v1, v14, v15}, Lcom/appodeal/ads/segments/g;->a(Landroid/content/Context;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;D)Z

    move-result v1

    if-nez v1, :cond_5

    .line 112
    iget-object v0, v8, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    .line 113
    invoke-static {v13}, Lcom/appodeal/ads/h0;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    iget v2, v2, Lcom/appodeal/ads/segments/g;->a:I

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    return v0

    .line 116
    :cond_5
    iget-object v1, v7, Lcom/appodeal/ads/u;->y:Lcom/appodeal/ads/r;

    .line 117
    check-cast v1, Lcom/appodeal/ads/z5;

    if-nez v4, :cond_9

    iget-boolean v0, v0, Lcom/appodeal/ads/y5;->d:Z

    if-nez v0, :cond_9

    .line 118
    invoke-virtual {v8, v9}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;)Lcom/appodeal/ads/x5$d;

    move-result-object v0

    .line 119
    iget-object v5, v0, Lcom/appodeal/ads/x5$d;->b:Lcom/appodeal/ads/f0;

    .line 120
    sget-object v10, Lcom/appodeal/ads/f0;->a:Lcom/appodeal/ads/f0;

    if-eq v5, v10, :cond_6

    .line 121
    iget-object v0, v0, Lcom/appodeal/ads/x5$d;->a:Lcom/appodeal/ads/a;

    if-eqz v0, :cond_9

    .line 122
    :cond_6
    iget-boolean v0, v11, Lcom/appodeal/ads/r;->h:Z

    if-nez v0, :cond_9

    .line 123
    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/u;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 124
    invoke-virtual {v8, v7, v1}, Lcom/appodeal/ads/x5;->a(Lcom/appodeal/ads/u;Lcom/appodeal/ads/z5;)J

    move-result-wide v0

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-gtz v0, :cond_7

    goto :goto_2

    .line 125
    :cond_7
    iget-object v0, v8, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string v1, "Showing previous ads"

    invoke-static {v0, v3, v1}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v18

    invoke-virtual {v8, v9, v7, v5, v6}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;Lcom/appodeal/ads/u;Lcom/appodeal/ads/a;Lcom/appodeal/ads/a;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v12, v19

    .line 126
    iput-object v10, v12, Lcom/appodeal/ads/x5$d;->b:Lcom/appodeal/ads/f0;

    :cond_8
    return v0

    :cond_9
    :goto_2
    move-object/from16 v5, v18

    move-object/from16 v12, v19

    .line 127
    iget-object v0, v2, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 128
    iget-boolean v1, v11, Lcom/appodeal/ads/r;->u:Z

    if-nez v1, :cond_e

    .line 129
    iget-boolean v1, v11, Lcom/appodeal/ads/r;->v:Z

    if-nez v1, :cond_e

    .line 130
    iget-object v1, v11, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    .line 138
    :cond_a
    invoke-virtual {v11}, Lcom/appodeal/ads/r;->u()Z

    move-result v0

    const-string v1, "Trying to show previous ads"

    if-nez v0, :cond_c

    .line 139
    iget-boolean v0, v11, Lcom/appodeal/ads/r;->C:Z

    if-eqz v0, :cond_b

    .line 140
    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/u;->k()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    iget-object v0, v8, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v7, v5, v6}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;Lcom/appodeal/ads/u;Lcom/appodeal/ads/a;Lcom/appodeal/ads/a;)Z

    if-nez v4, :cond_13

    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/u;->k()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v8, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    move-object/from16 v1, v17

    invoke-static {v0, v3, v1}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/appodeal/ads/x5;->c(Landroid/app/Activity;)V

    sget-object v0, Lcom/appodeal/ads/f0;->a:Lcom/appodeal/ads/f0;

    .line 141
    iput-object v0, v12, Lcom/appodeal/ads/x5$d;->b:Lcom/appodeal/ads/f0;

    return v16

    .line 142
    :cond_c
    :goto_3
    iget-object v0, v8, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v7, v5, v6}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;Lcom/appodeal/ads/u;Lcom/appodeal/ads/a;Lcom/appodeal/ads/a;)Z

    move-result v0

    if-nez v0, :cond_d

    if-nez v4, :cond_13

    invoke-virtual/range {p2 .. p2}, Lcom/appodeal/ads/u;->k()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_d
    sget-object v0, Lcom/appodeal/ads/f0;->a:Lcom/appodeal/ads/f0;

    .line 143
    iput-object v0, v12, Lcom/appodeal/ads/x5$d;->b:Lcom/appodeal/ads/f0;

    return v16

    .line 131
    :cond_e
    :goto_4
    iget-object v0, v2, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 132
    invoke-virtual {v11, v0}, Lcom/appodeal/ads/r;->a(Ljava/lang/String;)Lcom/appodeal/ads/l;

    move-result-object v0

    .line 133
    iput-object v0, v11, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    .line 134
    move-object v4, v0

    check-cast v4, Lcom/appodeal/ads/r5;

    if-eqz v4, :cond_13

    .line 135
    iget v0, v8, Lcom/appodeal/ads/x5;->e:I

    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    iget-object v0, v8, Lcom/appodeal/ads/x5;->d:Landroid/view/View;

    :goto_5
    if-eqz v0, :cond_11

    invoke-virtual {v8, v0}, Lcom/appodeal/ads/x5;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_6

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only BannerView.class and MrecView.class are supported as target container for position type == AdDisplayPosition.VIEW"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_6
    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_12

    .line 136
    sget-object v0, Lcom/appodeal/ads/a;->h:Lcom/appodeal/ads/a;

    if-ne v5, v0, :cond_12

    const-string v0, "Show Failed"

    const-string v1, "view not found"

    invoke-virtual {v7, v0, v1}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string v1, "View container not found"

    invoke-static {v0, v3, v1}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    iget-object v0, v8, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    const-string v1, "Showing new ads"

    invoke-static {v0, v3, v1}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/appodeal/ads/s5;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v11

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/appodeal/ads/s5;-><init>(Lcom/appodeal/ads/x5;Landroid/app/Activity;Lcom/appodeal/ads/z5;Lcom/appodeal/ads/r5;Lcom/appodeal/ads/a;Lcom/appodeal/ads/a;Lcom/appodeal/ads/u;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/appodeal/ads/f0;->a:Lcom/appodeal/ads/f0;

    .line 137
    iput-object v0, v12, Lcom/appodeal/ads/x5$d;->b:Lcom/appodeal/ads/f0;

    return v16

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/appodeal/ads/a;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/x5;->f:Lcom/appodeal/ads/a;

    return-object v0
.end method

.method public final b(Landroid/app/Activity;)Lcom/appodeal/ads/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;)Lcom/appodeal/ads/x5$d;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/x5$d;->a:Lcom/appodeal/ads/a;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/x5;->g:Lcom/appodeal/ads/a;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/appodeal/ads/x5;->f:Lcom/appodeal/ads/a;

    :goto_0
    return-object p1
.end method

.method public abstract c(Landroid/app/Activity;)V
.end method
