.class Lcom/bytedance/sdk/openadsdk/component/fl$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "PAGAppOpenAdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/fl;->Qhi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/fl;Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/fl;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 97
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/fl;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/component/fl;)Lcom/bytedance/sdk/openadsdk/apiImpl/ac/cJ;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    .line 100
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Qhi(I)Landroid/os/IBinder;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi/cJ;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/Qhi;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/fl;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/component/fl;)Lcom/bytedance/sdk/openadsdk/apiImpl/ac/cJ;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/ac/cJ;)V

    .line 105
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/fl;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/fl;->cJ(Lcom/bytedance/sdk/openadsdk/component/fl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerAppOpenAdListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IAppOpenAdInteractionListener;)V

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/fl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/component/fl;Lcom/bytedance/sdk/openadsdk/apiImpl/ac/cJ;)Lcom/bytedance/sdk/openadsdk/apiImpl/ac/cJ;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    const-string v1, "TTAppOpenAdImpl"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_0
    :goto_0
    return-void
.end method
