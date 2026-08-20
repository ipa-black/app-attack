.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$20;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "AdEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Ljava/lang/String;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;

.field final synthetic ac:J

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic fl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 941
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$20;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$20;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$20;->ac:J

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$20;->CJ:Ljava/lang/String;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$20;->fl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 946
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$20;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;

    if-eqz v1, :cond_0

    .line 947
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;->Qhi()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    .line 949
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    goto :goto_0

    .line 952
    :cond_0
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 954
    :cond_1
    :goto_0
    :try_start_3
    const-string v2, "log_extra"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$20;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 955
    const-string v2, "ua_policy"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$20;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zn()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_0
    move-object v1, v0

    .line 958
    :catch_1
    :goto_1
    new-instance v2, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$20;->ac:J

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$20;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;-><init>(JLcom/bytedance/sdk/openadsdk/core/model/tP;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$20;->CJ:Ljava/lang/String;

    .line 959
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$20;->fl:Ljava/lang/String;

    .line 960
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$20;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 961
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$20;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 962
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->DS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Sf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$20;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 963
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->oU()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    move-result-object v2

    .line 964
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$20;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 965
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->jWV()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->ROR(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    move-result-object v1

    .line 966
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/cJ/Qhi;)V

    return-void
.end method
