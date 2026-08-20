.class public Lcom/explorestack/iab/utils/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/explorestack/iab/utils/b$b;->b:Lcom/explorestack/iab/utils/b;

    iput-object p2, p0, Lcom/explorestack/iab/utils/b$b;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/explorestack/iab/utils/b$b;->b:Lcom/explorestack/iab/utils/b;

    iget-object v1, p0, Lcom/explorestack/iab/utils/b$b;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-static {v0, p1, v1}, Lcom/explorestack/iab/utils/b;->a(Lcom/explorestack/iab/utils/b;FLcom/explorestack/iab/utils/b$d;)V

    iget-object v0, p0, Lcom/explorestack/iab/utils/b$b;->b:Lcom/explorestack/iab/utils/b;

    iget-object v1, p0, Lcom/explorestack/iab/utils/b$b;->a:Lcom/explorestack/iab/utils/b$d;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/explorestack/iab/utils/b;->a(Lcom/explorestack/iab/utils/b;FLcom/explorestack/iab/utils/b$d;Z)V

    iget-object p1, p0, Lcom/explorestack/iab/utils/b$b;->b:Lcom/explorestack/iab/utils/b;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
