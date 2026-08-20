.class public Lcom/bytedance/adsdk/lottie/ac/ac/cJ;
.super Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;
.source "CompositionLayer.java"


# instance fields
.field private final Gm:Landroid/graphics/Paint;

.field private ROR:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Sf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private final WAv:Landroid/graphics/RectF;

.field private final hm:Landroid/graphics/RectF;

.field private zc:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ac/ac/fl;Ljava/util/List;Lcom/bytedance/adsdk/lottie/ROR;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/lottie/hm;",
            "Lcom/bytedance/adsdk/lottie/ac/ac/fl;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ac/ac/fl;",
            ">;",
            "Lcom/bytedance/adsdk/lottie/ROR;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;-><init>(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ac/ac/fl;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Sf:Ljava/util/List;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->hm:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->WAv:Landroid/graphics/RectF;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Gm:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->zc:Z

    .line 46
    invoke-virtual {p2}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->qMt()Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p2}, Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;->Qhi()Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->ROR:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    .line 49
    invoke-virtual {p0, p2}, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Qhi(Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;)V

    .line 51
    iget-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->ROR:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    invoke-virtual {p2, p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Qhi(Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Qhi;)V

    goto :goto_0

    .line 53
    :cond_0
    iput-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->ROR:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    .line 56
    :goto_0
    new-instance p2, Landroid/util/LongSparseArray;

    .line 57
    invoke-virtual {p4}, Lcom/bytedance/adsdk/lottie/ROR;->hm()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p2, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 60
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    move-object v3, v1

    :goto_1
    const/4 v4, 0x0

    if-ltz v2, :cond_4

    .line 61
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/lottie/ac/ac/fl;

    .line 62
    invoke-static {p0, v5, p1, p4}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->Qhi(Lcom/bytedance/adsdk/lottie/ac/ac/cJ;Lcom/bytedance/adsdk/lottie/ac/ac/fl;Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ROR;)Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 66
    invoke-virtual {v6}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->cJ()Lcom/bytedance/adsdk/lottie/ac/ac/fl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->fl()J

    move-result-wide v7

    invoke-virtual {p2, v7, v8, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz v3, :cond_1

    .line 68
    invoke-virtual {v3, v6}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->Qhi(Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;)V

    move-object v3, v1

    goto :goto_2

    .line 71
    :cond_1
    iget-object v7, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Sf:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz v5, :cond_3

    .line 75
    invoke-virtual {v5}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->zc()Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 79
    sget-object v5, Lcom/bytedance/adsdk/lottie/ac/ac/cJ$1;->Qhi:[I

    invoke-virtual {v4}, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v0, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v6

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 88
    :cond_4
    :goto_3
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result p1

    if-ge v4, p1, :cond_6

    .line 89
    invoke-virtual {p2, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide p3

    .line 90
    invoke-virtual {p2, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;

    if-eqz p1, :cond_5

    .line 97
    invoke-virtual {p1}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->cJ()Lcom/bytedance/adsdk/lottie/ac/ac/fl;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->ABk()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;

    if-eqz p3, :cond_5

    .line 99
    invoke-virtual {p1, p3}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->cJ(Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method


# virtual methods
.method public Qhi(F)V
    .locals 3

    .line 160
    invoke-super {p0, p1}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->Qhi(F)V

    .line 161
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->ROR:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    if-eqz v0, :cond_0

    .line 165
    iget-object p1, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->cJ:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/lottie/hm;->EBS()Lcom/bytedance/adsdk/lottie/ROR;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/lottie/ROR;->ABk()F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    add-float/2addr p1, v0

    .line 166
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->ac:Lcom/bytedance/adsdk/lottie/ac/ac/fl;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->Qhi()Lcom/bytedance/adsdk/lottie/ROR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ROR;->Tgh()F

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->ROR:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->ROR()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->ac:Lcom/bytedance/adsdk/lottie/ac/ac/fl;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->Qhi()Lcom/bytedance/adsdk/lottie/ROR;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/adsdk/lottie/ROR;->Sf()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    div-float p1, v1, p1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->ROR:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->ac:Lcom/bytedance/adsdk/lottie/ac/ac/fl;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->ac()F

    move-result v0

    sub-float/2addr p1, v0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->ac:Lcom/bytedance/adsdk/lottie/ac/ac/fl;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->cJ()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->ac:Lcom/bytedance/adsdk/lottie/ac/ac/fl;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->Tgh()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->ac:Lcom/bytedance/adsdk/lottie/ac/ac/fl;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->cJ()F

    move-result v0

    div-float/2addr p1, v0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Sf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 178
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Sf:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;

    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->Qhi(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public Qhi(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->Qhi(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 151
    iget-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Sf:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_0

    .line 152
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->hm:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 153
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Sf:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->hm:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Qhi:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, p3}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->Qhi(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 154
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->hm:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Qhi(Z)V
    .locals 2

    .line 110
    invoke-super {p0, p1}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->Qhi(Z)V

    .line 111
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Sf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;

    .line 112
    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->Qhi(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method cJ(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    .line 118
    const-string v0, "CompositionLayer#draw"

    invoke-static {v0}, Lcom/bytedance/adsdk/lottie/Tgh;->Qhi(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->WAv:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->ac:Lcom/bytedance/adsdk/lottie/ac/ac/fl;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->Sf()F

    move-result v2

    iget-object v3, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->ac:Lcom/bytedance/adsdk/lottie/ac/ac/fl;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->hm()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->WAv:Landroid/graphics/RectF;

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 123
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->cJ:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/lottie/hm;->ROR()Z

    move-result v1

    const/16 v2, 0xff

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Sf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    if-eq p3, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 125
    iget-object v4, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Gm:Landroid/graphics/Paint;

    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 126
    iget-object v4, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->WAv:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Gm:Landroid/graphics/Paint;

    invoke-static {p1, v4, v5}, Lcom/bytedance/adsdk/lottie/Tgh/ROR;->Qhi(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_1
    if-eqz v1, :cond_2

    move p3, v2

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Sf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_2
    if-ltz v1, :cond_6

    .line 135
    iget-boolean v2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->zc:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->ac:Lcom/bytedance/adsdk/lottie/ac/ac/fl;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->Tgh()Ljava/lang/String;

    move-result-object v2

    const-string v4, "__container"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->WAv:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 137
    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->WAv:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v2

    goto :goto_4

    :cond_4
    :goto_3
    move v2, v3

    :goto_4
    if-eqz v2, :cond_5

    .line 140
    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Sf:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;

    .line 141
    invoke-virtual {v2, p1, p2, p3}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->Qhi(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 144
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 145
    invoke-static {v0}, Lcom/bytedance/adsdk/lottie/Tgh;->cJ(Ljava/lang/String;)F

    return-void
.end method

.method public cJ(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->zc:Z

    return-void
.end method
