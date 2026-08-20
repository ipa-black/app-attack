.class public Lcom/explorestack/iab/mraid/MraidView$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/mraid/j;

.field public final synthetic b:Lcom/explorestack/iab/mraid/MraidView;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/j;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$h;->b:Lcom/explorestack/iab/mraid/MraidView;

    iput-object p2, p0, Lcom/explorestack/iab/mraid/MraidView$h;->a:Lcom/explorestack/iab/mraid/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$h;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$h;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/MraidView;->p(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/utils/Assets;->resolveDefCloseStyle(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$h;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/MraidView;->q(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/iab/mraid/f;->e()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/IabElementStyle;->getHorizontalPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/IabElementStyle;->getVerticalPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/explorestack/iab/utils/Utils;->getClickPoint(Landroid/graphics/Rect;II)Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Lcom/explorestack/iab/mraid/MraidView$h$a;

    invoke-direct {v1, p0, v0}, Lcom/explorestack/iab/mraid/MraidView$h$a;-><init>(Lcom/explorestack/iab/mraid/MraidView$h;Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/explorestack/iab/mraid/MraidView$h;->b:Lcom/explorestack/iab/mraid/MraidView;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/explorestack/iab/mraid/MraidView$h;->a:Lcom/explorestack/iab/mraid/j;

    invoke-static {v2, v3, v0, v4, v1}, Lcom/explorestack/iab/mraid/MraidView;->b(Lcom/explorestack/iab/mraid/MraidView;IILcom/explorestack/iab/mraid/j;Ljava/lang/Runnable;)V

    return-void
.end method
