.class Lcom/bytedance/sdk/openadsdk/activity/ROR$2;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Ljava/lang/String;

.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic ROR:Lcom/bytedance/sdk/openadsdk/activity/ROR;

.field final synthetic Tgh:Ljava/lang/String;

.field final synthetic ac:I

.field final synthetic cJ:Z

.field final synthetic fl:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ROR;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;->ROR:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;->Qhi:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;->cJ:Z

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;->ac:I

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;->CJ:Ljava/lang/String;

    iput p7, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;->fl:I

    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;->Tgh:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;->ROR:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->ac(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;->ROR:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->MQ()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;->Qhi:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;->cJ:Z

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;->ac:I

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;->CJ:Ljava/lang/String;

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;->fl:I

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/activity/ROR$2;->Tgh:Ljava/lang/String;

    invoke-interface/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->executeRewardVideoCallback(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 125
    const-string v1, "rewarded_video"

    const-string v2, "executeRewardVideoCallback execute throw Exception : "

    const-string v3, "Scene"

    invoke-static {v3, v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
