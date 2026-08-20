.class final Lcom/bytedance/sdk/openadsdk/core/Gm$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "IPManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Gm;->ac(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Gm$1;->Qhi:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 94
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->SO()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 95
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(ILjava/lang/String;)V

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    .line 97
    const-string v1, "url is null"

    invoke-static {v3, v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(ILjava/lang/String;ILjava/lang/String;)V

    return-void

    .line 100
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ROR/Qhi;->cJ()Lcom/bytedance/sdk/component/ROR/cJ/fl;

    move-result-object v2

    .line 102
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;)V

    .line 103
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 104
    const-string v5, "connect_type"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/bytedance/sdk/component/utils/bxS;->Qhi(Landroid/content/Context;J)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    const-string v5, "device_id"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Gm$1;->Qhi:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 106
    const-string v5, "header"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->cJ()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v5

    sget-object v6, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-interface {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "application/json; charset=utf-8"

    const-string v7, "Content-Type"

    if-eqz v5, :cond_2

    .line 109
    :try_start_1
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/qMt;

    sget-object v8, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->DUAL_EVENT:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-direct {v5, v8}, Lcom/bytedance/sdk/openadsdk/core/qMt;-><init>(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)V

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/embedapplog/IDefaultEncrypt;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 110
    const-string v8, "cypher"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    const/4 v1, 0x1

    .line 111
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/EBS;->cJ(Z)V

    .line 112
    const-string v1, "x-pgli18n"

    const-string v8, "4"

    invoke-virtual {v2, v1, v8}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2, v7, v6}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/EBS;->cJ(Z)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {v4}, Lcom/bytedance/sdk/component/utils/Qhi;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 119
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/Gm;->Qhi(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    const-string v1, "Content-Encoding"

    const-string v8, "union_sdk_encode"

    invoke-virtual {v2, v1, v8}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_3
    :goto_0
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/Gm;->Qhi(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v5

    .line 126
    :goto_1
    invoke-virtual {v2, v7, v6}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lorg/json/JSONObject;)V

    const/4 v1, 0x6

    .line 130
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(I)V

    .line 131
    const-string v1, "send_i_p_v6"

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Gm$1$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Gm$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Gm$1;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    const/4 v2, -0x2

    .line 153
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v2, v4}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(ILjava/lang/String;ILjava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "build ipv6 request failed:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    return-void
.end method
