.class Lcom/bytedance/sdk/openadsdk/core/settings/HzH$7;
.super Ljava/lang/Object;
.source "TTSdkSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->cJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$7;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 650
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/pA;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$7;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->CJ(I)V

    .line 652
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$7;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->eG()V

    return-void

    .line 654
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->cJ()V

    return-void
.end method
