.class public Lcom/bytedance/adsdk/lottie/ROR;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# instance fields
.field private ABk:F

.field private CJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/lottie/WAv;",
            ">;"
        }
    .end annotation
.end field

.field private Gm:F

.field private final Qhi:Lcom/bytedance/adsdk/lottie/kYc;

.field private ROR:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/adsdk/lottie/ac/fl;",
            ">;"
        }
    .end annotation
.end field

.field private Sf:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/bytedance/adsdk/lottie/ac/ac/fl;",
            ">;"
        }
    .end annotation
.end field

.field private Tgh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ac/ROR;",
            ">;"
        }
    .end annotation
.end field

.field private WAv:Landroid/graphics/Rect;

.field private ac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ac/ac/fl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cJ:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/lottie/ac/ac;",
            ">;"
        }
    .end annotation
.end field

.field private hm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ac/ac/fl;",
            ">;"
        }
    .end annotation
.end field

.field private iMK:Z

.field private pA:I

.field private zc:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/bytedance/adsdk/lottie/kYc;

    invoke-direct {v0}, Lcom/bytedance/adsdk/lottie/kYc;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->Qhi:Lcom/bytedance/adsdk/lottie/kYc;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->cJ:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->pA:I

    return-void
.end method


# virtual methods
.method public ABk()F
    .locals 2

    .line 222
    iget v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->zc:F

    iget v1, p0, Lcom/bytedance/adsdk/lottie/ROR;->Gm:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public CJ()Landroid/graphics/Rect;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->WAv:Landroid/graphics/Rect;

    return-object v0
.end method

.method public Gm()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/lottie/ac/ac;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->fl:Ljava/util/Map;

    return-object v0
.end method

.method public Qhi(F)F
    .locals 2

    .line 161
    iget v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->Gm:F

    iget v1, p0, Lcom/bytedance/adsdk/lottie/ROR;->zc:F

    invoke-static {v0, v1, p1}, Lcom/bytedance/adsdk/lottie/Tgh/Tgh;->Qhi(FFF)F

    move-result p1

    return p1
.end method

.method public Qhi(J)Lcom/bytedance/adsdk/lottie/ac/ac/fl;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->Sf:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/lottie/ac/ac/fl;

    return-object p1
.end method

.method public Qhi(I)V
    .locals 1

    .line 105
    iget v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->pA:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->pA:I

    return-void
.end method

.method public Qhi(Landroid/graphics/Rect;FFFLjava/util/List;Landroid/util/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ac/ac/fl;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Lcom/bytedance/adsdk/lottie/ac/ac/fl;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ac/ac/fl;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/lottie/WAv;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/adsdk/lottie/ac/fl;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/lottie/ac/ac;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ac/ROR;",
            ">;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/ROR;->WAv:Landroid/graphics/Rect;

    .line 80
    iput p2, p0, Lcom/bytedance/adsdk/lottie/ROR;->Gm:F

    .line 81
    iput p3, p0, Lcom/bytedance/adsdk/lottie/ROR;->zc:F

    .line 82
    iput p4, p0, Lcom/bytedance/adsdk/lottie/ROR;->ABk:F

    .line 83
    iput-object p5, p0, Lcom/bytedance/adsdk/lottie/ROR;->hm:Ljava/util/List;

    .line 84
    iput-object p6, p0, Lcom/bytedance/adsdk/lottie/ROR;->Sf:Landroid/util/LongSparseArray;

    .line 85
    iput-object p7, p0, Lcom/bytedance/adsdk/lottie/ROR;->ac:Ljava/util/Map;

    .line 86
    iput-object p8, p0, Lcom/bytedance/adsdk/lottie/ROR;->CJ:Ljava/util/Map;

    .line 87
    iput-object p9, p0, Lcom/bytedance/adsdk/lottie/ROR;->ROR:Landroid/util/SparseArray;

    .line 88
    iput-object p10, p0, Lcom/bytedance/adsdk/lottie/ROR;->fl:Ljava/util/Map;

    .line 89
    iput-object p11, p0, Lcom/bytedance/adsdk/lottie/ROR;->Tgh:Ljava/util/List;

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->cJ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/bytedance/adsdk/lottie/ROR;->iMK:Z

    return-void
.end method

.method public Qhi()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->iMK:Z

    return v0
.end method

.method public ROR()F
    .locals 1

    .line 157
    iget v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->zc:F

    return v0
.end method

.method public Sf()F
    .locals 1

    .line 171
    iget v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->ABk:F

    return v0
.end method

.method public Tgh()F
    .locals 1

    .line 153
    iget v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->Gm:F

    return v0
.end method

.method public WAv()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/adsdk/lottie/ac/fl;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->ROR:Landroid/util/SparseArray;

    return-object v0
.end method

.method public ac(Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ac/ROR;
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->Tgh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 200
    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/ROR;->Tgh:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/lottie/ac/ROR;

    .line 201
    invoke-virtual {v2, p1}, Lcom/bytedance/adsdk/lottie/ac/ROR;->Qhi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public ac()Lcom/bytedance/adsdk/lottie/kYc;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->Qhi:Lcom/bytedance/adsdk/lottie/kYc;

    return-object v0
.end method

.method public cJ()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->pA:I

    return v0
.end method

.method public cJ(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ac/ac/fl;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->ac:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public cJ(Z)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->Qhi:Lcom/bytedance/adsdk/lottie/kYc;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/kYc;->Qhi(Z)V

    return-void
.end method

.method public fl()F
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/ROR;->ABk()F

    move-result v0

    iget v1, p0, Lcom/bytedance/adsdk/lottie/ROR;->ABk:F

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    return v0
.end method

.method public hm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ac/ac/fl;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->hm:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ROR;->hm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/lottie/ac/ac/fl;

    .line 231
    const-string v3, "\t"

    invoke-virtual {v2, v3}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zc()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/lottie/WAv;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ROR;->CJ:Ljava/util/Map;

    return-object v0
.end method
