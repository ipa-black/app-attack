.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$5;
.super Ljava/lang/Object;
.source "PAGBannerAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
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

    .line 335
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$5;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/view/View;I)V
    .locals 0

    .line 338
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$5;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$5;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;->onAdClicked()V

    :cond_0
    return-void
.end method
