.class public Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Sf;
.super Ljava/lang/Object;
.source "PAGNativeFeedAdWrapperListenerImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;


# instance fields
.field private final Qhi:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Sf;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    return-object p0
.end method


# virtual methods
.method public Qhi()V
    .locals 1

    .line 47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Sf$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Sf$3;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Sf;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 0

    .line 35
    new-instance p1, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Sf$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Sf$2;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Sf;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cJ()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAdClicked()V
    .locals 1

    .line 23
    new-instance v0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Sf$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Sf$1;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Sf;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V

    return-void
.end method
