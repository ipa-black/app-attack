.class final Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "VastTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;->cJ(ZLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Ljava/lang/String;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;

.field final synthetic Tgh:Ljava/lang/String;

.field final synthetic ac:Ljava/lang/String;

.field final synthetic cJ:Z

.field final synthetic fl:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 241
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;->cJ:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;->ac:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;->CJ:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;->fl:Z

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;->Tgh:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 244
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 246
    :try_start_0
    const-string v1, "type"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;->Qhi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v1, "success"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;->cJ:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 248
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;->ac:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    const-string v1, "description"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    :cond_0
    const-string v1, "url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;->CJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;->ac:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 253
    const-string v1, "progress"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;->ac:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 255
    :cond_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;->fl:Z

    if-eqz v1, :cond_2

    .line 256
    const-string v1, "retry"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :catchall_0
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$3;->Tgh:Ljava/lang/String;

    const-string v3, "dsp_track_link_result"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
