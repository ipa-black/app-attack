.class Lcom/bytedance/sdk/openadsdk/component/reward/ROR$1;
.super Ljava/lang/Object;
.source "PAGInterstitialAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/cJ$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/component/reward/ROR;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/ROR;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ROR;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/Gm/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->zc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public Qhi(Ljava/lang/Throwable;)V
    .locals 3

    .line 210
    const-string v0, "TTFullScreenVideoAdImpl"

    const-string v1, "show full screen video error: "

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ROR;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/Gm/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->zc()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "playable tool error open"

    :goto_0
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :catchall_0
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const-string v0, "fullscreen_interstitial_ad"

    const-string v1, "activity start  fail "

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
