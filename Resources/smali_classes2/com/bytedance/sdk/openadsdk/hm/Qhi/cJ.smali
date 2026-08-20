.class public Lcom/bytedance/sdk/openadsdk/hm/Qhi/cJ;
.super Lcom/bytedance/sdk/component/Qhi/fl;
.source "DoInterstitialWebViewCloseMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/Qhi/fl<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final Qhi:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/NFd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/NFd;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Qhi/fl;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/cJ;->Qhi:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/component/Qhi/kYc;Lcom/bytedance/sdk/openadsdk/core/NFd;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/cJ$1;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;)V

    const-string p1, "interstitial_webview_close"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/Qhi/kYc;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/fl$cJ;)Lcom/bytedance/sdk/component/Qhi/kYc;

    return-void
.end method


# virtual methods
.method protected bridge synthetic Qhi(Ljava/lang/Object;Lcom/bytedance/sdk/component/Qhi/ROR;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/cJ;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Qhi/ROR;)V

    return-void
.end method

.method protected Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Qhi/ROR;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/hm;->HzH()Z

    .line 46
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/cJ;->Qhi:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-nez p1, :cond_0

    .line 48
    const-string p1, "DoInterstitialWebViewCloseMethod"

    const-string p2, "invoke error"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/cJ;->ac()V

    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ROR()V

    return-void
.end method
