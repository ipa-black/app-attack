.class public Lcom/bytedance/sdk/openadsdk/zc/cJ;
.super Ljava/lang/Object;
.source "FeatureDurationModel.java"


# instance fields
.field private CJ:J

.field private Qhi:J

.field private final ac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/zc/ac;",
            ">;"
        }
    .end annotation
.end field

.field private cJ:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/zc/cJ;->Qhi:J

    .line 9
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/zc/cJ;->cJ:J

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/zc/cJ;->ac:Ljava/util/List;

    .line 12
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/zc/cJ;->CJ:J

    return-void
.end method


# virtual methods
.method public CJ(J)V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zc/cJ;->ac:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/zc/ac;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/zc/cJ;->CJ:J

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/bytedance/sdk/openadsdk/zc/ac;-><init>(JJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 p1, 0x0

    .line 28
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/zc/cJ;->CJ:J

    return-void
.end method

.method public Qhi(JJ)J
    .locals 7

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zc/cJ;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/zc/ac;

    .line 34
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/zc/ac;->Qhi()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_0

    int-to-long v3, v1

    .line 35
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/zc/ac;->cJ()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/zc/ac;->Qhi()J

    move-result-wide v1

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    goto :goto_1

    :cond_0
    int-to-long v3, v1

    .line 37
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/zc/ac;->cJ()J

    move-result-wide v1

    sub-long/2addr v1, p1

    add-long/2addr v3, v1

    :goto_1
    long-to-int v1, v3

    goto :goto_0

    .line 40
    :cond_1
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/zc/cJ;->Qhi:J

    cmp-long v0, v2, p1

    const-wide/16 v4, 0x0

    if-gez v0, :cond_4

    .line 41
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/zc/cJ;->cJ:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    :goto_2
    sub-long/2addr v2, p1

    int-to-long p1, v1

    sub-long/2addr v2, p1

    return-wide v2

    .line 44
    :cond_2
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/zc/cJ;->CJ:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    sub-long/2addr p3, p1

    :goto_3
    int-to-long p1, v1

    sub-long/2addr p3, p1

    return-wide p3

    .line 51
    :cond_4
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/zc/cJ;->cJ:J

    cmp-long v0, p1, v4

    if-eqz v0, :cond_5

    :goto_4
    sub-long/2addr p1, v2

    int-to-long p3, v1

    sub-long/2addr p1, p3

    return-wide p1

    .line 54
    :cond_5
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/zc/cJ;->CJ:J

    cmp-long v0, p1, v4

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    sub-long/2addr p3, v2

    goto :goto_3
.end method

.method public Qhi(J)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/zc/cJ;->Qhi:J

    return-void
.end method

.method public ac(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/zc/cJ;->CJ:J

    return-void
.end method

.method public cJ(J)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/zc/cJ;->cJ:J

    return-void
.end method
