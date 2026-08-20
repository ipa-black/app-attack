.class public Lcom/explorestack/iab/mraid/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/mraid/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:[Landroid/view/View;

.field public b:Ljava/lang/Runnable;

.field public c:I

.field public final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>([Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/explorestack/iab/mraid/k$a$a;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/mraid/k$a$a;-><init>(Lcom/explorestack/iab/mraid/k$a;)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/k$a;->d:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/explorestack/iab/mraid/k$a;->a:[Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/mraid/k$a;)[Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/mraid/k$a;->a:[Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/k$a;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->cancelOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/mraid/k$a;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/mraid/k$a;->b:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/explorestack/iab/mraid/k$a;->a:[Landroid/view/View;

    array-length p1, p1

    iput p1, p0, Lcom/explorestack/iab/mraid/k$a;->c:I

    iget-object p1, p0, Lcom/explorestack/iab/mraid/k$a;->d:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget v0, p0, Lcom/explorestack/iab/mraid/k$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/explorestack/iab/mraid/k$a;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/k$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/mraid/k$a;->b:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
