.class Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ$1;
.super Ljava/lang/Object;
.source "UGenEndcardInflater.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Qhi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;)Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;->Qhi(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 83
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;)Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;->Qhi(Ljava/lang/String;)V

    return-void
.end method
