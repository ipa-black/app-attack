.class Lcom/bytedance/sdk/openadsdk/core/Gm$1$1;
.super Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;
.source "IPManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Gm$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/Gm$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Gm$1;Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Gm$1$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/Gm$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Gm$1$1;->Qhi:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 2

    .line 136
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 137
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Gm$1$1;->Qhi:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(ILjava/lang/String;)V

    return-void

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Gm$1$1;->Qhi:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x1

    invoke-static {v1, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(ILjava/lang/String;ILjava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Gm;->Qhi()V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 147
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Gm$1$1;->Qhi:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x1

    invoke-static {v1, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(ILjava/lang/String;ILjava/lang/String;)V

    .line 149
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Gm;->Qhi()V

    return-void
.end method
