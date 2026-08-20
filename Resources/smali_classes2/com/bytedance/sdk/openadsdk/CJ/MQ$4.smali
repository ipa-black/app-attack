.class Lcom/bytedance/sdk/openadsdk/CJ/MQ$4;
.super Ljava/lang/Object;
.source "FeatureCaculateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

.field final synthetic cJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/CJ/MQ;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$4;->ac:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$4;->cJ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->DS()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$4;->ac:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$4;->cJ:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->DS()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->jWV()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/CJ/MQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
