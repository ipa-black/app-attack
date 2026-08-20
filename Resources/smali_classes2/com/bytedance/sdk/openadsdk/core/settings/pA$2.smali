.class Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;
.super Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;
.source "SettingsFetchTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/pA;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/settings/pA;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/pA;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/settings/pA;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 6

    .line 116
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result p1

    .line 120
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->cjC()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/pM;->ROR()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 123
    const-string v1, "Pangle_Debug_Mode"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 125
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    const/4 v1, 0x0

    .line 129
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_3

    .line 143
    const-string v4, "cypher"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v5, :cond_3

    const/4 p1, 0x3

    if-ne v4, p1, :cond_1

    .line 154
    const-string p1, "message"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Qhi;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 158
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, p1

    .line 168
    :catchall_0
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->ac()Ljava/util/Map;

    move-result-object p1

    .line 169
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/settings/pA;

    invoke-static {p2, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/pA;->Qhi(Lcom/bytedance/sdk/openadsdk/core/settings/pA;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    :catchall_1
    :try_start_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/settings/pA;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/pA;->Qhi(Lorg/json/JSONObject;)Z

    .line 179
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(J)V

    .line 185
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->cJ(Lcom/bytedance/sdk/openadsdk/ABk/fl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 198
    :catchall_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/settings/pA;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/pA;->Qhi(Lcom/bytedance/sdk/openadsdk/core/settings/pA;)Lcom/bytedance/sdk/openadsdk/core/settings/pA$Qhi;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/pA$Qhi;->Qhi(Z)V

    .line 200
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Tgh/Qhi;->Qhi()V

    return-void

    .line 208
    :cond_2
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->ac(Lcom/bytedance/sdk/openadsdk/ABk/fl;)V

    .line 217
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    .line 218
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/settings/pA;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/pA;->Qhi(Lcom/bytedance/sdk/openadsdk/core/settings/pA;)Lcom/bytedance/sdk/openadsdk/core/settings/pA$Qhi;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/pA$Qhi;->Qhi(Z)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V
    .locals 0

    .line 224
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    .line 228
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/settings/pA;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/pA;->Qhi(Lcom/bytedance/sdk/openadsdk/core/settings/pA;)Lcom/bytedance/sdk/openadsdk/core/settings/pA$Qhi;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/pA$Qhi;->Qhi(Z)V

    .line 230
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Tgh/Qhi;->Qhi()V

    .line 232
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->ac(Lcom/bytedance/sdk/openadsdk/ABk/fl;)V

    return-void
.end method
