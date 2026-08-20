.class public Lcom/bytedance/adsdk/lottie/ac/Qhi;
.super Ljava/lang/Object;
.source "CubicCurveData.java"


# instance fields
.field private final Qhi:Landroid/graphics/PointF;

.field private final ac:Landroid/graphics/PointF;

.field private final cJ:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->Qhi:Landroid/graphics/PointF;

    .line 47
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->cJ:Landroid/graphics/PointF;

    .line 48
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->ac:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->Qhi:Landroid/graphics/PointF;

    .line 53
    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->cJ:Landroid/graphics/PointF;

    .line 54
    iput-object p3, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->ac:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public Qhi()Landroid/graphics/PointF;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->Qhi:Landroid/graphics/PointF;

    return-object v0
.end method

.method public Qhi(FF)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->Qhi:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public ac()Landroid/graphics/PointF;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->ac:Landroid/graphics/PointF;

    return-object v0
.end method

.method public ac(FF)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->ac:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public cJ()Landroid/graphics/PointF;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->cJ:Landroid/graphics/PointF;

    return-object v0
.end method

.method public cJ(FF)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->cJ:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 90
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->ac:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 91
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->ac:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->Qhi:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->Qhi:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->cJ:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Qhi;->cJ:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 90
    const-string v1, "v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
