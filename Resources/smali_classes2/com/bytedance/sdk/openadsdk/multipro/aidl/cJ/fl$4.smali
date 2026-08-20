.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$4;
.super Ljava/lang/Object;
.source "RewardVideoListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;->onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:I

.field final synthetic Qhi:Z

.field final synthetic Tgh:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;

.field final synthetic ac:Ljava/lang/String;

.field final synthetic cJ:I

.field final synthetic fl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$4;->Tgh:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$4;->Qhi:Z

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$4;->cJ:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$4;->ac:Ljava/lang/String;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$4;->CJ:I

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$4;->fl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$4;->Tgh:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;)Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$4;->Tgh:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl;)Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$4;->Qhi:Z

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$4;->cJ:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$4;->ac:Ljava/lang/String;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$4;->CJ:I

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/fl$4;->fl:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;->Qhi(ZILjava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
