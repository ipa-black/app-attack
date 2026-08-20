.class Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$2;
.super Lcom/bytedance/sdk/component/Sf/ac/cJ;
.source "OverSeaEventUploadImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->Qhi(Ljava/util/List;Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Ljava/util/List;

.field final synthetic Qhi:Ljava/util/List;

.field final synthetic ac:Ljava/util/List;

.field final synthetic cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ;

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;ILjava/lang/String;Ljava/util/List;Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$2;->fl:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$2;->Qhi:Ljava/util/List;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$2;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$2;->ac:Ljava/util/List;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$2;->CJ:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/Sf/ac/cJ;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$2;->fl:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$2;->Qhi:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->cJ(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/cJ/Tgh;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$2;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 127
    new-instance v1, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/cJ;

    iget-boolean v3, v0, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;->Qhi:Z

    iget v4, v0, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;->cJ:I

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;->ac:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;->CJ:Z

    const-string v7, ""

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/cJ;-><init>(ZILjava/lang/String;ZLjava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$2;->ac:Ljava/util/List;

    new-instance v3, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/Qhi;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$2;->CJ:Ljava/util/List;

    invoke-direct {v3, v1, v4}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/Qhi;-><init>(Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/cJ;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$2;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$2;->ac:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ;->Qhi(Ljava/util/List;)V

    .line 132
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;->cJ:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 133
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;Z)V

    return-void

    .line 134
    :cond_0
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;->CJ:Z

    if-eqz v0, :cond_1

    .line 135
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;Z)V

    :cond_1
    return-void
.end method
