.class Lcom/bytedance/sdk/openadsdk/activity/ac$3;
.super Ljava/lang/Object;
.source "EndCardScene.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/tP$cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/ac;->ac()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ac;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;)V
    .locals 6

    .line 503
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v1, 0x0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/ac;->Qhi(ZILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ$cJ;)V
    .locals 7

    .line 511
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/MQ$cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/model/pM;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/pM;->Qhi()I

    move-result v3

    .line 512
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/MQ$cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/model/pM;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/pM;->cJ()Ljava/lang/String;

    move-result-object v4

    .line 514
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-boolean v2, p1, Lcom/bytedance/sdk/openadsdk/core/MQ$cJ;->cJ:Z

    const/4 v5, 0x0

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/ac;->Qhi(ZILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method
