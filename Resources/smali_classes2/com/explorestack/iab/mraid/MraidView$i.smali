.class public Lcom/explorestack/iab/mraid/MraidView$i;
.super Lcom/explorestack/iab/mraid/MraidView$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/explorestack/iab/mraid/MraidView;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 1

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$i;->b:Lcom/explorestack/iab/mraid/MraidView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/explorestack/iab/mraid/MraidView$l;-><init>(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/MraidView$c;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$i;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidView;->t(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/j;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$i;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidView;->t(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/j;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/j;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$i;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidView;->s(Lcom/explorestack/iab/mraid/MraidView;)V

    return-void
.end method
