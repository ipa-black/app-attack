.class Lcom/bytedance/sdk/openadsdk/activity/cJ$4;
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
.field final synthetic CJ:I

.field final synthetic Qhi:Z

.field final synthetic Tgh:Lcom/bytedance/sdk/openadsdk/activity/cJ;

.field final synthetic ac:Ljava/lang/String;

.field final synthetic cJ:I

.field final synthetic fl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$4;->Tgh:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$4;->Qhi:Z

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$4;->cJ:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$4;->ac:Ljava/lang/String;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$4;->CJ:I

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$4;->fl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 703
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$4;->Tgh:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ac(Lcom/bytedance/sdk/openadsdk/activity/cJ;)Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$4;->Qhi:Z

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$4;->cJ:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$4;->ac:Ljava/lang/String;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$4;->CJ:I

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$4;->fl:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;->Qhi(ZILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method
