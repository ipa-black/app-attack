.class Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;
.super Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;
.source "PlayableCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$Qhi;

.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic ac:Ljava/io/File;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$Qhi;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->fl:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->Qhi:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->ac:Ljava/io/File;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->CJ:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$Qhi;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 2

    .line 374
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->fl:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->Qhi:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 375
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->fl:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->fl(Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;

    if-eqz p1, :cond_0

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;->cJ(J)Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;

    .line 379
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->fl()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->fl()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;

    const-string v1, "downloadZip"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;Lcom/bytedance/sdk/component/ROR/cJ;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void

    .line 433
    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result p1

    if-eqz p1, :cond_2

    .line 434
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result p1

    goto :goto_0

    :cond_2
    const/16 p1, -0x2bc

    .line 436
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ILjava/lang/String;)V

    .line 438
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->fl:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->CJ:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$Qhi;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$Qhi;Z)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V
    .locals 1

    .line 444
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->fl:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->Qhi:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 445
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->fl:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->fl(Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 448
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/16 v0, -0x2bc

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ILjava/lang/String;)V

    .line 449
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->fl:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->CJ:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$Qhi;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$Qhi;Z)V

    return-void
.end method
