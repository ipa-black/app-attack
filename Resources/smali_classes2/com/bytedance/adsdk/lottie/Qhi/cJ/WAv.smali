.class public Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;
.super Lcom/bytedance/adsdk/lottie/ROR/Qhi;
.source "PathKeyframe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final Gm:Lcom/bytedance/adsdk/lottie/ROR/Qhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private WAv:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/ROR/Qhi;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/lottie/ROR;",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 18
    iget-object v2, p2, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->Qhi:Ljava/lang/Object;

    iget-object v3, p2, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->cJ:Ljava/lang/Object;

    iget-object v4, p2, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->ac:Landroid/view/animation/Interpolator;

    iget-object v5, p2, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->CJ:Landroid/view/animation/Interpolator;

    iget-object v6, p2, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->fl:Landroid/view/animation/Interpolator;

    iget v7, p2, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->Tgh:F

    iget-object v8, p2, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->ROR:Ljava/lang/Float;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/adsdk/lottie/ROR/Qhi;-><init>(Lcom/bytedance/adsdk/lottie/ROR;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 20
    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;->Gm:Lcom/bytedance/adsdk/lottie/ROR/Qhi;

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;->Qhi()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;->cJ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;->Qhi:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;->Qhi:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;->cJ:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;->cJ:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;->Qhi:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;->cJ:Ljava/lang/Object;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;->Qhi:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;->cJ:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;->Gm:Lcom/bytedance/adsdk/lottie/ROR/Qhi;

    iget-object v2, v2, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->Sf:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;->Gm:Lcom/bytedance/adsdk/lottie/ROR/Qhi;

    iget-object v3, v3, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->hm:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/adsdk/lottie/Tgh/ROR;->Qhi(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;->WAv:Landroid/graphics/Path;

    :cond_1
    return-void
.end method

.method cJ()Landroid/graphics/Path;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;->WAv:Landroid/graphics/Path;

    return-object v0
.end method
