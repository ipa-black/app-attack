.class Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;
.super Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;
.source "UGenTemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Ljava/lang/String;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;

.field final synthetic Tgh:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;

.field final synthetic ac:Ljava/lang/String;

.field final synthetic cJ:Ljava/lang/String;

.field final synthetic fl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->Tgh:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->cJ:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->ac:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->CJ:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->fl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result p1

    const/4 v0, 0x3

    const-string v1, "net"

    if-eqz p1, :cond_4

    .line 154
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 156
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;

    if-eqz p1, :cond_1

    .line 157
    const-string p2, "net data is null"

    invoke-interface {p1, v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;->Qhi(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 161
    :cond_2
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;-><init>()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->cJ:Ljava/lang/String;

    .line 162
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->ac:Ljava/lang/String;

    .line 163
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->CJ:Ljava/lang/String;

    .line 164
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->fl:Ljava/lang/String;

    .line 165
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p2

    .line 166
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p2

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p2

    .line 169
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;)V

    .line 171
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->Tgh:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;)V

    .line 172
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;

    if-eqz p2, :cond_3

    .line 174
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;

    invoke-interface {v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 177
    :catch_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;

    const-string v0, "parse json exception data is"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p2, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;->Qhi(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 181
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;

    if-eqz p1, :cond_5

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "net code error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;->Qhi(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V
    .locals 2

    .line 189
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;

    if-eqz p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "net error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "net"

    const/4 v1, 0x3

    invoke-interface {p1, v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;->Qhi(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
