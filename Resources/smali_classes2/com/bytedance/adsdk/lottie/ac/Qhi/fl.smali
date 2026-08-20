.class public Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;
.super Lcom/bytedance/adsdk/lottie/ac/Qhi/pA;
.source "AnimatableIntegerValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/lottie/ac/Qhi/pA<",
        "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/ROR;

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;->Qhi:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/ROR;-><init>(Ljava/util/List;)V

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
