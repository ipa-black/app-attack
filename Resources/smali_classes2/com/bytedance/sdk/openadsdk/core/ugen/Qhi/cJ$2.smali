.class Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$2;
.super Ljava/lang/Object;
.source "UGenTemplateManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;->Qhi(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
