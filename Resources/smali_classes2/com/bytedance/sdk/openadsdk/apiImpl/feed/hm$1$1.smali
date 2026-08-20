.class Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1$1;
.super Ljava/lang/Object;
.source "TTNativeAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1;Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1$1;->cJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1$1;->Qhi:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1$1;->cJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;->Qhi()V

    .line 247
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1$1;->Qhi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/hm;->Tgh(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1$1;->cJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1;->cJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->Sf()Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;->close()V

    :cond_0
    return-void
.end method
