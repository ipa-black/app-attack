.class Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac$1;
.super Lcom/bykv/vk/openvk/component/video/api/fl/cJ;
.source "FullScreenVideoLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/api/fl/cJ;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;I)V
    .locals 1

    .line 523
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;->ac:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;ILjava/lang/String;)V
    .locals 0

    return-void
.end method
