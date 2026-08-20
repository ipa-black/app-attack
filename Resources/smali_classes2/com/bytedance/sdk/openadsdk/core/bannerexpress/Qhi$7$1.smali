.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7$1;
.super Ljava/lang/Object;
.source "PAGBannerAdImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7;->Qhi(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 635
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->cJ:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Gm(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    return-void
.end method
