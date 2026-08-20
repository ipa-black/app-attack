.class public Lcom/bytedance/adsdk/lottie/Qhi/cJ/iMK;
.super Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
.source "ShapeKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi<",
        "Lcom/bytedance/adsdk/lottie/ac/cJ/pA;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final CJ:Lcom/bytedance/adsdk/lottie/ac/cJ/pA;

.field private Tgh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/Qhi/Qhi/MQ;",
            ">;"
        }
    .end annotation
.end field

.field private final fl:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "Lcom/bytedance/adsdk/lottie/ac/cJ/pA;",
            ">;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;-><init>(Ljava/util/List;)V

    .line 15
    new-instance p1, Lcom/bytedance/adsdk/lottie/ac/cJ/pA;

    invoke-direct {p1}, Lcom/bytedance/adsdk/lottie/ac/cJ/pA;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/iMK;->CJ:Lcom/bytedance/adsdk/lottie/ac/cJ/pA;

    .line 16
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/iMK;->fl:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public synthetic Qhi(Lcom/bytedance/adsdk/lottie/ROR/Qhi;F)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/iMK;->cJ(Lcom/bytedance/adsdk/lottie/ROR/Qhi;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/Qhi/Qhi/MQ;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/iMK;->Tgh:Ljava/util/List;

    return-void
.end method

.method public cJ(Lcom/bytedance/adsdk/lottie/ROR/Qhi;F)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "Lcom/bytedance/adsdk/lottie/ac/cJ/pA;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 25
    iget-object v0, p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->Qhi:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/adsdk/lottie/ac/cJ/pA;

    .line 26
    iget-object p1, p1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->cJ:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/adsdk/lottie/ac/cJ/pA;

    .line 28
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/iMK;->CJ:Lcom/bytedance/adsdk/lottie/ac/cJ/pA;

    invoke-virtual {v1, v0, p1, p2}, Lcom/bytedance/adsdk/lottie/ac/cJ/pA;->Qhi(Lcom/bytedance/adsdk/lottie/ac/cJ/pA;Lcom/bytedance/adsdk/lottie/ac/cJ/pA;F)V

    .line 29
    iget-object p1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/iMK;->CJ:Lcom/bytedance/adsdk/lottie/ac/cJ/pA;

    .line 30
    iget-object p2, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/iMK;->Tgh:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 31
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    .line 32
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/iMK;->Tgh:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/MQ;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/MQ;->Qhi(Lcom/bytedance/adsdk/lottie/ac/cJ/pA;)Lcom/bytedance/adsdk/lottie/ac/cJ/pA;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 35
    :cond_0
    iget-object p2, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/iMK;->fl:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/lottie/Tgh/Tgh;->Qhi(Lcom/bytedance/adsdk/lottie/ac/cJ/pA;Landroid/graphics/Path;)V

    .line 36
    iget-object p1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/iMK;->fl:Landroid/graphics/Path;

    return-object p1
.end method
