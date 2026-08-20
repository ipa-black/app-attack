.class public Lcom/bytedance/sdk/openadsdk/core/model/CQU;
.super Ljava/lang/Object;
.source "TTAppOpenAdReportModel.java"


# instance fields
.field private CJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

.field private Gm:I

.field public Qhi:Z

.field private ROR:J

.field private Sf:J

.field private Tgh:J

.field private WAv:J

.field private ac:Lcom/bytedance/sdk/openadsdk/utils/Jma;

.field public cJ:J

.field private fl:J

.field private hm:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->cJ()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->ac:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->cJ()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->CJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    return-void
.end method


# virtual methods
.method public CJ()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->ROR:J

    return-wide v0
.end method

.method public Qhi()Lcom/bytedance/sdk/openadsdk/utils/Jma;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->ac:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    return-object v0
.end method

.method public Qhi(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Gm:I

    return-void
.end method

.method public Qhi(J)V
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->WAv:J

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/utils/Jma;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->ac:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/utils/Jma;ILcom/bytedance/sdk/openadsdk/utils/Jma;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->ac:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi(Lcom/bytedance/sdk/openadsdk/utils/Jma;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->fl:J

    .line 24
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi(Lcom/bytedance/sdk/openadsdk/utils/Jma;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Tgh:J

    int-to-long v0, p3

    .line 25
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->ROR:J

    .line 26
    invoke-virtual {p4, p2}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi(Lcom/bytedance/sdk/openadsdk/utils/Jma;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Sf:J

    return-void
.end method

.method public ROR()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->WAv:J

    return-wide v0
.end method

.method public Sf()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Gm:I

    return v0
.end method

.method public Tgh()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->hm:J

    return-wide v0
.end method

.method public ac()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Tgh:J

    return-wide v0
.end method

.method public cJ()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->fl:J

    return-wide v0
.end method

.method public cJ(Lcom/bytedance/sdk/openadsdk/utils/Jma;)V
    .locals 2

    .line 34
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->CJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->ac:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi(Lcom/bytedance/sdk/openadsdk/utils/Jma;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->hm:J

    return-void
.end method

.method public fl()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Sf:J

    return-wide v0
.end method
