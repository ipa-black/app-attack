.class Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh$2;
.super Ljava/lang/Object;
.source "PAGNativeAdLoadListenerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    return-void
.end method
