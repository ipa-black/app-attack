.class Lcom/criteo/publisher/advancednative/q$a;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/advancednative/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/criteo/publisher/advancednative/o;

.field private volatile c:Lcom/criteo/publisher/advancednative/p;


# direct methods
.method constructor <init>(Ljava/lang/ref/Reference;Lcom/criteo/publisher/advancednative/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "Landroid/view/View;",
            ">;",
            "Lcom/criteo/publisher/advancednative/o;",
            ")V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/criteo/publisher/advancednative/q$a;->c:Lcom/criteo/publisher/advancednative/p;

    .line 93
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/q$a;->a:Ljava/lang/ref/Reference;

    .line 94
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/q$a;->b:Lcom/criteo/publisher/advancednative/o;

    .line 96
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/q$a;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/q$a;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method private b()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/q$a;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/criteo/publisher/advancednative/q$a;->b:Lcom/criteo/publisher/advancednative/o;

    invoke-virtual {v1, v0}, Lcom/criteo/publisher/advancednative/o;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/q$a;->c:Lcom/criteo/publisher/advancednative/p;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0}, Lcom/criteo/publisher/advancednative/p;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Lcom/criteo/publisher/advancednative/p;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/q$a;->c:Lcom/criteo/publisher/advancednative/p;

    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/q$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/q$a;->c()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
