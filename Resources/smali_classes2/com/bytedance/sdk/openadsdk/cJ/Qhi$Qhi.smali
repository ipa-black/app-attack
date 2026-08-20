.class public final Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;
.super Ljava/lang/Object;
.source "AdEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/cJ/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Qhi"
.end annotation


# instance fields
.field private ABk:Ljava/lang/String;

.field private CJ:Ljava/lang/String;

.field private Gm:Ljava/lang/String;

.field private HzH:I

.field private MQ:Ljava/lang/String;

.field public Qhi:I

.field private ROR:Ljava/lang/String;

.field private Sf:Ljava/lang/String;

.field private Tgh:Ljava/lang/String;

.field private WAv:Lorg/json/JSONObject;

.field private ac:Ljava/lang/String;

.field private cJ:Ljava/lang/String;

.field private fl:Ljava/lang/String;

.field private hm:Ljava/lang/String;

.field private final hpZ:J

.field private iMK:Lcom/bytedance/sdk/openadsdk/cJ/cJ/cJ;

.field private kYc:I

.field private pA:Lcom/bytedance/sdk/openadsdk/cJ/cJ/Qhi;

.field private tP:Z

.field private final zc:I


# direct methods
.method public constructor <init>(JLcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 1

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 446
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->HzH:I

    .line 447
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->kYc:I

    .line 448
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Qhi:I

    if-eqz p3, :cond_0

    .line 456
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->tP:Z

    .line 457
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HzH()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->HzH:I

    .line 458
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->kYc:I

    .line 459
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gga()I

    move-result p3

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Qhi:I

    .line 461
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->hpZ:J

    .line 462
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/hpZ;->ac(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->zc:I

    return-void
.end method

.method static synthetic ABk(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Lorg/json/JSONObject;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->WAv:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->ac:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Gm(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)I
    .locals 0

    .line 427
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->zc:I

    return p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->cJ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->WAv:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Gm:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Sf:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->fl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic WAv(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->ROR:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Tgh:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Lcom/bytedance/sdk/openadsdk/cJ/cJ/Qhi;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->pA:Lcom/bytedance/sdk/openadsdk/cJ/cJ/Qhi;

    return-object p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->CJ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hm(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->hm:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hpZ(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Z
    .locals 0

    .line 427
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->tP:Z

    return p0
.end method

.method static synthetic iMK(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)I
    .locals 0

    .line 427
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->HzH:I

    return p0
.end method

.method static synthetic pA(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)I
    .locals 0

    .line 427
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->kYc:I

    return p0
.end method

.method static synthetic zc(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->ABk:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->fl:Ljava/lang/String;

    return-object p0
.end method

.method public Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->ABk:Ljava/lang/String;

    return-object p0
.end method

.method public Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 515
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->WAv:Lorg/json/JSONObject;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/cJ/cJ/Qhi;)V
    .locals 5

    .line 539
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->CJ:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->MQ:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->ROR:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->WAv:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 541
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->pA:Lcom/bytedance/sdk/openadsdk/cJ/cJ/Qhi;

    .line 543
    new-instance p1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)V

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->iMK:Lcom/bytedance/sdk/openadsdk/cJ/cJ/cJ;

    if-eqz v0, :cond_0

    .line 547
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->hpZ:J

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/cJ/cJ;->Qhi(Lorg/json/JSONObject;J)V

    goto :goto_0

    .line 550
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/cJ/ac;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/cJ/ac;-><init>()V

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->hpZ:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/cJ/ac;->Qhi(Lorg/json/JSONObject;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 553
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 557
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi$1;

    const-string v1, "dispatchEvent"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/Qhi;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->ac(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void

    .line 565
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi;)V

    return-void
.end method

.method public ROR(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->ROR:Ljava/lang/String;

    return-object p0
.end method

.method public Sf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->MQ:Ljava/lang/String;

    return-object p0
.end method

.method public Tgh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->hm:Ljava/lang/String;

    return-object p0
.end method

.method public ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->CJ:Ljava/lang/String;

    return-object p0
.end method

.method public cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->ac:Ljava/lang/String;

    return-object p0
.end method

.method public fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Sf:Ljava/lang/String;

    return-object p0
.end method
