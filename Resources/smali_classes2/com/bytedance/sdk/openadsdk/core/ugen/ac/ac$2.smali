.class Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac$2;
.super Ljava/lang/Object;
.source "UGenRender.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;)Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;)Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V

    :cond_0
    return-void
.end method
