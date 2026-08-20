.class public Lcom/explorestack/iab/mraid/MraidView$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidView;->h()V
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

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$k;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$k;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->t(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/j;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$k;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/MraidView;->u(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/j;->a(Lcom/explorestack/iab/mraid/b;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$k;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->t(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/j;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$k;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/MraidView;->v(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/j;->a(Lcom/explorestack/iab/mraid/d;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$k;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->t(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/j;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$k;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/MraidView;->t(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/iab/mraid/j;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/j;->a(Z)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$k;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->t(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/j;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$k;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/MraidView;->m(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/j;->a(Lcom/explorestack/iab/mraid/h;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$k;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->t(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/j;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$k;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/MraidView;->w(Lcom/explorestack/iab/mraid/MraidView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/j;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$k;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->t(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/j;->h()V

    return-void
.end method
