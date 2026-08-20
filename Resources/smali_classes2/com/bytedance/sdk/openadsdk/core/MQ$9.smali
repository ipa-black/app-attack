.class Lcom/bytedance/sdk/openadsdk/core/MQ$9;
.super Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/tP$cJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/MQ;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/tP$cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;Lcom/bytedance/sdk/openadsdk/core/tP$cJ;)V
    .locals 0

    .line 1741
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->ac:Lcom/bytedance/sdk/openadsdk/core/MQ;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->cJ:Lcom/bytedance/sdk/openadsdk/core/tP$cJ;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 2

    if-eqz p2, :cond_5

    .line 1745
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1746
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    .line 1748
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1750
    const-string p2, "cypher"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 1751
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1754
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1756
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 1758
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v0

    .line 1763
    :catchall_0
    :cond_0
    :try_start_2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/MQ$cJ;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/MQ$cJ;

    move-result-object p1

    .line 1764
    iget p2, p1, Lcom/bytedance/sdk/openadsdk/core/MQ$cJ;->Qhi:I

    const/16 v0, 0x4e20

    if-eq p2, v0, :cond_1

    .line 1765
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->cJ:Lcom/bytedance/sdk/openadsdk/core/tP$cJ;

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/core/MQ$cJ;->Qhi:I

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/MQ$cJ;->Qhi:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/tP$cJ;->Qhi(ILjava/lang/String;)V

    return-void

    .line 1768
    :cond_1
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/core/MQ$cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/model/pM;

    if-nez p2, :cond_2

    .line 1769
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->ac:Lcom/bytedance/sdk/openadsdk/core/MQ;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->cJ:Lcom/bytedance/sdk/openadsdk/core/tP$cJ;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/core/tP$cJ;)V

    return-void

    .line 1773
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->cJ:Lcom/bytedance/sdk/openadsdk/core/tP$cJ;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/tP$cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ$cJ;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1776
    const-string p2, "NetApiImpl"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->ac:Lcom/bytedance/sdk/openadsdk/core/MQ;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->cJ:Lcom/bytedance/sdk/openadsdk/core/tP$cJ;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/core/tP$cJ;)V

    return-void

    .line 1780
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    .line 1781
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    .line 1782
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    .line 1783
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    const/4 p1, -0x2

    .line 1785
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object p1

    .line 1786
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result v0

    .line 1787
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1788
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object p1

    .line 1790
    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->cJ:Lcom/bytedance/sdk/openadsdk/core/tP$cJ;

    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/tP$cJ;->Qhi(ILjava/lang/String;)V

    return-void

    .line 1796
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    sget p2, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi:I

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    .line 1797
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->ac:Lcom/bytedance/sdk/openadsdk/core/MQ;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->cJ:Lcom/bytedance/sdk/openadsdk/core/tP$cJ;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/core/tP$cJ;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1806
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1805
    :cond_0
    const-string p1, ""

    .line 1808
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    .line 1810
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$9;->cJ:Lcom/bytedance/sdk/openadsdk/core/tP$cJ;

    const/4 v0, -0x2

    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/tP$cJ;->Qhi(ILjava/lang/String;)V

    return-void
.end method
