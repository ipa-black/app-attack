.class Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ$2;
.super Ljava/lang/Object;
.source "UGenEndcardInflater.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Qhi(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
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

    .line 104
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;)Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;)Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;->Qhi(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/component/cJ<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;)Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;)Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;->Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;)V

    :cond_0
    return-void
.end method
