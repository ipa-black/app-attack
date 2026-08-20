.class public Lcom/bytedance/adsdk/lottie/Qhi/Qhi/qMt;
.super Lcom/bytedance/adsdk/lottie/Qhi/Qhi/Qhi;
.source "StrokeContent.java"


# instance fields
.field private final CJ:Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;

.field private final ROR:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Sf:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final Tgh:Z

.field private final fl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;Lcom/bytedance/adsdk/lottie/ac/cJ/tP;)V
    .locals 11

    .line 29
    invoke-virtual {p3}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->ROR()Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;->Qhi()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 30
    invoke-virtual {p3}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->Sf()Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;->Qhi()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->hm()F

    move-result v6

    invoke-virtual {p3}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->ac()Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;

    move-result-object v7

    .line 31
    invoke-virtual {p3}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->CJ()Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    move-result-object v8

    invoke-virtual {p3}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->fl()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->Tgh()Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 29
    invoke-direct/range {v1 .. v10}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/Qhi;-><init>(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/bytedance/adsdk/lottie/ac/Qhi/fl;Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;Ljava/util/List;Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;)V

    .line 32
    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/qMt;->CJ:Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;

    .line 33
    invoke-virtual {p3}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->Qhi()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/qMt;->fl:Ljava/lang/String;

    .line 34
    invoke-virtual {p3}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->WAv()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/qMt;->Tgh:Z

    .line 35
    invoke-virtual {p3}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->cJ()Lcom/bytedance/adsdk/lottie/ac/Qhi/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/lottie/ac/Qhi/Qhi;->Qhi()Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/qMt;->ROR:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    .line 36
    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Qhi(Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Qhi;)V

    .line 37
    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->Qhi(Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;)V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 41
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/qMt;->Tgh:Z

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/qMt;->cJ:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/qMt;->ROR:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    check-cast v1, Lcom/bytedance/adsdk/lottie/Qhi/cJ/cJ;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/cJ;->hm()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/qMt;->Sf:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/qMt;->cJ:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/qMt;->Sf:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->ROR()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 48
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/Qhi;->Qhi(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
