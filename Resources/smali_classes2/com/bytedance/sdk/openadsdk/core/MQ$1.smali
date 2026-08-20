.class Lcom/bytedance/sdk/openadsdk/core/MQ$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic ac:I

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/model/qMt;

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/core/MQ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/MQ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$1;->fl:Lcom/bytedance/sdk/openadsdk/core/MQ;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/qMt;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$1;->ac:I

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$1;->CJ:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 325
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$1;->fl:Lcom/bytedance/sdk/openadsdk/core/MQ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/qMt;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$1;->ac:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$1;->CJ:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V

    return-void
.end method
