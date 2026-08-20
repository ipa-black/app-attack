.class public final Lcom/appodeal/ads/utils/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/utils/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/view/View;

.field public final c:J

.field public final d:F

.field public final e:Lcom/appodeal/ads/utils/d0$b;

.field public f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public g:Lcom/appodeal/ads/utils/d0$a$a;

.field public h:J

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public final n:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$Z2YW9RQWTkvoQvIf8pZLiadqF7c(Lcom/appodeal/ads/utils/d0$a;)Z
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/utils/d0$a;->a()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/view/View;JLcom/appodeal/ads/utils/d0$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/utils/d0$a;->a:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/utils/d0$a;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/utils/d0$a;->m:Z

    new-instance v0, Lcom/appodeal/ads/utils/d0$a$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/utils/d0$a$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/utils/d0$a;)V

    iput-object v0, p0, Lcom/appodeal/ads/utils/d0$a;->n:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/appodeal/ads/utils/d0$a;->b:Landroid/view/View;

    iput-wide p2, p0, Lcom/appodeal/ads/utils/d0$a;->c:J

    const p1, 0x3f4ccccd    # 0.8f

    iput p1, p0, Lcom/appodeal/ads/utils/d0$a;->d:F

    iput-object p4, p0, Lcom/appodeal/ads/utils/d0$a;->e:Lcom/appodeal/ads/utils/d0$b;

    return-void
.end method

.method public static a(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr v3, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/2addr p0, v0

    sub-int p0, v1, p0

    int-to-float p0, p0

    int-to-float p1, v1

    div-float/2addr p0, p1

    return p0
.end method

.method private synthetic a()Z
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/utils/d0$a;->l:Z

    iget-object v0, p0, Lcom/appodeal/ads/utils/d0$a;->b:Landroid/view/View;

    iget v1, p0, Lcom/appodeal/ads/utils/d0$a;->d:F

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/utils/d0$a;->a(Landroid/view/View;F)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;F)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "Ad View is not completely visible ("

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, v1, Lcom/appodeal/ads/utils/d0$a;->a:Landroid/graphics/Rect;

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "Show wasn\'t tracked: ad not visible globally"

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/utils/d0$a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "Show wasn\'t tracked: ad not shown on view"

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/utils/d0$a;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/appodeal/ads/n5;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Show wasn\'t tracked: ad is transparent "

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/utils/d0$a;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v0, "Show wasn\'t tracked: ad hasn\'t window focus"

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/utils/d0$a;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v3, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v3, v3, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v3}, Lcom/appodeal/ads/context/f;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    const v6, 0x1020002

    .line 3
    invoke-virtual {v3, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v3, v5

    :goto_0
    if-nez v3, :cond_5

    const-string v0, "Activity content layout not found, is your activity running?"

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/utils/d0$a;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v3, v1, Lcom/appodeal/ads/utils/d0$a;->a:Landroid/graphics/Rect;

    invoke-static {v3, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v0, "Ad View is out of current window, show wasn\'t tracked"

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/utils/d0$a;->a(Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    mul-int/2addr v3, v6

    int-to-float v3, v3

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-nez v6, :cond_7

    const-string v0, "Ad View width or height is zero, show wasn\'t tracked"

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/utils/d0$a;->a(Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v6, v1, Lcom/appodeal/ads/utils/d0$a;->a:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, v1, Lcom/appodeal/ads/utils/d0$a;->a:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v3

    cmpg-float v3, v6, p2

    if-gez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), show wasn\'t tracked"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/utils/d0$a;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    :goto_1
    if-eqz v3, :cond_d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v2

    :goto_2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_b

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_a

    const/4 v9, 0x2

    new-array v9, v9, [I

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-static {v8}, Lcom/appodeal/ads/n5;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v9

    iget-object v10, v1, Lcom/appodeal/ads/utils/d0$a;->a:Landroid/graphics/Rect;

    invoke-static {v10, v9}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v1, Lcom/appodeal/ads/utils/d0$a;->a:Landroid/graphics/Rect;

    invoke-static {v10, v9}, Lcom/appodeal/ads/utils/d0$a;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    const-string v11, "SDK"

    const-string v12, "Viewability"

    const-string v13, "Ad view is overlapped by another visible view (type: %s, id: %s), visible percent: %s"

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    filled-new-array {v8, v10, v14}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v13, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v11, v12, v8, v10}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    cmpg-float v8, v9, p2

    if-gez v8, :cond_9

    const-string v0, "Ad View is covered by another view, show wasn\'t tracked"

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/utils/d0$a;->a(Ljava/lang/String;)V

    return-void

    :cond_9
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x3

    if-lt v6, v8, :cond_a

    const-string v0, "Ad View is covered by too many views, show wasn\'t tracked"

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/utils/d0$a;->a(Ljava/lang/String;)V

    return-void

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    if-eq v3, v0, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v15, v4

    move-object v4, v3

    move-object v3, v15

    goto/16 :goto_1

    :cond_c
    move-object v3, v5

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 4
    :cond_d
    iget-boolean v0, v1, Lcom/appodeal/ads/utils/d0$a;->i:Z

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/appodeal/ads/utils/d0$a;->e:Lcom/appodeal/ads/utils/d0$b;

    invoke-interface {v0}, Lcom/appodeal/ads/utils/d0$b;->a()V

    iput-boolean v2, v1, Lcom/appodeal/ads/utils/d0$a;->i:Z

    :cond_e
    iget-boolean v0, v1, Lcom/appodeal/ads/utils/d0$a;->k:Z

    if-nez v0, :cond_f

    iget-boolean v0, v1, Lcom/appodeal/ads/utils/d0$a;->j:Z

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/appodeal/ads/utils/d0$a;->n:Ljava/lang/Runnable;

    iget-wide v3, v1, Lcom/appodeal/ads/utils/d0$a;->c:J

    .line 5
    sget-object v5, Lcom/appodeal/ads/utils/d0;->b:Landroid/os/Handler;

    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/appodeal/ads/utils/d0$a;->h:J

    iput-boolean v2, v1, Lcom/appodeal/ads/utils/d0$a;->k:Z

    :cond_f
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/appodeal/ads/utils/d0$a;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/appodeal/ads/utils/d0$a;->l:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/appodeal/ads/utils/d0$a;->m:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/utils/d0$a;->m:Z

    sget-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v2, "SDK"

    const-string v3, "Viewability"

    invoke-static {v2, v3, p1, v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/appodeal/ads/utils/d0$a;->j:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/appodeal/ads/utils/d0$a;->n:Ljava/lang/Runnable;

    .line 7
    sget-object v0, Lcom/appodeal/ads/utils/d0;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iput-boolean v1, p0, Lcom/appodeal/ads/utils/d0$a;->k:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appodeal/ads/utils/d0$a;->h:J

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 4

    iget-boolean v0, p0, Lcom/appodeal/ads/utils/d0$a;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/utils/d0$a;->j:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/appodeal/ads/utils/d0$a;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/appodeal/ads/utils/d0$a;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/appodeal/ads/utils/d0$a;->h:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/appodeal/ads/utils/d0$a;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/utils/d0$a;->j:Z

    iget-object v0, p0, Lcom/appodeal/ads/utils/d0$a;->e:Lcom/appodeal/ads/utils/d0$b;

    invoke-interface {v0}, Lcom/appodeal/ads/utils/d0$b;->b()V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/utils/d0$a;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/appodeal/ads/utils/d0$a;->g:Lcom/appodeal/ads/utils/d0$a$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/utils/d0$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/utils/d0$a;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/utils/d0$a;->n:Ljava/lang/Runnable;

    .line 1
    sget-object v1, Lcom/appodeal/ads/utils/d0;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lcom/appodeal/ads/utils/d0;->a:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/utils/d0$a;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/d0$a$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/utils/d0$a$$ExternalSyntheticLambda1;-><init>(Lcom/appodeal/ads/utils/d0$a;)V

    iput-object v0, p0, Lcom/appodeal/ads/utils/d0$a;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/utils/d0$a;->g:Lcom/appodeal/ads/utils/d0$a$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/appodeal/ads/utils/d0$a$a;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/utils/d0$a$a;-><init>(Lcom/appodeal/ads/utils/d0$a;)V

    iput-object v0, p0, Lcom/appodeal/ads/utils/d0$a;->g:Lcom/appodeal/ads/utils/d0$a$a;

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/utils/d0$a;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/appodeal/ads/utils/d0$a;->g:Lcom/appodeal/ads/utils/d0$a$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/utils/d0$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/utils/d0$a;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/utils/d0$a;->b:Landroid/view/View;

    iget v1, p0, Lcom/appodeal/ads/utils/d0$a;->d:F

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/utils/d0$a;->a(Landroid/view/View;F)V

    return-void
.end method
