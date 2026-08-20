.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "WebViewRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/MQ;->mvd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->cJ(Z)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Gm()Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->ac()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Qhi(Lorg/json/JSONObject;)V

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->fl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/cJ;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->CJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)I

    move-result v0

    if-nez v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->fl(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)V

    .line 102
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->ac()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Tgh(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
