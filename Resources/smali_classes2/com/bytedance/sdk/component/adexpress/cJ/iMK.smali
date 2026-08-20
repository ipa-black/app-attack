.class public Lcom/bytedance/sdk/component/adexpress/cJ/iMK;
.super Ljava/lang/Object;
.source "RenderRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;
    }
.end annotation


# instance fields
.field private ABk:Ljava/lang/String;

.field private CJ:Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

.field private CQU:I

.field private Dww:D

.field private EBS:I

.field private Eh:Lorg/json/JSONObject;

.field private Gm:J

.field private HzH:Ljava/lang/String;

.field private MQ:I

.field private NFd:Lorg/json/JSONObject;

.field private Qhi:Lorg/json/JSONObject;

.field private ROR:Ljava/lang/String;

.field private Sf:Ljava/lang/String;

.field private Tgh:Ljava/lang/String;

.field private WAv:I

.field private aP:Lorg/json/JSONObject;

.field private ac:Ljava/lang/String;

.field private bxS:Ljava/lang/String;

.field private cJ:Lcom/bytedance/sdk/component/adexpress/cJ/Tgh;

.field private fl:I

.field private hm:Z

.field private hpZ:Z

.field private iMK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private kYc:I

.field private lB:Ljava/lang/String;

.field private final lG:Z

.field private pA:I

.field private pM:Z

.field private qMt:I

.field private sDy:Z

.field private tP:I

.field private zc:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->Qhi:Lorg/json/JSONObject;

    .line 53
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->cJ(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Lcom/bytedance/sdk/component/adexpress/cJ/Tgh;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/Tgh;

    .line 54
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->ac(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->ac:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->CJ(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->CJ:Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    .line 56
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->fl(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->fl:I

    .line 57
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->Tgh(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->Tgh:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->ROR(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->ROR:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->Sf(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->Sf:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->hm(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->hm:Z

    .line 61
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->WAv(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->WAv:I

    .line 62
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->Gm(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->Gm:J

    .line 63
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->zc(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->zc:I

    .line 64
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->ABk(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->ABk:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->iMK(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->iMK:Ljava/util/Map;

    .line 66
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->pA(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->pA:I

    .line 67
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->hpZ(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->hpZ:Z

    .line 68
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->HzH(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->HzH:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->kYc(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->kYc:I

    .line 70
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->tP(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->tP:I

    .line 71
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->MQ(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->MQ:I

    .line 72
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->qMt(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->qMt:I

    .line 73
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->EBS(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->EBS:I

    .line 74
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->bxS(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->bxS:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->Dww(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->Dww:D

    .line 76
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->CQU(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->CQU:I

    .line 77
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->pM(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->pM:Z

    .line 78
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->Eh(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->Eh:Lorg/json/JSONObject;

    .line 79
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->aP(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->aP:Lorg/json/JSONObject;

    .line 80
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->NFd(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->NFd:Lorg/json/JSONObject;

    .line 81
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->sDy(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->sDy:Z

    .line 82
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->lB(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->lB:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->lG(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->lG:Z

    return-void
.end method


# virtual methods
.method public ABk()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->hpZ:Z

    return v0
.end method

.method public CJ()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public CQU()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->lG:Z

    return v0
.end method

.method public Dww()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->lB:Ljava/lang/String;

    return-object v0
.end method

.method public EBS()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->EBS:I

    return v0
.end method

.method public Gm()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->iMK:Ljava/util/Map;

    return-object v0
.end method

.method public HzH()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->MQ:I

    return v0
.end method

.method public MQ()Lorg/json/JSONObject;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->NFd:Lorg/json/JSONObject;

    return-object v0
.end method

.method public Qhi()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->pM:Z

    return v0
.end method

.method public ROR()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->CQU:I

    return v0
.end method

.method public Sf()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->hm:Z

    return v0
.end method

.method public Tgh()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->fl:I

    return v0
.end method

.method public WAv()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->zc:I

    return v0
.end method

.method public ac()Lorg/json/JSONObject;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->Qhi:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/Tgh;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/Tgh;->Qhi()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->Qhi:Lorg/json/JSONObject;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->Qhi:Lorg/json/JSONObject;

    return-object v0
.end method

.method public bxS()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->sDy:Z

    return v0
.end method

.method public cJ()D
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->Dww:D

    return-wide v0
.end method

.method public fl()Lcom/bytedance/sdk/component/adexpress/cJ/WAv;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->CJ:Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    return-object v0
.end method

.method public hm()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->Gm:J

    return-wide v0
.end method

.method public hpZ()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->tP:I

    return v0
.end method

.method public iMK()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->HzH:Ljava/lang/String;

    return-object v0
.end method

.method public kYc()Lorg/json/JSONObject;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->Eh:Lorg/json/JSONObject;

    return-object v0
.end method

.method public pA()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->kYc:I

    return v0
.end method

.method public qMt()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->qMt:I

    return v0
.end method

.method public tP()Lorg/json/JSONObject;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->aP:Lorg/json/JSONObject;

    return-object v0
.end method

.method public zc()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->pA:I

    return v0
.end method
