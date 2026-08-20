.class Lcom/bytedance/sdk/openadsdk/cJ/kYc$20;
.super Ljava/lang/Object;
.source "WebviewTimeTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/kYc;->ac(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:I

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/cJ/kYc;

.field final synthetic cJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/kYc;ILjava/lang/String;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$20;->ac:Lcom/bytedance/sdk/openadsdk/cJ/kYc;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$20;->Qhi:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$20;->cJ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 550
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 551
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$20;->ac:Lcom/bytedance/sdk/openadsdk/cJ/kYc;

    const-string v4, "ts"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v2, v4, v0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$20;->ac:Lcom/bytedance/sdk/openadsdk/cJ/kYc;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$20;->Qhi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "code"

    invoke-static {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 553
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$20;->ac:Lcom/bytedance/sdk/openadsdk/cJ/kYc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->cJ(Lcom/bytedance/sdk/openadsdk/cJ/kYc;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/kYc$20;->cJ:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/kYc;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
