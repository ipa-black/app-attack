.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "DynamicViewRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->ac()Lorg/json/JSONObject;

    .line 22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->ac()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
