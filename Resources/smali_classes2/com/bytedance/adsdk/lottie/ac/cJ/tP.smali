.class public Lcom/bytedance/adsdk/lottie/ac/cJ/tP;
.super Ljava/lang/Object;
.source "ShapeStroke.java"

# interfaces
.implements Lcom/bytedance/adsdk/lottie/ac/cJ/ac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;,
        Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;
    }
.end annotation


# instance fields
.field private final CJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/Qhi;

.field private final Qhi:Ljava/lang/String;

.field private final ROR:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

.field private final Sf:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

.field private final Tgh:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

.field private final WAv:Z

.field private final ac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;",
            ">;"
        }
    .end annotation
.end field

.field private final cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

.field private final fl:Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;

.field private final hm:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;Ljava/util/List;Lcom/bytedance/adsdk/lottie/ac/Qhi/Qhi;Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;",
            ">;",
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/Qhi;",
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;",
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;",
            "Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;",
            "Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;",
            "FZ)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->Qhi:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    .line 72
    iput-object p3, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->ac:Ljava/util/List;

    .line 73
    iput-object p4, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->CJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/Qhi;

    .line 74
    iput-object p5, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->fl:Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;

    .line 75
    iput-object p6, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->Tgh:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    .line 76
    iput-object p7, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->ROR:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

    .line 77
    iput-object p8, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->Sf:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

    .line 78
    iput p9, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->hm:F

    .line 79
    iput-boolean p10, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->WAv:Z

    return-void
.end method


# virtual methods
.method public CJ()Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->Tgh:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;)Lcom/bytedance/adsdk/lottie/Qhi/Qhi/ac;
    .locals 0

    .line 83
    new-instance p2, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/qMt;

    invoke-direct {p2, p1, p3, p0}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/qMt;-><init>(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;Lcom/bytedance/adsdk/lottie/ac/cJ/tP;)V

    return-object p2
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public ROR()Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->ROR:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

    return-object v0
.end method

.method public Sf()Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->Sf:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

    return-object v0
.end method

.method public Tgh()Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    return-object v0
.end method

.method public WAv()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->WAv:Z

    return v0
.end method

.method public ac()Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->fl:Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;

    return-object v0
.end method

.method public cJ()Lcom/bytedance/adsdk/lottie/ac/Qhi/Qhi;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->CJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/Qhi;

    return-object v0
.end method

.method public fl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->ac:Ljava/util/List;

    return-object v0
.end method

.method public hm()F
    .locals 1

    .line 119
    iget v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP;->hm:F

    return v0
.end method
