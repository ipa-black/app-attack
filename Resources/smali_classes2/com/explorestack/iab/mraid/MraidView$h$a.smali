.class public Lcom/explorestack/iab/mraid/MraidView$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidView$h;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Point;

.field public final synthetic b:Lcom/explorestack/iab/mraid/MraidView$h;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/mraid/MraidView$h;Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$h$a;->b:Lcom/explorestack/iab/mraid/MraidView$h;

    iput-object p2, p0, Lcom/explorestack/iab/mraid/MraidView$h$a;->a:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/explorestack/iab/mraid/MraidView$h$a$a;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/mraid/MraidView$h$a$a;-><init>(Lcom/explorestack/iab/mraid/MraidView$h$a;)V

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$h$a;->b:Lcom/explorestack/iab/mraid/MraidView$h;

    iget-object v2, v1, Lcom/explorestack/iab/mraid/MraidView$h;->b:Lcom/explorestack/iab/mraid/MraidView;

    iget-object v3, p0, Lcom/explorestack/iab/mraid/MraidView$h$a;->a:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v1, v1, Lcom/explorestack/iab/mraid/MraidView$h;->a:Lcom/explorestack/iab/mraid/j;

    invoke-static {v2, v4, v3, v1, v0}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/mraid/MraidView;IILcom/explorestack/iab/mraid/j;Ljava/lang/Runnable;)V

    return-void
.end method
