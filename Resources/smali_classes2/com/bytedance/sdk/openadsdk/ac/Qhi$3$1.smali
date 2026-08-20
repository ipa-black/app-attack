.class Lcom/bytedance/sdk/openadsdk/ac/Qhi$3$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "ADNFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ac/Qhi$3;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeRequest;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/ac/Qhi$3;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/ac/Qhi$3;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$3$1;->ac:Lcom/bytedance/sdk/openadsdk/ac/Qhi$3;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$3$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$3$1;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 178
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->HzH()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->tP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$3$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh;

    const/16 v1, -0x12

    const-string v2, "Blind mode does not allow requesting ads"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh;->onError(ILjava/lang/String;)V

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$3$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$3$1;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$3$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh;

    const/4 v1, -0x4

    const-string v2, "adslot is null"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh;->onError(ILjava/lang/String;)V

    return-void

    .line 190
    :cond_2
    :try_start_0
    const-string v0, "com.bytedance.sdk.openadsdk.TTC5Proxy"

    const-string v1, "loadFeed"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/utils/Dww;->Qhi(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 193
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$3$1;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$3$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Tgh;

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method
