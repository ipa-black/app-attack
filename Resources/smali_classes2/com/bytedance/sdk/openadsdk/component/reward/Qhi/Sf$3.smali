.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$3;
.super Ljava/lang/Object;
.source "RewardFullPlayableManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/hpZ/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Tgh;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv()Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
