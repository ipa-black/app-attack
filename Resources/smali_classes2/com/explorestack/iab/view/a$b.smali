.class public Lcom/explorestack/iab/view/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/view/a;


# direct methods
.method private constructor <init>(Lcom/explorestack/iab/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/view/a$b;->a:Lcom/explorestack/iab/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/iab/view/a;Lcom/explorestack/iab/view/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/explorestack/iab/view/a$b;-><init>(Lcom/explorestack/iab/view/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/explorestack/iab/view/a$b;->a:Lcom/explorestack/iab/view/a;

    invoke-static {v0}, Lcom/explorestack/iab/view/a;->c(Lcom/explorestack/iab/view/a;)Lcom/explorestack/iab/utils/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/view/a$b;->a:Lcom/explorestack/iab/view/a;

    invoke-static {v0}, Lcom/explorestack/iab/view/a;->d(Lcom/explorestack/iab/view/a;)Lcom/explorestack/iab/view/a$c;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/iab/view/a$c;->c(Lcom/explorestack/iab/view/a$c;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/explorestack/iab/view/a$b;->a:Lcom/explorestack/iab/view/a;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v2

    const-wide/16 v3, 0x32

    if-eqz v2, :cond_1

    add-long/2addr v0, v3

    iget-object v2, p0, Lcom/explorestack/iab/view/a$b;->a:Lcom/explorestack/iab/view/a;

    invoke-static {v2}, Lcom/explorestack/iab/view/a;->d(Lcom/explorestack/iab/view/a;)Lcom/explorestack/iab/view/a$c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/explorestack/iab/view/a$c;->a(J)V

    iget-object v2, p0, Lcom/explorestack/iab/view/a$b;->a:Lcom/explorestack/iab/view/a;

    invoke-static {v2}, Lcom/explorestack/iab/view/a;->c(Lcom/explorestack/iab/view/a;)Lcom/explorestack/iab/utils/e;

    move-result-object v2

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v0

    iget-object v7, p0, Lcom/explorestack/iab/view/a$b;->a:Lcom/explorestack/iab/view/a;

    invoke-static {v7}, Lcom/explorestack/iab/view/a;->d(Lcom/explorestack/iab/view/a;)Lcom/explorestack/iab/view/a$c;

    move-result-object v7

    invoke-static {v7}, Lcom/explorestack/iab/view/a$c;->d(Lcom/explorestack/iab/view/a$c;)J

    move-result-wide v7

    div-long/2addr v5, v7

    long-to-int v5, v5

    iget-object v6, p0, Lcom/explorestack/iab/view/a$b;->a:Lcom/explorestack/iab/view/a;

    invoke-static {v6}, Lcom/explorestack/iab/view/a;->d(Lcom/explorestack/iab/view/a;)Lcom/explorestack/iab/view/a$c;

    move-result-object v6

    invoke-static {v6}, Lcom/explorestack/iab/view/a$c;->d(Lcom/explorestack/iab/view/a$c;)J

    move-result-wide v6

    sub-long/2addr v6, v0

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Lcom/explorestack/iab/utils/e;->a(II)V

    :cond_1
    iget-object v2, p0, Lcom/explorestack/iab/view/a$b;->a:Lcom/explorestack/iab/view/a;

    invoke-static {v2}, Lcom/explorestack/iab/view/a;->d(Lcom/explorestack/iab/view/a;)Lcom/explorestack/iab/view/a$c;

    move-result-object v2

    invoke-static {v2}, Lcom/explorestack/iab/view/a$c;->d(Lcom/explorestack/iab/view/a$c;)J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/view/a$b;->a:Lcom/explorestack/iab/view/a;

    invoke-static {v0}, Lcom/explorestack/iab/view/a;->a(Lcom/explorestack/iab/view/a;)V

    iget-object v0, p0, Lcom/explorestack/iab/view/a$b;->a:Lcom/explorestack/iab/view/a;

    invoke-static {v0}, Lcom/explorestack/iab/view/a;->d(Lcom/explorestack/iab/view/a;)Lcom/explorestack/iab/view/a$c;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/iab/view/a$c;->b(Lcom/explorestack/iab/view/a$c;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/explorestack/iab/view/a$b;->a:Lcom/explorestack/iab/view/a;

    invoke-static {v0}, Lcom/explorestack/iab/view/a;->b(Lcom/explorestack/iab/view/a;)Lcom/explorestack/iab/view/a$d;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/explorestack/iab/view/a$b;->a:Lcom/explorestack/iab/view/a;

    invoke-static {v0}, Lcom/explorestack/iab/view/a;->b(Lcom/explorestack/iab/view/a;)Lcom/explorestack/iab/view/a$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/iab/view/a$d;->onCountDownFinish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/explorestack/iab/view/a$b;->a:Lcom/explorestack/iab/view/a;

    invoke-virtual {v0, p0, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method
