.class Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "StatsLogAdLogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/cJ;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/Gm/cJ;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk;

.field final synthetic cJ:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Gm/cJ;Z)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk$1;->ac:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/cJ;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk$1;->cJ:Z

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk$1;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/Gm/cJ;->getLogStats()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/ac;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/ac;->Qhi()Lorg/json/JSONObject;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Qhi/cJ;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/bxS;->Qhi()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Qhi/cJ;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    .line 72
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Qhi/cJ;->ac(B)V

    .line 73
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk$1;->cJ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Qhi/cJ;->cJ(B)V

    const/4 v0, 0x1

    .line 74
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Qhi/cJ;->Qhi(B)V

    .line 75
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ;->cJ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->Qhi(Landroid/content/Context;Z)V

    .line 78
    :cond_2
    invoke-static {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
