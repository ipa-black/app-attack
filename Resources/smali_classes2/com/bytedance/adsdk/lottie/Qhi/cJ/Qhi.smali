.class public abstract Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$fl;,
        Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Tgh;,
        Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$cJ;,
        Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;,
        Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Qhi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private CJ:Z

.field final Qhi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private ROR:F

.field private Sf:F

.field private Tgh:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field protected ac:Lcom/bytedance/adsdk/lottie/ROR/cJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/ROR/cJ<",
            "TA;>;"
        }
    .end annotation
.end field

.field protected cJ:F

.field private final fl:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "TK;>;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Qhi:Ljava/util/List;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->CJ:Z

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->cJ:F

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Tgh:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    .line 35
    iput v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->ROR:F

    .line 36
    iput v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Sf:F

    .line 39
    invoke-static {p1}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Qhi(Ljava/util/List;)Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->fl:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;

    return-void
.end method

.method private static Qhi(Ljava/util/List;)Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "TT;>;>;)",
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac<",
            "TT;>;"
        }
    .end annotation

    .line 181
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$cJ;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$cJ;-><init>(Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$1;)V

    return-object p0

    .line 184
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 185
    new-instance v0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Tgh;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Tgh;-><init>(Ljava/util/List;)V

    return-object v0

    .line 187
    :cond_1
    new-instance v0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$fl;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$fl;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private hm()F
    .locals 2

    .line 117
    iget v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->ROR:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->fl:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;

    invoke-interface {v0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;->ac()F

    move-result v0

    iput v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->ROR:F

    .line 120
    :cond_0
    iget v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->ROR:F

    return v0
.end method


# virtual methods
.method CJ()F
    .locals 3

    .line 87
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->CJ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->ac()Lcom/bytedance/adsdk/lottie/ROR/Qhi;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->fl()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 95
    :cond_1
    iget v1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->cJ:F

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->ac()F

    move-result v2

    sub-float/2addr v1, v2

    .line 96
    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->CJ()F

    move-result v2

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->ac()F

    move-result v0

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method abstract Qhi(Lcom/bytedance/adsdk/lottie/ROR/Qhi;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method protected Qhi(Lcom/bytedance/adsdk/lottie/ROR/Qhi;FFF)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "TK;>;FFF)TA;"
        }
    .end annotation

    .line 177
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This animation does not support split dimensions!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Qhi()V
    .locals 1

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->CJ:Z

    return-void
.end method

.method public Qhi(F)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->fl:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;

    invoke-interface {v0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->hm()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->hm()F

    move-result p1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Tgh()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Tgh()F

    move-result p1

    .line 60
    :cond_2
    :goto_0
    iget v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->cJ:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    return-void

    .line 63
    :cond_3
    iput p1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->cJ:F

    .line 64
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->fl:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;->Qhi(F)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->cJ()V

    :cond_4
    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Qhi;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Qhi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ROR()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->CJ()F

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->ac:Lcom/bytedance/adsdk/lottie/ROR/cJ;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->fl:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;

    invoke-interface {v1, v0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;->cJ(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Tgh:Ljava/lang/Object;

    return-object v0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->ac()Lcom/bytedance/adsdk/lottie/ROR/Qhi;

    move-result-object v1

    .line 140
    iget-object v2, v1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->CJ:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->fl:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, v1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->CJ:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 142
    iget-object v3, v1, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->fl:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 143
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Qhi(Lcom/bytedance/adsdk/lottie/ROR/Qhi;FFF)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->fl()F

    move-result v0

    .line 146
    invoke-virtual {p0, v1, v0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Qhi(Lcom/bytedance/adsdk/lottie/ROR/Qhi;F)Ljava/lang/Object;

    move-result-object v0

    .line 149
    :goto_0
    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Tgh:Ljava/lang/Object;

    return-object v0
.end method

.method public Sf()F
    .locals 1

    .line 154
    iget v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->cJ:F

    return v0
.end method

.method Tgh()F
    .locals 2

    .line 125
    iget v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Sf:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->fl:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;

    invoke-interface {v0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;->CJ()F

    move-result v0

    iput v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Sf:F

    .line 128
    :cond_0
    iget v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Sf:F

    return v0
.end method

.method protected ac()Lcom/bytedance/adsdk/lottie/ROR/Qhi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "TK;>;"
        }
    .end annotation

    .line 76
    const-string v0, "BaseKeyframeAnimation#getCurrentKeyframe"

    invoke-static {v0}, Lcom/bytedance/adsdk/lottie/Tgh;->Qhi(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->fl:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;

    invoke-interface {v1}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$ac;->cJ()Lcom/bytedance/adsdk/lottie/ROR/Qhi;

    move-result-object v1

    .line 78
    invoke-static {v0}, Lcom/bytedance/adsdk/lottie/Tgh;->cJ(Ljava/lang/String;)F

    return-object v1
.end method

.method public cJ()V
    .locals 2

    const/4 v0, 0x0

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Qhi:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Qhi:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Qhi;

    invoke-interface {v1}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Qhi;->Qhi()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected fl()F
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->ac()Lcom/bytedance/adsdk/lottie/ROR/Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->fl()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, v0, Lcom/bytedance/adsdk/lottie/ROR/Qhi;->ac:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->CJ()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
