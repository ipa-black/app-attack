.class Lcom/bytedance/sdk/openadsdk/activity/cJ$Qhi;
.super Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;
.source "AdSceneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/cJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Qhi"
.end annotation


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;)V
    .locals 0

    .line 938
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;)V

    return-void
.end method


# virtual methods
.method protected Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)I
    .locals 1

    .line 943
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->tP(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
