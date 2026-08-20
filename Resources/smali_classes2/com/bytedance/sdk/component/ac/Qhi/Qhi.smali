.class public Lcom/bytedance/sdk/component/ac/Qhi/Qhi;
.super Ljava/lang/Object;
.source "RequestHttpTime.java"


# instance fields
.field CJ:J

.field Qhi:J

.field ROR:J

.field Sf:J

.field Tgh:J

.field ac:J

.field cJ:J

.field fl:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->Qhi:J

    return-void
.end method


# virtual methods
.method public ABk()V
    .locals 2

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->Sf:J

    return-void
.end method

.method public CJ()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->Qhi:J

    return-wide v0
.end method

.method public Gm()V
    .locals 2

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->ROR:J

    return-void
.end method

.method public Qhi()V
    .locals 2

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->ac:J

    return-void
.end method

.method public ROR()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->ac:J

    return-wide v0
.end method

.method public Sf()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->CJ:J

    return-wide v0
.end method

.method public Tgh()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->Tgh:J

    return-wide v0
.end method

.method public WAv()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->ROR:J

    return-wide v0
.end method

.method public ac()V
    .locals 2

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->fl:J

    return-void
.end method

.method public cJ()V
    .locals 2

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->CJ:J

    return-void
.end method

.method public fl()V
    .locals 2

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->Tgh:J

    return-void
.end method

.method public hm()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->fl:J

    return-wide v0
.end method

.method public iMK()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->cJ:J

    return-wide v0
.end method

.method public pA()V
    .locals 2

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->cJ:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestHttpTime{requestBuildTs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->Qhi:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", asyncCallExecTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->cJ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestStartExecTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->ac:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestConnectStartTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->CJ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestConnectFinishTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->fl:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqCallServerStartTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->ROR:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqCallServerFinishTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->Sf:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zc()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->Sf:J

    return-wide v0
.end method
