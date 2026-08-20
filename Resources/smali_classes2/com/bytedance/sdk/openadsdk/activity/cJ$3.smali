.class Lcom/bytedance/sdk/openadsdk/activity/cJ$3;
.super Ljava/lang/Object;
.source "AdSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;ZILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Ljava/lang/String;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/activity/ROR;

.field final synthetic ROR:Lcom/bytedance/sdk/openadsdk/activity/cJ;

.field final synthetic Tgh:Ljava/lang/String;

.field final synthetic ac:I

.field final synthetic cJ:Z

.field final synthetic fl:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/activity/ROR;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$3;->ROR:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$3;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$3;->cJ:Z

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$3;->ac:I

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$3;->CJ:Ljava/lang/String;

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$3;->fl:I

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$3;->Tgh:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 687
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$3;->ROR:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$3;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$3;->cJ:Z

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$3;->ac:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$3;->CJ:Ljava/lang/String;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$3;->fl:I

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$3;->Tgh:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;ZILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method
