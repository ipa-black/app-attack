.class Lcom/bytedance/sdk/openadsdk/ac/Qhi$1$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "ADNFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ac/Qhi$1;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/ac/Qhi$1;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/ac/Qhi$1;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$1$1;->ac:Lcom/bytedance/sdk/openadsdk/ac/Qhi$1;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$1$1;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 79
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->HzH()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->tP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;

    const-string v1, "Blind mode does not allow requesting ads"

    const/16 v2, -0x12

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;->onError(ILjava/lang/String;)V

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$1$1;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-nez v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;

    const-string v1, "adslot is null"

    const/4 v2, -0x4

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;->onError(ILjava/lang/String;)V

    return-void

    .line 90
    :cond_2
    const-string v0, "com.bytedance.sdk.openadsdk.TTC2Proxy"

    const-string v1, "load"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/utils/Dww;->Qhi(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 93
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$1$1;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/ac/Qhi$1$1;->ac:Lcom/bytedance/sdk/openadsdk/ac/Qhi$1;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/ac/Qhi$1;->Qhi(Lcom/bytedance/sdk/openadsdk/ac/Qhi$1;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 96
    const-string v1, "ADNFactory"

    const-string v2, "open component maybe not exist, please check"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
