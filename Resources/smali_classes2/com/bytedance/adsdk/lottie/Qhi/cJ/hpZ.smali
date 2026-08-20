.class public Lcom/bytedance/adsdk/lottie/Qhi/cJ/hpZ;
.super Lcom/bytedance/adsdk/lottie/Qhi/cJ/Sf;
.source "TextKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Sf<",
        "Lcom/bytedance/adsdk/lottie/ac/cJ;",
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
            "Lcom/bytedance/adsdk/lottie/ac/cJ;",
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

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/hpZ;->cJ(Lcom/bytedance/adsdk/lottie/ROR/Qhi;F)Lcom/bytedance/adsdk/lottie/ac/cJ;

    move-result-object p1

    return-object p1
.end method

.method cJ(Lcom/bytedance/adsdk/lottie/ROR/Qhi;F)Lcom/bytedance/adsdk/lottie/ac/cJ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "Lcom/bytedance/adsdk/lottie/ac/cJ;",
            ">;F)",
            "Lcom/bytedance/adsdk/lottie/ac/cJ;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/hpZ;->ac:Lcom/bytedance/adsdk/lottie/ROR/cJ;

    if-eqz v0, :cond_1

    .line 17
    iget-object p2, p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->ROR:Ljava/lang/Float;

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->ROR:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/hpZ;->fl()F

    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/hpZ;->Sf()F

    const/4 p1, 0x0

    .line 17
    throw p1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_3

    .line 20
    iget-object p2, p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->cJ:Ljava/lang/Object;

    if-nez p2, :cond_2

    goto :goto_0

    .line 23
    :cond_2
    iget-object p1, p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->cJ:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/adsdk/lottie/ac/cJ;

    return-object p1

    .line 21
    :cond_3
    :goto_0
    iget-object p1, p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->Qhi:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/adsdk/lottie/ac/cJ;

    return-object p1
.end method
