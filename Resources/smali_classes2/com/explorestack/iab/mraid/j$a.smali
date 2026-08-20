.class public Lcom/explorestack/iab/mraid/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/mraid/i$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/j;-><init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/j$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/mraid/j;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/mraid/j;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/mraid/j$a;->a:Lcom/explorestack/iab/mraid/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/j$a;->a:Lcom/explorestack/iab/mraid/j;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/j;->a(Lcom/explorestack/iab/mraid/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/j$a;->a:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/j;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/j$a;->a:Lcom/explorestack/iab/mraid/j;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/j;->b(Lcom/explorestack/iab/mraid/j;)Lcom/explorestack/iab/mraid/j$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/explorestack/iab/mraid/j$b;->a(Z)V

    return-void
.end method
