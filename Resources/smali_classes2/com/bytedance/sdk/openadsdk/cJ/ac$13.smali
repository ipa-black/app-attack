.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$13;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "AdEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/lang/String;ZLjava/util/Map;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Ljava/lang/String;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic ROR:I

.field final synthetic Sf:Ljava/util/Map;

.field final synthetic Tgh:Z

.field final synthetic ac:Ljava/lang/String;

.field final synthetic cJ:J

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/core/model/Gm;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;JLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/Gm;ZILjava/util/Map;)V
    .locals 0

    .line 706
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->cJ:J

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->ac:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->CJ:Ljava/lang/String;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->fl:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    iput-boolean p8, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Tgh:Z

    iput p9, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->ROR:I

    iput-object p10, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Sf:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 709
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-nez v2, :cond_0

    return-void

    .line 712
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->cJ:J

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->ac:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->CJ:Ljava/lang/String;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/ac$13;)V

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;)V

    .line 755
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "click"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->CJ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->NBs()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    .line 758
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi;->Qhi(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->Qhi(Ljava/util/List;ILjava/lang/String;)V

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->CJ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    :cond_2
    return-void
.end method
