.class public Lcom/bytedance/adsdk/lottie/ac/Qhi/Sf;
.super Lcom/bytedance/adsdk/lottie/ac/Qhi/pA;
.source "AnimatableScaleValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/lottie/ac/Qhi/pA<",
        "Lcom/bytedance/adsdk/lottie/ROR/ac;",
        "Lcom/bytedance/adsdk/lottie/ROR/ac;",
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
            "Lcom/bytedance/adsdk/lottie/ROR/ac;",
            ">;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/lottie/ac/Qhi/pA;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi<",
            "Lcom/bytedance/adsdk/lottie/ROR/ac;",
            "Lcom/bytedance/adsdk/lottie/ROR/ac;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/ABk;

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi/Sf;->Qhi:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/ABk;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic ac()Ljava/util/List;
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/pA;->ac()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cJ()Z
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/pA;->cJ()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/pA;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
