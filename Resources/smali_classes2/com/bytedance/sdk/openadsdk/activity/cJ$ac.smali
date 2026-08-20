.class Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;
.super Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;
.source "AdSceneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/cJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ac"
.end annotation


# instance fields
.field private ROR:I

.field private Sf:Z

.field private final Tgh:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;)V
    .locals 0

    .line 886
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;)V

    .line 887
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Tgh:I

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->Tgh:I

    return-void
.end method


# virtual methods
.method protected Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)I
    .locals 1

    .line 892
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Gm(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public Qhi(I)V
    .locals 4

    .line 897
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->fl:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 898
    :goto_0
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->CJ:I

    .line 899
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Qhi(I)V

    const/high16 p1, 0x42c80000    # 100.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    .line 901
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->fl:I

    if-ne v0, v1, :cond_1

    const/4 p1, 0x3

    .line 903
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->ROR:I

    return-void

    .line 906
    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->Tgh:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    sub-float/2addr v3, v0

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->ac:F

    mul-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->ROR:I

    return-void

    .line 909
    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->ac:F

    int-to-float v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 910
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->Tgh:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    sub-float/2addr v3, v0

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->CJ:I

    int-to-float p1, p1

    mul-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->ROR:I

    :cond_3
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 923
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->Sf:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->CJ:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->ROR:I

    if-gt v0, v2, :cond_0

    .line 924
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->Sf:Z

    .line 925
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->fl(Lcom/bytedance/sdk/openadsdk/activity/cJ;)Lcom/bytedance/sdk/openadsdk/activity/ROR;

    move-result-object v0

    .line 926
    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    if-eqz v2, :cond_0

    .line 927
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->EBS()V

    .line 930
    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->handleMessage(Landroid/os/Message;)Z

    return v1
.end method
