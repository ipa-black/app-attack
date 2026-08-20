.class public Lcom/explorestack/iab/mraid/MraidView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/mraid/MraidView;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$g;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$g;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->m(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/h;

    move-result-object v0

    sget-object v1, Lcom/explorestack/iab/mraid/h;->c:Lcom/explorestack/iab/mraid/h;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$g;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->n(Lcom/explorestack/iab/mraid/MraidView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$g;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->m(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/h;

    move-result-object v0

    sget-object v1, Lcom/explorestack/iab/mraid/h;->d:Lcom/explorestack/iab/mraid/h;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$g;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->o(Lcom/explorestack/iab/mraid/MraidView;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$g;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidView;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$g;->a:Lcom/explorestack/iab/mraid/MraidView;

    sget-object v1, Lcom/explorestack/iab/mraid/h;->e:Lcom/explorestack/iab/mraid/h;

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidView;->setViewState(Lcom/explorestack/iab/mraid/h;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$g;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->f(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$g;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->f(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/MraidViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$g;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-interface {v0, v1}, Lcom/explorestack/iab/mraid/MraidViewListener;->onClose(Lcom/explorestack/iab/mraid/MraidView;)V

    :cond_2
    return-void
.end method
