.class final Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Tgh;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"

# interfaces
.implements Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Tgh"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final Qhi:Lcom/bytedance/adsdk/lottie/ROR/Qhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "TT;>;"
        }
    .end annotation
.end field

.field private cJ:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 241
    iput v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Tgh;->cJ:F

    const/4 v0, 0x0

    .line 244
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;

    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Tgh;->Qhi:Lcom/bytedance/adsdk/lottie/ROR/Qhi;

    return-void
.end method


# virtual methods
.method public CJ()F
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Tgh;->Qhi:Lcom/bytedance/adsdk/lottie/ROR/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->CJ()F

    move-result v0

    return v0
.end method

.method public Qhi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Qhi(F)Z
    .locals 0

    .line 254
    iget-object p1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Tgh;->Qhi:Lcom/bytedance/adsdk/lottie/ROR/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->fl()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ac()F
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Tgh;->Qhi:Lcom/bytedance/adsdk/lottie/ROR/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->ac()F

    move-result v0

    return v0
.end method

.method public cJ()Lcom/bytedance/adsdk/lottie/ROR/Qhi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "TT;>;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Tgh;->Qhi:Lcom/bytedance/adsdk/lottie/ROR/Qhi;

    return-object v0
.end method

.method public cJ(F)Z
    .locals 1

    .line 274
    iget v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Tgh;->cJ:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 277
    :cond_0
    iput p1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Tgh;->cJ:F

    const/4 p1, 0x0

    return p1
.end method
