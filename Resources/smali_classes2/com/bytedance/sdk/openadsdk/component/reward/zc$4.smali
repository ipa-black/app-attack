.class Lcom/bytedance/sdk/openadsdk/component/reward/zc$4;
.super Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;
.source "RewardVideoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/zc$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/zc$Qhi;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/component/reward/zc;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/zc;Lcom/bytedance/sdk/openadsdk/component/reward/zc$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/zc$4;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/zc;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/zc$4;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/zc$Qhi;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/zc$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 8

    .line 351
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->fl()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->fl()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 352
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/zc$4;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/zc$Qhi;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 353
    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/zc$Qhi;->Qhi(ZLjava/lang/Object;)V

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/zc$4;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/zc;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/zc$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result p1

    int-to-long v5, p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x1

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/zc;ZLcom/bytedance/sdk/openadsdk/core/model/tP;JLjava/lang/String;)V

    return-void

    .line 358
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/zc$4;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/zc$Qhi;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 359
    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/zc$Qhi;->Qhi(ZLjava/lang/Object;)V

    .line 362
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/zc$4;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/zc;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/zc$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result p1

    int-to-long v5, p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/zc;ZLcom/bytedance/sdk/openadsdk/core/model/tP;JLjava/lang/String;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V
    .locals 8

    .line 368
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/zc$4;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/zc$Qhi;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 369
    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/zc$Qhi;->Qhi(ZLjava/lang/Object;)V

    .line 372
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/zc$4;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/zc;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/zc$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const-wide/16 v5, -0x2

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/zc;ZLcom/bytedance/sdk/openadsdk/core/model/tP;JLjava/lang/String;)V

    return-void
.end method
