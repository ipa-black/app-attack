.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$1;
.super Ljava/lang/Object;
.source "PAGBannerAdImpl.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;
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

    .line 194
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 197
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 204
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->ac()V

    return-void
.end method
