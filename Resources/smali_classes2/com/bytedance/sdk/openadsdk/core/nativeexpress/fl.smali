.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;
.source "DynamicViewRender.java"


# instance fields
.field private final CJ:Ljava/lang/Runnable;

.field private final Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

.field private final ac:Lcom/bytedance/sdk/component/Sf/hm;

.field private cJ:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/CJ/WAv;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/dynamic/fl/Qhi;)V
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/CJ/WAv;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/dynamic/fl/Qhi;)V

    .line 18
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl$1;

    const-string p2, "dynamic_render_template"

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;->ac:Lcom/bytedance/sdk/component/Sf/hm;

    .line 26
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;->CJ:Ljava/lang/Runnable;

    .line 37
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V

    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;)Lcom/bytedance/sdk/component/adexpress/cJ/Sf;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;)Ljava/lang/Runnable;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;->CJ:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;->ac:Lcom/bytedance/sdk/component/Sf/hm;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method public cJ()V
    .locals 2

    .line 49
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;->cJ()V

    .line 50
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->ac()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;->CJ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
