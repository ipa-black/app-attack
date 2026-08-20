.class public Lcom/bytedance/adsdk/lottie/ac/cJ/zc;
.super Ljava/lang/Object;
.source "RectangleShape.java"

# interfaces
.implements Lcom/bytedance/adsdk/lottie/ac/cJ/ac;


# instance fields
.field private final CJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

.field private final Qhi:Ljava/lang/String;

.field private final ac:Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final fl:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;",
            "Z)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/zc;->Qhi:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/zc;->cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;

    .line 24
    iput-object p3, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/zc;->ac:Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;

    .line 25
    iput-object p4, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/zc;->CJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    .line 26
    iput-boolean p5, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/zc;->fl:Z

    return-void
.end method


# virtual methods
.method public CJ()Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/zc;->cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;)Lcom/bytedance/adsdk/lottie/Qhi/Qhi/ac;
    .locals 0

    .line 50
    new-instance p2, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/hpZ;

    invoke-direct {p2, p1, p3, p0}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/hpZ;-><init>(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;Lcom/bytedance/adsdk/lottie/ac/cJ/zc;)V

    return-object p2
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/zc;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public ac()Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/zc;->ac:Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;

    return-object v0
.end method

.method public cJ()Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/zc;->CJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    return-object v0
.end method

.method public fl()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/zc;->fl:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RectangleShape{position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/zc;->cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/zc;->ac:Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
