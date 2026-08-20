.class public Lcom/explorestack/iab/utils/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/utils/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/utils/l;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/utils/l;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/l$b;->a:Lcom/explorestack/iab/utils/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/explorestack/iab/utils/l$b;->a:Lcom/explorestack/iab/utils/l;

    invoke-static {v0}, Lcom/explorestack/iab/utils/l;->b(Lcom/explorestack/iab/utils/l;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/explorestack/iab/utils/l$b;->a:Lcom/explorestack/iab/utils/l;

    invoke-static {v2}, Lcom/explorestack/iab/utils/l;->c(Lcom/explorestack/iab/utils/l;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    const-wide/16 v3, 0x10

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/explorestack/iab/utils/l$b;->a:Lcom/explorestack/iab/utils/l;

    invoke-static {v2}, Lcom/explorestack/iab/utils/l;->d(Lcom/explorestack/iab/utils/l;)J

    move-result-wide v5

    add-long/2addr v0, v3

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/explorestack/iab/utils/l$b;->a:Lcom/explorestack/iab/utils/l;

    invoke-static {v2, v0, v1}, Lcom/explorestack/iab/utils/l;->a(Lcom/explorestack/iab/utils/l;J)V

    iget-object v2, p0, Lcom/explorestack/iab/utils/l$b;->a:Lcom/explorestack/iab/utils/l;

    invoke-static {v2}, Lcom/explorestack/iab/utils/l;->b(Lcom/explorestack/iab/utils/l;)J

    move-result-wide v5

    long-to-float v2, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v2, v5

    iget-object v5, p0, Lcom/explorestack/iab/utils/l$b;->a:Lcom/explorestack/iab/utils/l;

    invoke-static {v5}, Lcom/explorestack/iab/utils/l;->d(Lcom/explorestack/iab/utils/l;)J

    move-result-wide v5

    long-to-float v5, v5

    div-float v7, v2, v5

    iget-object v2, p0, Lcom/explorestack/iab/utils/l$b;->a:Lcom/explorestack/iab/utils/l;

    invoke-static {v2}, Lcom/explorestack/iab/utils/l;->e(Lcom/explorestack/iab/utils/l;)Lcom/explorestack/iab/utils/l$c;

    move-result-object v6

    iget-object v2, p0, Lcom/explorestack/iab/utils/l$b;->a:Lcom/explorestack/iab/utils/l;

    invoke-static {v2}, Lcom/explorestack/iab/utils/l;->b(Lcom/explorestack/iab/utils/l;)J

    move-result-wide v8

    iget-object v2, p0, Lcom/explorestack/iab/utils/l$b;->a:Lcom/explorestack/iab/utils/l;

    invoke-static {v2}, Lcom/explorestack/iab/utils/l;->d(Lcom/explorestack/iab/utils/l;)J

    move-result-wide v10

    invoke-interface/range {v6 .. v11}, Lcom/explorestack/iab/utils/l$c;->a(FJJ)V

    :cond_0
    iget-object v2, p0, Lcom/explorestack/iab/utils/l$b;->a:Lcom/explorestack/iab/utils/l;

    invoke-static {v2}, Lcom/explorestack/iab/utils/l;->d(Lcom/explorestack/iab/utils/l;)J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/utils/l$b;->a:Lcom/explorestack/iab/utils/l;

    invoke-static {v0}, Lcom/explorestack/iab/utils/l;->e(Lcom/explorestack/iab/utils/l;)Lcom/explorestack/iab/utils/l$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/iab/utils/l$c;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/utils/l$b;->a:Lcom/explorestack/iab/utils/l;

    invoke-static {v0}, Lcom/explorestack/iab/utils/l;->c(Lcom/explorestack/iab/utils/l;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
