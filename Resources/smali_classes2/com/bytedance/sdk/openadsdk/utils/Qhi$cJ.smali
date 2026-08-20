.class Lcom/bytedance/sdk/openadsdk/utils/Qhi$cJ;
.super Ljava/lang/Object;
.source "ActivityLifecycleListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "cJ"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/Qhi$1;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Qhi$cJ;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 169
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->cJ()V

    .line 171
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->HUk()Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->Qhi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/hpZ;->Sf(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->Qhi(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
