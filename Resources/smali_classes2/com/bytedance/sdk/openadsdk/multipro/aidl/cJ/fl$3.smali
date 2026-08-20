.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$3;
.super Ljava/lang/Object;
.source "RewardVideoListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;->onAdClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$3;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$3;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;)Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$3;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;)Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;->cJ()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$3;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;->cJ(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;)V

    return-void
.end method
