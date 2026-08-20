.class public Lcom/bytedance/adsdk/lottie/ac/cJ/hpZ;
.super Ljava/lang/Object;
.source "ShapeFill.java"

# interfaces
.implements Lcom/bytedance/adsdk/lottie/ac/cJ/ac;


# instance fields
.field private final CJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/Qhi;

.field private final Qhi:Z

.field private final Tgh:Z

.field private final ac:Ljava/lang/String;

.field private final cJ:Landroid/graphics/Path$FillType;

.field private final fl:Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/bytedance/adsdk/lottie/ac/Qhi/Qhi;Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/hpZ;->ac:Ljava/lang/String;

    .line 26
    iput-boolean p2, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/hpZ;->Qhi:Z

    .line 27
    iput-object p3, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/hpZ;->cJ:Landroid/graphics/Path$FillType;

    .line 28
    iput-object p4, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/hpZ;->CJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/Qhi;

    .line 29
    iput-object p5, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/hpZ;->fl:Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;

    .line 30
    iput-boolean p6, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/hpZ;->Tgh:Z

    return-void
.end method


# virtual methods
.method public CJ()Landroid/graphics/Path$FillType;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/hpZ;->cJ:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;)Lcom/bytedance/adsdk/lottie/Qhi/Qhi/ac;
    .locals 0

    .line 54
    new-instance p2, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/Sf;

    invoke-direct {p2, p1, p3, p0}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/Sf;-><init>(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;Lcom/bytedance/adsdk/lottie/ac/cJ/hpZ;)V

    return-object p2
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/hpZ;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public ac()Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/hpZ;->fl:Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;

    return-object v0
.end method

.method public cJ()Lcom/bytedance/adsdk/lottie/ac/Qhi/Qhi;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/hpZ;->CJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/Qhi;

    return-object v0
.end method

.method public fl()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/hpZ;->Tgh:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/hpZ;->Qhi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
