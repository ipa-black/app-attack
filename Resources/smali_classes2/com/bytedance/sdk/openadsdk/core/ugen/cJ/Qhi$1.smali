.class Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$1;
.super Ljava/lang/Object;
.source "UGenEndCardRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;->Qhi(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;

.field final synthetic Qhi:Lorg/json/JSONObject;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;

.field final synthetic cJ:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$1;->CJ:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$1;->Qhi:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$1;->cJ:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$1;->CJ:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$1;->Qhi:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$1;->cJ:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;)V

    return-void
.end method
