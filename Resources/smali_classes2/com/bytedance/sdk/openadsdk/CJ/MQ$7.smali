.class Lcom/bytedance/sdk/openadsdk/CJ/MQ$7;
.super Ljava/lang/Object;
.source "FeatureCaculateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/CJ/MQ;->cJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$7;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 300
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->fl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$7;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->cJ(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$7;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->cJ(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/zc/Qhi;

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Qhi()V

    goto :goto_0

    :cond_1
    return-void

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$7;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ac(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)Lcom/bytedance/sdk/openadsdk/zc/Qhi;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$7;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ac(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)Lcom/bytedance/sdk/openadsdk/zc/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Qhi()V

    :cond_3
    return-void
.end method
