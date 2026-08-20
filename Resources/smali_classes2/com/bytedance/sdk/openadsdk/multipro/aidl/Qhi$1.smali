.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "BinderPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ;->onServiceConnected()V

    :cond_0
    return-void
.end method
