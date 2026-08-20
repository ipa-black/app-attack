.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;
.super Ljava/lang/Object;
.source "RewardFullReportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/util/Map;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

.field final synthetic cJ:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;Ljava/util/Map;Landroid/view/View;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->Qhi:Ljava/util/Map;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->cJ:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->iMK:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v3, 0x0

    .line 182
    :try_start_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->Qhi:Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 183
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->Qhi:Ljava/util/Map;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 185
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    move-object v3, v4

    .line 187
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 188
    const-string v5, "width"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->cJ:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    const-string v5, "height"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->cJ:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    const-string v5, "alpha"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->cJ:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 191
    const-string v5, "root_view"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 194
    const-string v5, "TTAD.RFReportManager"

    const-string v6, "run: "

    invoke-static {v5, v6, v4}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    :goto_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v4

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 198
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PAe:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->Tgh()V

    .line 199
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->Qhi:Ljava/util/Map;

    if-eqz v3, :cond_2

    const-string v4, "dynamic_show_type"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 200
    :cond_2
    new-instance v2, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v1

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->hm()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    :goto_2
    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;-><init>(I)V

    .line 201
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v1

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v1

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v1, :cond_4

    .line 202
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v1

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/activity/ROR;->hm:I

    iput v1, v2, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;->cJ:I

    .line 204
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v1

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;)V

    return-void
.end method
