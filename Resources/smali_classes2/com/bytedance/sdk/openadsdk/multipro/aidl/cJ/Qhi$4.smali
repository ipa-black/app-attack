.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/Qhi$4;
.super Ljava/lang/Object;
.source "AppOpenAdListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/Qhi;->onAdTimeOver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/Qhi;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/Qhi$4;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/Qhi$4;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/Qhi;)Lcom/bytedance/sdk/openadsdk/apiImpl/ac/cJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/Qhi$4;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/Qhi;)Lcom/bytedance/sdk/openadsdk/apiImpl/ac/cJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/ac/cJ;->ac()V

    :cond_0
    return-void
.end method
