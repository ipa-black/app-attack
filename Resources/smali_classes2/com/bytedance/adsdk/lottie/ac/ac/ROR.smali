.class public Lcom/bytedance/adsdk/lottie/ac/ac/ROR;
.super Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;
.source "ShapeLayer.java"


# instance fields
.field private final ROR:Lcom/bytedance/adsdk/lottie/Qhi/Qhi/fl;

.field private final Sf:Lcom/bytedance/adsdk/lottie/ac/ac/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ac/ac/fl;Lcom/bytedance/adsdk/lottie/ac/ac/cJ;Lcom/bytedance/adsdk/lottie/ROR;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;-><init>(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ac/ac/fl;)V

    .line 28
    iput-object p3, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ROR;->Sf:Lcom/bytedance/adsdk/lottie/ac/ac/cJ;

    .line 31
    new-instance p3, Lcom/bytedance/adsdk/lottie/ac/cJ/HzH;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->iMK()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "__container"

    invoke-direct {p3, v1, p2, v0}, Lcom/bytedance/adsdk/lottie/ac/cJ/HzH;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 32
    new-instance p2, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/fl;

    invoke-direct {p2, p1, p0, p3, p4}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/fl;-><init>(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;Lcom/bytedance/adsdk/lottie/ac/cJ/HzH;Lcom/bytedance/adsdk/lottie/ROR;)V

    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ROR;->ROR:Lcom/bytedance/adsdk/lottie/Qhi/Qhi/fl;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/fl;->Qhi(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->Qhi(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 44
    iget-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ROR;->ROR:Lcom/bytedance/adsdk/lottie/Qhi/Qhi/fl;

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ROR;->Qhi:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0, p3}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/fl;->Qhi(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public ROR()Lcom/bytedance/adsdk/lottie/fl/Gm;
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->ROR()Lcom/bytedance/adsdk/lottie/fl/Gm;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ROR;->Sf:Lcom/bytedance/adsdk/lottie/ac/ac/cJ;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->ROR()Lcom/bytedance/adsdk/lottie/fl/Gm;

    move-result-object v0

    return-object v0
.end method

.method public Tgh()Lcom/bytedance/adsdk/lottie/ac/cJ/Qhi;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->Tgh()Lcom/bytedance/adsdk/lottie/ac/cJ/Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ROR;->Sf:Lcom/bytedance/adsdk/lottie/ac/ac/cJ;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Tgh()Lcom/bytedance/adsdk/lottie/ac/cJ/Qhi;

    move-result-object v0

    return-object v0
.end method

.method cJ(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ROR;->ROR:Lcom/bytedance/adsdk/lottie/Qhi/Qhi/fl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/fl;->Qhi(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
