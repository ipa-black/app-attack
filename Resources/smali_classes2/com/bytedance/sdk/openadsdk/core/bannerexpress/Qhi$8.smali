.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$8;
.super Ljava/lang/Object;
.source "PAGBannerAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->CJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$8;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$8;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->zc(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)V

    return-void
.end method

.method public Qhi(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 672
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 676
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 677
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$8;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$8;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 678
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$8;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 679
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$8;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->CJ()V

    return-void

    .line 673
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$8;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->zc(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)V

    return-void
.end method
