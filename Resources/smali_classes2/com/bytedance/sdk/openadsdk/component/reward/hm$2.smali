.class Lcom/bytedance/sdk/openadsdk/component/reward/hm$2;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "PAGRewardVideoAdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/hm;->Qhi(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:I

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/component/reward/hm;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/hm;Ljava/lang/String;I)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/hm$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/hm;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/hm$2;->Qhi:I

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 245
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;

    move-result-object v0

    .line 247
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/hm$2;->Qhi:I

    if-nez v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/hm$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/hm;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/hm;)Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/hm$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/hm;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/hm;)Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;)V

    const/4 v2, 0x0

    .line 251
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Qhi(I)Landroid/os/IBinder;

    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi/Sf;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/hm$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/hm;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/hm;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/hm;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerRewardVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 259
    const-string v1, "TTRewardVideoAdImpl"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_0
    :goto_0
    return-void
.end method
