.class public Lcom/explorestack/iab/mraid/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/mraid/k$a;
    }
.end annotation


# instance fields
.field public a:Lcom/explorestack/iab/mraid/k$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Landroid/view/View;)Lcom/explorestack/iab/mraid/k$a;
    .locals 1

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/k;->a()V

    new-instance v0, Lcom/explorestack/iab/mraid/k$a;

    invoke-direct {v0, p1}, Lcom/explorestack/iab/mraid/k$a;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/k;->a:Lcom/explorestack/iab/mraid/k$a;

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/k;->a:Lcom/explorestack/iab/mraid/k$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/k$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/mraid/k;->a:Lcom/explorestack/iab/mraid/k$a;

    :cond_0
    return-void
.end method
