.class public Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;
.super Ljava/lang/Object;
.source "BusMonitorModel.java"


# instance fields
.field private ABk:Ljava/lang/String;

.field private CJ:I

.field private Gm:Ljava/lang/String;

.field private Qhi:J

.field private ROR:Ljava/lang/String;

.field private Sf:Ljava/lang/String;

.field private Tgh:I

.field private WAv:J

.field private ac:Ljava/lang/String;

.field private cJ:Ljava/lang/String;

.field private fl:I

.field private hm:Ljava/lang/String;

.field private zc:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Qhi:J

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->cJ:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ac:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ROR:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Sf:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->hm:Ljava/lang/String;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->WAv:J

    .line 21
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Gm:Ljava/lang/String;

    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->zc:I

    .line 25
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ABk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ABk()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ABk:Ljava/lang/String;

    return-object v0
.end method

.method public CJ()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->CJ:I

    return v0
.end method

.method public CJ(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->zc:I

    return-void
.end method

.method public CJ(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Sf:Ljava/lang/String;

    return-void
.end method

.method public Gm()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Gm:Ljava/lang/String;

    return-object v0
.end method

.method public Qhi()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Qhi:J

    return-wide v0
.end method

.method public Qhi(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->CJ:I

    return-void
.end method

.method public Qhi(J)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Qhi:J

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->cJ:Ljava/lang/String;

    return-void
.end method

.method public ROR()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ROR:Ljava/lang/String;

    return-object v0
.end method

.method public ROR(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ABk:Ljava/lang/String;

    return-void
.end method

.method public Sf()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Sf:Ljava/lang/String;

    return-object v0
.end method

.method public Tgh()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Tgh:I

    return v0
.end method

.method public Tgh(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Gm:Ljava/lang/String;

    return-void
.end method

.method public WAv()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->WAv:J

    return-wide v0
.end method

.method public ac()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public ac(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Tgh:I

    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ROR:Ljava/lang/String;

    return-void
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->cJ:Ljava/lang/String;

    return-object v0
.end method

.method public cJ(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->fl:I

    return-void
.end method

.method public cJ(J)V
    .locals 0

    .line 104
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->WAv:J

    return-void
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ac:Ljava/lang/String;

    return-void
.end method

.method public fl()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->fl:I

    return v0
.end method

.method public fl(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->hm:Ljava/lang/String;

    return-void
.end method

.method public hm()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->hm:Ljava/lang/String;

    return-object v0
.end method

.method public zc()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->zc:I

    return v0
.end method
