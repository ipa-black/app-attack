.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$5;
.super Ljava/lang/Object;
.source "RewardFullWebViewManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/cJ/Gm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$5;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(I)V
    .locals 8

    .line 948
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$5;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hm(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$5;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)I

    move-result v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$5;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Gm(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)I

    move-result v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$5;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    .line 950
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->zc(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)I

    move-result v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$5;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ABk(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)I

    move-result v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$5;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->zc(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)I

    move-result v4

    sub-int v4, v0, v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$5;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    .line 951
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v5

    const-string v6, "landingpage_endcard"

    move v7, p1

    .line 949
    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi;->Qhi(IIIILcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
