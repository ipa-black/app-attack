.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$46;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "AdEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Ljava/lang/String;

.field final synthetic Qhi:J

.field final synthetic ac:Ljava/lang/String;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic fl:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 323
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->Qhi:J

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->ac:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->CJ:Ljava/lang/String;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->fl:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 327
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->Qhi:J

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->ac:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->CJ:Ljava/lang/String;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/ac$46;)V

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;)V

    .line 396
    const-string v0, "show"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->CJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->VV()Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ewb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hf()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;

    const-string v2, "show_urls"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;->Qhi(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 404
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->fl:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 405
    const-string v1, "dynamic_show_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 406
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->XyJ()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 407
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->XH()I

    move-result v0

    .line 408
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$2;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/ac$46;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/fl/ac;->ac()V

    :cond_3
    return-void
.end method
