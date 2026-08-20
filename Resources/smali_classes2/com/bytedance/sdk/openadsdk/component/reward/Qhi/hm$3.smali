.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$3;
.super Ljava/lang/Object;
.source "RewardFullReportManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->ac()Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoProgress()J
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ROR()J

    move-result-wide v0

    return-wide v0
.end method
