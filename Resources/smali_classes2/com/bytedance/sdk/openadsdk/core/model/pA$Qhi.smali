.class public Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
.super Ljava/lang/Object;
.source "DynamicClickInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/model/pA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qhi"
.end annotation


# instance fields
.field private ABk:I

.field private CJ:F

.field private Gm:I

.field private HzH:Z

.field protected Qhi:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private ROR:F

.field private Sf:I

.field private Tgh:F

.field private WAv:I

.field private ac:J

.field private cJ:J

.field private fl:F

.field private hm:I

.field private hpZ:Lorg/json/JSONObject;

.field private iMK:Lorg/json/JSONObject;

.field private kYc:Z

.field private pA:I

.field private zc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->HzH:Z

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic ABk(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->ABk:I

    return p0
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->CJ:F

    return p0
.end method

.method static synthetic Gm(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->zc:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic HzH(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->HzH:Z

    return p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->ROR:F

    return p0
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Sf:I

    return p0
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->hm:I

    return p0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->cJ:J

    return-wide v0
.end method

.method static synthetic WAv(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Gm:I

    return p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->fl:F

    return p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Tgh:F

    return p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->ac:J

    return-wide v0
.end method

.method static synthetic hm(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->WAv:I

    return p0
.end method

.method static synthetic hpZ(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)Lorg/json/JSONObject;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->hpZ:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic iMK(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)Lorg/json/JSONObject;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->iMK:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic pA(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->pA:I

    return p0
.end method

.method static synthetic zc(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->kYc:Z

    return p0
.end method


# virtual methods
.method public CJ(F)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 140
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->ROR:F

    return-object p0
.end method

.method public CJ(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 150
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->hm:I

    return-object p0
.end method

.method public Qhi(F)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 125
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->CJ:F

    return-object p0
.end method

.method public Qhi(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 81
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->pA:I

    return-object p0
.end method

.method public Qhi(J)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->cJ:J

    return-object p0
.end method

.method public Qhi(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi:Landroid/util/SparseArray;

    return-object p0
.end method

.method public Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->zc:Ljava/lang/String;

    return-object p0
.end method

.method public Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->iMK:Lorg/json/JSONObject;

    return-object p0
.end method

.method public Qhi(Z)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->kYc:Z

    return-object p0
.end method

.method public Qhi()Lcom/bytedance/sdk/openadsdk/core/model/pA;
    .locals 2

    .line 188
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/pA;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/pA;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/pA$1;)V

    return-object v0
.end method

.method public Tgh(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 160
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Gm:I

    return-object p0
.end method

.method public ac(F)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 135
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Tgh:F

    return-object p0
.end method

.method public ac(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 145
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Sf:I

    return-object p0
.end method

.method public cJ(F)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 130
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->fl:F

    return-object p0
.end method

.method public cJ(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 90
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->ABk:I

    return-object p0
.end method

.method public cJ(J)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 120
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->ac:J

    return-object p0
.end method

.method public cJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->hpZ:Lorg/json/JSONObject;

    return-object p0
.end method

.method public cJ(Z)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->HzH:Z

    return-object p0
.end method

.method public fl(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    .locals 0

    .line 155
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->WAv:I

    return-object p0
.end method
