.class Lcom/bytedance/sdk/openadsdk/component/reward/fl$4;
.super Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;
.source "FullScreenVideoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/component/reward/fl;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/fl;Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$4;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$4;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 8

    .line 346
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

    .line 347
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$4;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 348
    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi;->Qhi(ZLjava/lang/Object;)V

    .line 351
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$4;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result p1

    int-to-long v5, p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x1

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/fl;ZLcom/bytedance/sdk/openadsdk/core/model/tP;JLjava/lang/String;)V

    return-void

    .line 353
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$4;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 354
    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi;->Qhi(ZLjava/lang/Object;)V

    .line 357
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$4;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result p1

    int-to-long v5, p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/fl;ZLcom/bytedance/sdk/openadsdk/core/model/tP;JLjava/lang/String;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V
    .locals 8

    .line 363
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$4;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 364
    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi;->Qhi(ZLjava/lang/Object;)V

    .line 368
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$4;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const-wide/16 v5, -0x2

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/fl;ZLcom/bytedance/sdk/openadsdk/core/model/tP;JLjava/lang/String;)V

    return-void
.end method
