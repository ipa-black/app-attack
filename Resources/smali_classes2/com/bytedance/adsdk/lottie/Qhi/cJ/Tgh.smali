.class public Lcom/bytedance/adsdk/lottie/Qhi/cJ/Tgh;
.super Lcom/bytedance/adsdk/lottie/Qhi/cJ/Sf;
.source "GradientColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Sf<",
        "Lcom/bytedance/adsdk/lottie/ac/cJ/fl;",
        ">;"
    }
.end annotation


# instance fields
.field private final CJ:Lcom/bytedance/adsdk/lottie/ac/cJ/fl;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "Lcom/bytedance/adsdk/lottie/ac/cJ/fl;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Sf;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;

    iget-object p1, p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->Qhi:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/adsdk/lottie/ac/cJ/fl;

    if-nez p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/lottie/ac/cJ/fl;->ac()I

    move-result v0

    .line 15
    :goto_0
    new-instance p1, Lcom/bytedance/adsdk/lottie/ac/cJ/fl;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lcom/bytedance/adsdk/lottie/ac/cJ/fl;-><init>([F[I)V

    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Tgh;->CJ:Lcom/bytedance/adsdk/lottie/ac/cJ/fl;

    return-void
.end method


# virtual methods
.method synthetic Qhi(Lcom/bytedance/adsdk/lottie/ROR/Qhi;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Tgh;->cJ(Lcom/bytedance/adsdk/lottie/ROR/Qhi;F)Lcom/bytedance/adsdk/lottie/ac/cJ/fl;

    move-result-object p1

    return-object p1
.end method

.method cJ(Lcom/bytedance/adsdk/lottie/ROR/Qhi;F)Lcom/bytedance/adsdk/lottie/ac/cJ/fl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "Lcom/bytedance/adsdk/lottie/ac/cJ/fl;",
            ">;F)",
            "Lcom/bytedance/adsdk/lottie/ac/cJ/fl;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Tgh;->CJ:Lcom/bytedance/adsdk/lottie/ac/cJ/fl;

    iget-object v1, p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->Qhi:Ljava/lang/Object;

    check-cast v1, Lcom/bytedance/adsdk/lottie/ac/cJ/fl;

    iget-object p1, p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->cJ:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/adsdk/lottie/ac/cJ/fl;

    invoke-virtual {v0, v1, p1, p2}, Lcom/bytedance/adsdk/lottie/ac/cJ/fl;->Qhi(Lcom/bytedance/adsdk/lottie/ac/cJ/fl;Lcom/bytedance/adsdk/lottie/ac/cJ/fl;F)V

    .line 20
    iget-object p1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Tgh;->CJ:Lcom/bytedance/adsdk/lottie/ac/cJ/fl;

    return-object p1
.end method
