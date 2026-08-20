.class public Lcom/bytedance/adsdk/lottie/ac/Qhi/Gm;
.super Lcom/bytedance/adsdk/lottie/ac/Qhi/pA;
.source "AnimatableTextFrame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/lottie/ac/Qhi/pA<",
        "Lcom/bytedance/adsdk/lottie/ac/cJ;",
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
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/lottie/ac/Qhi/pA;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public CJ()Lcom/bytedance/adsdk/lottie/Qhi/cJ/hpZ;
    .locals 2

    .line 16
    new-instance v0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/hpZ;

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi/Gm;->Qhi:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/hpZ;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public synthetic Qhi()Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/Gm;->CJ()Lcom/bytedance/adsdk/lottie/Qhi/cJ/hpZ;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ac()Ljava/util/List;
    .locals 1

    .line 9
    invoke-super {p0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/pA;->ac()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cJ()Z
    .locals 1

    .line 9
    invoke-super {p0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/pA;->cJ()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 9
    invoke-super {p0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/pA;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
