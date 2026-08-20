.class Lcom/bytedance/sdk/openadsdk/component/Sf$2;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "TTAppOpenAdLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/Sf;Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/Sf;->ac(Lcom/bytedance/sdk/openadsdk/component/Sf;)Lcom/bytedance/sdk/openadsdk/component/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/Sf;->cJ(Lcom/bytedance/sdk/openadsdk/component/Sf;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/ROR;->fl(I)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 213
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    .line 214
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->czB()Z

    move-result v3

    const/16 v4, 0x65

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 215
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;

    invoke-direct {v2, v5, v4, v0}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/tP;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Lcom/bytedance/sdk/openadsdk/component/fl/cJ;)V

    return-void

    :cond_0
    if-nez v2, :cond_1

    .line 218
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Gm()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 220
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;

    invoke-direct {v2, v5, v4, v0}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/tP;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Lcom/bytedance/sdk/openadsdk/component/fl/cJ;)V

    return-void

    :cond_1
    if-eqz v2, :cond_3

    .line 224
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->zc()I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;

    invoke-direct {v2, v5, v4, v0}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/tP;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Lcom/bytedance/sdk/openadsdk/component/fl/cJ;)V

    return-void

    .line 230
    :cond_3
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/Sf;->ac(Lcom/bytedance/sdk/openadsdk/component/Sf;)Lcom/bytedance/sdk/openadsdk/component/ROR;

    move-result-object v3

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/component/Sf;->cJ(Lcom/bytedance/sdk/openadsdk/component/Sf;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/component/ROR;->cJ(I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/Sf;->ac(Lcom/bytedance/sdk/openadsdk/component/Sf;)Lcom/bytedance/sdk/openadsdk/component/ROR;

    move-result-object v3

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/component/Sf;->cJ(Lcom/bytedance/sdk/openadsdk/component/Sf;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/component/ROR;->CJ(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Z)V

    return-void

    .line 231
    :cond_5
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v3

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/component/Sf;->CJ(Lcom/bytedance/sdk/openadsdk/component/Sf;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->CQU(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 233
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/Sf;->ac(Lcom/bytedance/sdk/openadsdk/component/Sf;)Lcom/bytedance/sdk/openadsdk/component/ROR;

    move-result-object v3

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/component/Sf;->cJ(Lcom/bytedance/sdk/openadsdk/component/Sf;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/component/ROR;->ROR(I)V

    :cond_6
    if-eqz v2, :cond_8

    .line 240
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/Sf;->ac(Lcom/bytedance/sdk/openadsdk/component/Sf;)Lcom/bytedance/sdk/openadsdk/component/ROR;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 246
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Z)V

    .line 248
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/CJ/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void

    .line 243
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;

    invoke-direct {v2, v5, v4, v0}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/tP;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Lcom/bytedance/sdk/openadsdk/component/fl/cJ;)V

    return-void

    .line 252
    :cond_8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/Sf;->ac(Lcom/bytedance/sdk/openadsdk/component/Sf;)Lcom/bytedance/sdk/openadsdk/component/ROR;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/ROR;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 253
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;

    invoke-direct {v2, v5, v4, v0}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/tP;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Lcom/bytedance/sdk/openadsdk/component/fl/cJ;)V

    return-void

    .line 256
    :cond_9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Z)V

    .line 258
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/CJ/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void

    .line 265
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Z)V

    return-void
.end method
