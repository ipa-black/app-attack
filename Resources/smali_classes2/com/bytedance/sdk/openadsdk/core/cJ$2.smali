.class final Lcom/bytedance/sdk/openadsdk/core/cJ$2;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "AdInfoFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;JLcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ$Qhi;

.field final synthetic cJ:J

.field final synthetic fl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;JLcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V
    .locals 0

    .line 618
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->cJ:J

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ$Qhi;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->fl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 623
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 624
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "reason_code"

    const-string v3, "load_vast_fail"

    const-string v4, "error_code"

    if-eqz v1, :cond_3

    .line 625
    :try_start_1
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->hm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Tgh()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Sf()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v1, v5, v7

    if-gtz v1, :cond_0

    goto :goto_0

    .line 630
    :cond_0
    const-string v1, "duration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->cJ:J

    sub-long/2addr v2, v5

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 631
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ$Qhi;

    if-eqz v1, :cond_1

    .line 632
    const-string v2, "wrapper_count"

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ$Qhi;->cJ:I

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 633
    const-string v1, "impression_links_null"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ$Qhi;

    iget-boolean v2, v2, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ$Qhi;->ac:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 635
    :cond_1
    const-string v3, "load_vast_success"

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x3

    .line 626
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 627
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    const/4 v1, -0x2

    .line 640
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 641
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ$Qhi;

    if-eqz v1, :cond_4

    .line 642
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ$Qhi;->Qhi:I

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 645
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->fl:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 648
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 649
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;->Tgh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 650
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v1, 0x3e8

    .line 652
    :try_start_2
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 653
    const-string v1, "description"

    const-string v2, "1000:Image url is null"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 657
    :catchall_0
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->fl:Ljava/lang/String;

    const-string v3, "load_vast_icon_fail"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 658
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_5
    return-void
.end method
