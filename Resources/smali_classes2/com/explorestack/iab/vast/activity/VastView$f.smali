.class public Lcom/explorestack/iab/vast/activity/VastView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/vast/activity/VastView$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIF)V
    .locals 7

    const-string v0, "Playing progressing percent: "

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastView;->i(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastView;->i(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v2}, Lcom/explorestack/iab/vast/activity/VastView;->i(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Playing progressing error: seek"

    invoke-static {v1, v2}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastView;->i(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastView;->i(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastView;->i(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v2}, Lcom/explorestack/iab/vast/activity/VastView;->i(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v3}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Playing progressing position: last=%d, first=%d)"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-le v2, v1, :cond_1

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastView;->i(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastView;->l(Lcom/explorestack/iab/vast/activity/VastView;)I

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Playing progressing error: video hang detected"

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->m(Lcom/explorestack/iab/vast/activity/VastView;)V

    return-void

    :cond_2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastView;->i(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    if-lez p2, :cond_3

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v2, v1, Lcom/explorestack/iab/vast/activity/VastView;->l:Lcom/explorestack/iab/utils/j;

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->n(Lcom/explorestack/iab/vast/activity/VastView;)F

    move-result v0

    cmpg-float v0, v0, p3

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0, p3}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;F)F

    div-int/lit16 p1, p1, 0x3e8

    int-to-float p2, p2

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$f;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->l:Lcom/explorestack/iab/utils/j;

    invoke-virtual {v0, p3, p2, p1}, Lcom/explorestack/iab/utils/j;->a(FII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method
