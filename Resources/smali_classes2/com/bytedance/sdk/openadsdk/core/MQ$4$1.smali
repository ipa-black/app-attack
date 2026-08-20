.class Lcom/bytedance/sdk/openadsdk/core/MQ$4$1;
.super Ljava/lang/Object;
.source "NetApiImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ABk/fl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Lcom/bytedance/sdk/component/ROR/cJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/MQ$4;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/MQ$4;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/MQ$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generatorModel()Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;
    .locals 2

    .line 521
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;-><init>()V

    .line 522
    const-string v1, "get_ad"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->cJ(Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/MQ$4;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->fl:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ac(Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/MQ$4;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->fl:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->CJ(Ljava/lang/String;)V

    .line 525
    const-string v1, "6.2.0.6"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Qhi(Ljava/lang/String;)V

    return-object v0
.end method
