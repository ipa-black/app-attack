.class Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm$1;
.super Ljava/lang/Object;
.source "RewardFullTypeInteraction.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->CJ()Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Z)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;)Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;)Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->setIsMute(Z)V

    :cond_0
    return-void
.end method
