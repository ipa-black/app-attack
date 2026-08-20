.class public Lcom/explorestack/iab/utils/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/utils/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/utils/b$d;

.field public final synthetic b:Lcom/explorestack/iab/utils/b;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/utils/b;Lcom/explorestack/iab/utils/b$d;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/b$c;->b:Lcom/explorestack/iab/utils/b;

    iput-object p2, p0, Lcom/explorestack/iab/utils/b$c;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/explorestack/iab/utils/b$c;->b:Lcom/explorestack/iab/utils/b;

    iget-object v1, p0, Lcom/explorestack/iab/utils/b$c;->a:Lcom/explorestack/iab/utils/b$d;

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v1, v2}, Lcom/explorestack/iab/utils/b;->a(Lcom/explorestack/iab/utils/b;FLcom/explorestack/iab/utils/b$d;Z)V

    iget-object v0, p0, Lcom/explorestack/iab/utils/b$c;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/b$d;->l()V

    iget-object v0, p0, Lcom/explorestack/iab/utils/b$c;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/b$d;->j()V

    iget-object v0, p0, Lcom/explorestack/iab/utils/b$c;->b:Lcom/explorestack/iab/utils/b;

    invoke-static {v0}, Lcom/explorestack/iab/utils/b;->b(Lcom/explorestack/iab/utils/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/utils/b$c;->b:Lcom/explorestack/iab/utils/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/explorestack/iab/utils/b;->a(Lcom/explorestack/iab/utils/b;Z)Z

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-wide/16 v0, 0x534

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/utils/b$c;->b:Lcom/explorestack/iab/utils/b;

    invoke-static {p1}, Lcom/explorestack/iab/utils/b;->a(Lcom/explorestack/iab/utils/b;)F

    move-result v0

    add-float/2addr v0, v3

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/b;->a(Lcom/explorestack/iab/utils/b;F)F

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/explorestack/iab/utils/b$c;->b:Lcom/explorestack/iab/utils/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/b;->a(Lcom/explorestack/iab/utils/b;F)F

    return-void
.end method
