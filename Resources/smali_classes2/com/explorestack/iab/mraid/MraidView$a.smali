.class public Lcom/explorestack/iab/mraid/MraidView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidView;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lcom/explorestack/iab/mraid/MraidView;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/mraid/MraidView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$a;->c:Lcom/explorestack/iab/mraid/MraidView;

    iput-object p2, p0, Lcom/explorestack/iab/mraid/MraidView$a;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/explorestack/iab/mraid/MraidView$a;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$a;->c:Lcom/explorestack/iab/mraid/MraidView;

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$a;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/mraid/MraidView;Landroid/view/View;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
