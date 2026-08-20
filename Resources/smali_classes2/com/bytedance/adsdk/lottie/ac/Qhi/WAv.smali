.class public Lcom/bytedance/adsdk/lottie/ac/Qhi/WAv;
.super Ljava/lang/Object;
.source "AnimatableSplitDimensionPathValue.java"

# interfaces
.implements Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final Qhi:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

.field private final cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi/WAv;->Qhi:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    .line 19
    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi/WAv;->cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/pA;

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi/WAv;->Qhi:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    .line 34
    invoke-virtual {v1}, Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;->Qhi()Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi/WAv;->cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;->Qhi()Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/pA;-><init>(Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;)V

    return-object v0
.end method

.method public ac()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cJ()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi/WAv;->Qhi:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi/WAv;->cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
