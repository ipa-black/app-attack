.class public Lcom/bytedance/adsdk/lottie/ac/cJ/cJ;
.super Ljava/lang/Object;
.source "CircleShape.java"

# interfaces
.implements Lcom/bytedance/adsdk/lottie/ac/cJ/ac;


# instance fields
.field private final CJ:Z

.field private final Qhi:Ljava/lang/String;

.field private final ac:Lcom/bytedance/adsdk/lottie/ac/Qhi/ROR;

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
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;Lcom/bytedance/adsdk/lottie/ac/Qhi/ROR;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/ROR;",
            "ZZ)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/cJ;->Qhi:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/cJ;->cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;

    .line 24
    iput-object p3, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/cJ;->ac:Lcom/bytedance/adsdk/lottie/ac/Qhi/ROR;

    .line 25
    iput-boolean p4, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/cJ;->CJ:Z

    .line 26
    iput-boolean p5, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/cJ;->fl:Z

    return-void
.end method


# virtual methods
.method public CJ()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/cJ;->CJ:Z

    return v0
.end method

.method public Qhi(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;)Lcom/bytedance/adsdk/lottie/Qhi/Qhi/ac;
    .locals 0

    .line 30
    new-instance p2, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/ROR;

    invoke-direct {p2, p1, p3, p0}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/ROR;-><init>(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;Lcom/bytedance/adsdk/lottie/ac/cJ/cJ;)V

    return-object p2
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/cJ;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public ac()Lcom/bytedance/adsdk/lottie/ac/Qhi/ROR;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/cJ;->ac:Lcom/bytedance/adsdk/lottie/ac/Qhi/ROR;

    return-object v0
.end method

.method public cJ()Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;
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
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/cJ;->cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;

    return-object v0
.end method

.method public fl()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/cJ;->fl:Z

    return v0
.end method
