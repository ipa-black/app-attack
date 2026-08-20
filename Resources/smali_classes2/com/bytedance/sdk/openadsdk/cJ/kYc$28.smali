.class Lcom/bytedance/sdk/openadsdk/cJ/kYc$28;
.super Ljava/lang/Object;
.source "WebviewTimeTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lorg/json/JSONObject;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/cJ/kYc;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Lorg/json/JSONObject;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$28;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/kYc;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$28;->Qhi:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$28;->Qhi:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 187
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 188
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$28;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/kYc;

    const-string v4, "ts"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v0, v4, v1}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$28;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/kYc;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->cJ(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "webview_load_error"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
