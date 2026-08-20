.class public Lcom/bytedance/adsdk/lottie/Qhi/cJ/cJ;
.super Lcom/bytedance/adsdk/lottie/Qhi/cJ/Sf;
.source "ColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Sf<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Sf;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic Qhi(Lcom/bytedance/adsdk/lottie/ROR/Qhi;F)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/cJ;->cJ(Lcom/bytedance/adsdk/lottie/ROR/Qhi;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public ac(Lcom/bytedance/adsdk/lottie/ROR/Qhi;F)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    .line 24
    iget-object v0, p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->Qhi:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->cJ:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/cJ;->ac:Lcom/bytedance/adsdk/lottie/ROR/cJ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 37
    invoke-static {p2, v0, v1}, Lcom/bytedance/adsdk/lottie/Tgh/Tgh;->cJ(FFF)F

    move-result p2

    iget-object v0, p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->Qhi:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->cJ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, v0, p1}, Lcom/bytedance/adsdk/lottie/Tgh/cJ;->Qhi(FII)I

    move-result p1

    return p1

    .line 30
    :cond_0
    iget-object p1, p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->ROR:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 31
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/cJ;->CJ()F

    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/cJ;->Sf()F

    const/4 p1, 0x0

    .line 30
    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method cJ(Lcom/bytedance/adsdk/lottie/ROR/Qhi;F)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "Ljava/lang/Integer;",
            ">;F)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/cJ;->ac(Lcom/bytedance/adsdk/lottie/ROR/Qhi;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public hm()I
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/cJ;->ac()Lcom/bytedance/adsdk/lottie/ROR/Qhi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/cJ;->fl()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/cJ;->ac(Lcom/bytedance/adsdk/lottie/ROR/Qhi;F)I

    move-result v0

    return v0
.end method
