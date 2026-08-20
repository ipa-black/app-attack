.class Lcom/bytedance/sdk/openadsdk/ac/Qhi$2$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "ADNFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ac/Qhi$2;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/Qhi/Qhi;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/ac/Qhi$2;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/ac/Qhi$2;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/apiImpl/Qhi/Qhi;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$2$1;->ac:Lcom/bytedance/sdk/openadsdk/ac/Qhi$2;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$2$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/Qhi/Qhi;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$2$1;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 133
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->HzH()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->tP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$2$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/Qhi/Qhi;

    const/16 v1, -0x12

    const-string v2, "Blind mode does not allow requesting ads"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/apiImpl/Qhi/Qhi;->onError(ILjava/lang/String;)V

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$2$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/Qhi/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$2$1;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-nez v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$2$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/Qhi/Qhi;

    const/4 v1, -0x4

    const-string v2, "adslot is null"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/apiImpl/Qhi/Qhi;->onError(ILjava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 144
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setNativeAdType(I)V

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$2$1;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setDurationSlotType(I)V

    .line 147
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$2$1;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$2$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/Qhi/Qhi;

    const/16 v4, 0x1388

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/common/fl;I)V

    return-void
.end method
