.class Lcom/bytedance/sdk/openadsdk/utils/ABk$1;
.super Ljava/lang/Object;
.source "IPMiEventWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/ABk;->Qhi(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:I

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/utils/ABk;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/ABk;I)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/ABk$1;->cJ:Lcom/bytedance/sdk/openadsdk/utils/ABk;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/utils/ABk$1;->Qhi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 109
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ABk;->ac()Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ABk$1;->Qhi:I

    if-lez v0, :cond_3

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 117
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ABk;->CJ()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ABk;->ac()Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PAe:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->CJ()V

    .line 120
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x4

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "click_scence"

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ABk;->ac()Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ABk;->ac()Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v8, 0x1

    const-string v2, "click"

    invoke-static/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/lang/String;ZLjava/util/Map;I)V

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 131
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ABk;->Qhi()V

    :cond_3
    :goto_2
    return-void
.end method
