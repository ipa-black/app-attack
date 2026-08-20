.class public Lcom/explorestack/iab/utils/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/utils/l$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lcom/explorestack/iab/utils/l$c;

.field public c:Z

.field public d:F

.field public e:J

.field public f:J

.field public final g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/explorestack/iab/utils/l$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/explorestack/iab/utils/l;->c:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/explorestack/iab/utils/l;->d:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/explorestack/iab/utils/l;->e:J

    iput-wide v0, p0, Lcom/explorestack/iab/utils/l;->f:J

    new-instance v0, Lcom/explorestack/iab/utils/l$a;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/utils/l$a;-><init>(Lcom/explorestack/iab/utils/l;)V

    iput-object v0, p0, Lcom/explorestack/iab/utils/l;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v1, Lcom/explorestack/iab/utils/l$b;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/utils/l$b;-><init>(Lcom/explorestack/iab/utils/l;)V

    iput-object v1, p0, Lcom/explorestack/iab/utils/l;->h:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/explorestack/iab/utils/l;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/explorestack/iab/utils/l;->b:Lcom/explorestack/iab/utils/l$c;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/l;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/utils/l;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/l;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/utils/l;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/utils/l;->a(J)V

    return-void
.end method

.method public static synthetic b(Lcom/explorestack/iab/utils/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/explorestack/iab/utils/l;->f:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/explorestack/iab/utils/l;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/utils/l;->a:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic d(Lcom/explorestack/iab/utils/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/explorestack/iab/utils/l;->e:J

    return-wide v0
.end method

.method public static synthetic e(Lcom/explorestack/iab/utils/l;)Lcom/explorestack/iab/utils/l$c;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/utils/l;->b:Lcom/explorestack/iab/utils/l$c;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/l;->e()V

    iget-object v0, p0, Lcom/explorestack/iab/utils/l;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/utils/l;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public a(F)V
    .locals 2

    iget v0, p0, Lcom/explorestack/iab/utils/l;->d:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/explorestack/iab/utils/l;->d:F

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    float-to-long v0, p1

    iput-wide v0, p0, Lcom/explorestack/iab/utils/l;->e:J

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/l;->d()V

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/explorestack/iab/utils/l;->f:J

    return-void
.end method

.method public b()Z
    .locals 4

    iget-wide v0, p0, Lcom/explorestack/iab/utils/l;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/explorestack/iab/utils/l;->f:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/utils/l;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    iget-boolean v1, p0, Lcom/explorestack/iab/utils/l;->c:Z

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/explorestack/iab/utils/l;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/l;->e()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/l;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/l;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/explorestack/iab/utils/l;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/explorestack/iab/utils/l;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/utils/l;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/explorestack/iab/utils/l;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/utils/l;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/explorestack/iab/utils/l;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
