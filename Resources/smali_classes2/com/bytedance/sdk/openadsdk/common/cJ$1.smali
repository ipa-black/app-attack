.class Lcom/bytedance/sdk/openadsdk/common/cJ$1;
.super Ljava/lang/Object;
.source "ArbitrageLoadingStyle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/common/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/cJ;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/common/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/common/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/common/cJ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/common/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/common/cJ;)V

    :cond_0
    return-void
.end method
