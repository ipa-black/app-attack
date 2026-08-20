.class public Lcom/explorestack/iab/utils/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/utils/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/utils/g;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/utils/g;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/g$a;->a:Lcom/explorestack/iab/utils/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/utils/g$a;->a:Lcom/explorestack/iab/utils/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/explorestack/iab/utils/g;->a(Lcom/explorestack/iab/utils/g;Z)Z

    iget-object v0, p0, Lcom/explorestack/iab/utils/g$a;->a:Lcom/explorestack/iab/utils/g;

    iget-object v1, v0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/explorestack/iab/utils/g;->c:Lcom/explorestack/iab/utils/IabElementStyle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/utils/g$a;->a:Lcom/explorestack/iab/utils/g;

    invoke-static {v1}, Lcom/explorestack/iab/utils/g;->a(Lcom/explorestack/iab/utils/g;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-void
.end method
