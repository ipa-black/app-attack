.class Lcom/bytedance/sdk/openadsdk/cJ/kYc$21;
.super Ljava/lang/Object;
.source "WebviewTimeTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/kYc;->ROR(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/cJ/kYc;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Ljava/lang/String;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$21;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/kYc;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$21;->Qhi:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 567
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 568
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$21;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/kYc;

    const-string v4, "ts"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v2, v4, v0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$21;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/kYc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->cJ(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$21;->Qhi:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
