.class Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi$2;
.super Ljava/lang/Object;
.source "AdCallBackAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/model/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi$2;->ac:Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi$2;->ac:Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;)Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    return-void
.end method
