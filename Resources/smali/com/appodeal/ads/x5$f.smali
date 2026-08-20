.class public final Lcom/appodeal/ads/x5$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/x5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/z5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestType;"
        }
    .end annotation
.end field

.field public final b:Lcom/appodeal/ads/r5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdObjectType;"
        }
    .end annotation
.end field

.field public final c:Lcom/appodeal/ads/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;"
        }
    .end annotation
.end field

.field public final d:Landroid/view/View;

.field public final e:Landroid/view/View;

.field public final f:Z

.field public final g:Z

.field public final synthetic h:Lcom/appodeal/ads/x5;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/x5;Lcom/appodeal/ads/z5;Lcom/appodeal/ads/r5;Lcom/appodeal/ads/u;Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;",
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/x5$f;->h:Lcom/appodeal/ads/x5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p2, p0, Lcom/appodeal/ads/x5$f;->a:Lcom/appodeal/ads/z5;

    iput-object p3, p0, Lcom/appodeal/ads/x5$f;->b:Lcom/appodeal/ads/r5;

    iput-object p4, p0, Lcom/appodeal/ads/x5$f;->c:Lcom/appodeal/ads/u;

    iput-object p5, p0, Lcom/appodeal/ads/x5$f;->d:Landroid/view/View;

    iput-object p6, p0, Lcom/appodeal/ads/x5$f;->e:Landroid/view/View;

    iput-boolean p7, p0, Lcom/appodeal/ads/x5$f;->f:Z

    iput-boolean p8, p0, Lcom/appodeal/ads/x5$f;->g:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p1, p0, Lcom/appodeal/ads/x5$f;->d:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/x5$f;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/x5$f;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/appodeal/ads/x5$f;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    iget-object p1, p0, Lcom/appodeal/ads/x5$f;->h:Lcom/appodeal/ads/x5;

    .line 2
    iput-object v0, p1, Lcom/appodeal/ads/x5;->h:Ljava/lang/ref/WeakReference;

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/x5$f;->d:Landroid/view/View;

    iget-boolean v1, p0, Lcom/appodeal/ads/x5$f;->f:Z

    iget-boolean v2, p0, Lcom/appodeal/ads/x5$f;->g:Z

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/x5;->a(Landroid/view/View;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p1, p0, Lcom/appodeal/ads/x5$f;->d:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/x5$f;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/x5$f;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/appodeal/ads/x5$f;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    iget-object p1, p0, Lcom/appodeal/ads/x5$f;->h:Lcom/appodeal/ads/x5;

    .line 2
    iput-object v0, p1, Lcom/appodeal/ads/x5;->h:Ljava/lang/ref/WeakReference;

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/x5$f;->a:Lcom/appodeal/ads/z5;

    iget-object v1, p0, Lcom/appodeal/ads/x5$f;->b:Lcom/appodeal/ads/r5;

    iget-object v2, p0, Lcom/appodeal/ads/x5$f;->c:Lcom/appodeal/ads/u;

    iget-object v3, p0, Lcom/appodeal/ads/x5$f;->e:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v4, Lcom/appodeal/ads/u5;

    invoke-direct {v4, p1, v2, v0, v1}, Lcom/appodeal/ads/u5;-><init>(Lcom/appodeal/ads/x5;Lcom/appodeal/ads/u;Lcom/appodeal/ads/z5;Lcom/appodeal/ads/r5;)V

    .line 6
    iget p1, v2, Lcom/appodeal/ads/u;->q:I

    int-to-long v5, p1

    .line 7
    sget-object p1, Lcom/appodeal/ads/utils/d0;->a:Ljava/util/HashMap;

    monitor-enter p1

    .line 8
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/utils/d0$a;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/appodeal/ads/utils/d0$a;->b()V

    .line 10
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    new-instance v0, Lcom/appodeal/ads/utils/d0$a;

    invoke-direct {v0, v3, v5, v6, v4}, Lcom/appodeal/ads/utils/d0$a;-><init>(Landroid/view/View;JLcom/appodeal/ads/utils/d0$b;)V

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/d0$a;->c()V

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    iget-object p1, p0, Lcom/appodeal/ads/x5$f;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/appodeal/ads/x5$f;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :try_start_3
    iget-object p1, p0, Lcom/appodeal/ads/x5$f;->h:Lcom/appodeal/ads/x5;

    iget-object v0, p0, Lcom/appodeal/ads/x5$f;->d:Landroid/view/View;

    iget-boolean v1, p0, Lcom/appodeal/ads/x5$f;->f:Z

    iget-boolean v2, p0, Lcom/appodeal/ads/x5$f;->g:Z

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/x5;->a(Landroid/view/View;ZZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    .line 16
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/x5$f;->h:Lcom/appodeal/ads/x5;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1
    iput-object v1, v0, Lcom/appodeal/ads/x5;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method
