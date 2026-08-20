.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac$3;
.super Ljava/lang/Object;
.source "FullScreenVideoListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac;->onAdClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac;)Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac;)Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;->cJ()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac;)V

    return-void
.end method
