.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "ExpressRenderEventMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Tgh(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc$1;->Qhi:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;

    .line 145
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc$1;->Qhi:Ljava/lang/String;

    const/4 v3, 0x0

    .line 144
    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
