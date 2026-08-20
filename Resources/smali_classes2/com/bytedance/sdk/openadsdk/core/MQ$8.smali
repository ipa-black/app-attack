.class Lcom/bytedance/sdk/openadsdk/core/MQ$8;
.super Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/MQ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;)V
    .locals 0

    .line 1207
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$8;->cJ:Lcom/bytedance/sdk/openadsdk/core/MQ;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1211
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result p1

    .line 1212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    return-void

    .line 1214
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    sget p2, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi:I

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V
    .locals 1

    .line 1220
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    return-void
.end method
