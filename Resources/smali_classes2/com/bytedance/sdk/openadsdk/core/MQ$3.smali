.class Lcom/bytedance/sdk/openadsdk/core/MQ$3;
.super Ljava/lang/Object;
.source "NetApiImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ABk/fl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/MQ;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/MQ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$3;->cJ:Lcom/bytedance/sdk/openadsdk/core/MQ;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$3;->Qhi:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generatorModel()Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;
    .locals 2

    .line 499
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;-><init>()V

    .line 500
    const-string v1, "get_ad"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->cJ(Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$3;->Qhi:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ac(Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$3;->Qhi:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->CJ(Ljava/lang/String;)V

    return-object v0
.end method
