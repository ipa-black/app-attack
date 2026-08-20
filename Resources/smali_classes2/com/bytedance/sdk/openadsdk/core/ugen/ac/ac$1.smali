.class Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "UGenRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->ac()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getUgenTemplateErrorReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    const-string v1, "expressView is null"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->ac()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
