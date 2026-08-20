.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;
.super Ljava/lang/Object;
.source "RewardFullUgenEndcardManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ac()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;J)J

    return-void
.end method

.method public Qhi(ILjava/lang/String;)V
    .locals 10

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 105
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)J

    move-result-wide v5

    sub-long v5, v0, v5

    const/4 v9, 0x0

    move v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Qhi(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)J

    move-result-wide v6

    sub-long v5, v4, v6

    const-string v8, "endcard"

    const/4 v2, 0x0

    const-string v4, "fail"

    move-object v7, p3

    move v9, p1

    move-object v10, p2

    invoke-static/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/component/cJ<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;Lcom/bytedance/adsdk/ugeno/component/cJ;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    .line 111
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 112
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;J)J

    .line 114
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->fl(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)V

    .line 115
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->hm()V

    .line 116
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Tgh(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;J)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 11

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)J

    move-result-wide v6

    sub-long v5, v4, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v4, "success"

    const-string v8, "endcard"

    move-object v7, p1

    invoke-static/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public cJ()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->fl()V

    return-void
.end method
