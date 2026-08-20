.class Lcom/bytedance/sdk/openadsdk/component/reward/ROR$2;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "PAGInterstitialAdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Qhi(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:I

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/component/reward/ROR;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/ROR;Ljava/lang/String;I)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$2;->Qhi:I

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 269
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;

    move-result-object v0

    .line 271
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$2;->Qhi:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 272
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/ROR;)Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 274
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/ROR;)Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/ac;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;)V

    .line 275
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi;->Qhi(I)Landroid/os/IBinder;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Qhi/Tgh;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/ROR;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerFullVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 283
    const-string v1, "TTFullScreenVideoAdImpl"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_0
    :goto_0
    return-void
.end method
