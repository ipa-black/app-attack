.class Lcom/bytedance/sdk/openadsdk/core/model/HzH$8;
.super Ljava/lang/Object;
.source "LandingPageModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qhi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$8;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$8;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$8;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$8;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$8;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->fl(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/4 v4, 0x0

    .line 257
    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;JZ)V

    .line 259
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$8;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Tgh(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    :cond_0
    return-void
.end method
