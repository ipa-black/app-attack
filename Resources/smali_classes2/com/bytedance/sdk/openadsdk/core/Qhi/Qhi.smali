.class public Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;
.super Ljava/lang/Object;
.source "AdCallBackAdapter.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;


# instance fields
.field private final Qhi:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;)Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    return-object p0
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    if-eqz v0, :cond_1

    .line 28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->fl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    return-void

    .line 31
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    if-eqz v0, :cond_1

    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->fl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    return-void

    .line 47
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
