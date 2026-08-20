.class public Lcom/bytedance/sdk/openadsdk/core/model/kYc;
.super Ljava/lang/Object;
.source "LoadingInfo.java"


# instance fields
.field private CJ:J

.field private Qhi:J

.field private ac:J

.field private cJ:J

.field private fl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    .line 9
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->Qhi:J

    .line 10
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->cJ:J

    const-wide/16 v0, 0xa

    .line 11
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->ac:J

    const-wide/16 v0, 0x14

    .line 12
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->CJ:J

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->fl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public CJ()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->CJ:J

    return-wide v0
.end method

.method public CJ(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x14

    .line 57
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->CJ:J

    return-void

    .line 60
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->CJ:J

    return-void
.end method

.method public Qhi()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->Qhi:J

    return-wide v0
.end method

.method public Qhi(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0xa

    .line 21
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->Qhi:J

    return-void

    .line 24
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->Qhi:J

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->fl:Ljava/lang/String;

    return-void
.end method

.method public ac()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->ac:J

    return-wide v0
.end method

.method public ac(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0xa

    .line 45
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->ac:J

    return-void

    .line 48
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->ac:J

    return-void
.end method

.method public cJ()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->cJ:J

    return-wide v0
.end method

.method public cJ(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x14

    .line 33
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->cJ:J

    return-void

    .line 36
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->cJ:J

    return-void
.end method

.method public fl()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->fl:Ljava/lang/String;

    return-object v0
.end method
