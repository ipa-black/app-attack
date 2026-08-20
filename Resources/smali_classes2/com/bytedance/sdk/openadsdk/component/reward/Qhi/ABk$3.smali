.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$3;
.super Ljava/lang/Object;
.source "RewardFullUgenEndcardManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->iMK()V
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

    .line 147
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;J)J

    return-void
.end method

.method public Qhi(ILjava/lang/String;)V
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ROR(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public Qhi(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ROR(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Sf(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)J

    move-result-wide v6

    sub-long v5, v4, v6

    const-string v8, "endcard"

    const/4 v2, 0x1

    const-string v4, "fail"

    move-object v7, p3

    move v9, p1

    move-object v10, p2

    invoke-static/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/component/cJ<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;Lcom/bytedance/adsdk/ugeno/component/cJ;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    .line 178
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ROR(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 11

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Sf(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)J

    move-result-wide v6

    sub-long v5, v4, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x1

    const-string v4, "success"

    const-string v8, "endcard"

    move-object v7, p1

    invoke-static/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public cJ()V
    .locals 0

    return-void
.end method
