.class public Lcom/explorestack/iab/mraid/m;
.super Landroid/view/GestureDetector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/mraid/m$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/explorestack/iab/mraid/m$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/explorestack/iab/mraid/m$a;

    invoke-direct {v0}, Lcom/explorestack/iab/mraid/m$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/explorestack/iab/mraid/m;-><init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/m$a;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/m$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/explorestack/iab/mraid/m;->a:Lcom/explorestack/iab/mraid/m$a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/m;->a:Lcom/explorestack/iab/mraid/m$a;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/m$a;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/m;->a:Lcom/explorestack/iab/mraid/m$a;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/m$a;->b()V

    return-void
.end method
