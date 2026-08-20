.class public Lcom/explorestack/iab/vast/activity/VastView$a;
.super Lcom/explorestack/iab/vast/activity/VastView$z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/activity/VastView;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Ljava/lang/ref/WeakReference;

.field public final synthetic g:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$a;->g:Lcom/explorestack/iab/vast/activity/VastView;

    iput-object p5, p0, Lcom/explorestack/iab/vast/activity/VastView$a;->f:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2, p3, p4}, Lcom/explorestack/iab/vast/activity/VastView$z;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Lcom/explorestack/iab/vast/activity/VastView$a$a;

    invoke-direct {p1, p0}, Lcom/explorestack/iab/vast/activity/VastView$a$a;-><init>(Lcom/explorestack/iab/vast/activity/VastView$a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/explorestack/iab/vast/activity/VastView$a$b;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/vast/activity/VastView$a$b;-><init>(Lcom/explorestack/iab/vast/activity/VastView$a;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance p1, Lcom/explorestack/iab/vast/activity/VastView$a$c;

    invoke-direct {p1, p0}, Lcom/explorestack/iab/vast/activity/VastView$a$c;-><init>(Lcom/explorestack/iab/vast/activity/VastView$a;)V

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
