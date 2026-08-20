.class Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "PlayableCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Lcom/bytedance/sdk/component/ROR/cJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;

.field final synthetic cJ:Lcom/bytedance/sdk/component/ROR/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->ac:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->cJ:Lcom/bytedance/sdk/component/ROR/cJ;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;

    if-eqz v0, :cond_0

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;->ac(J)Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->cJ:Lcom/bytedance/sdk/component/ROR/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/cJ;->fl()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->ac:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->ac:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/Eh;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 391
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;

    if-eqz v0, :cond_1

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;->CJ(J)Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;

    if-eqz v0, :cond_2

    .line 398
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;->Qhi()J

    move-result-wide v0

    .line 399
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$cJ;->cJ()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 401
    :goto_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->ac:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;JJ)V

    .line 404
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->ac:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->fl:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->ac:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->ac:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->ac(Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 408
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->ac:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->fl:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->ac:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->ac:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 409
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 410
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->ac:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->fl:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->ac:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->ac:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->ac:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->fl:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 413
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->ac:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->fl:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;Ljava/io/File;Z)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 419
    const-string v1, "PlayableCache"

    const-string v2, "unzip error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 420
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->ac:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/16 v2, -0x2c0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 425
    :catchall_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->cJ:Lcom/bytedance/sdk/component/ROR/cJ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ROR/cJ;->fl()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 428
    :catchall_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->ac:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->fl:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2$1;->ac:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$2;->CJ:Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$Qhi;

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$Qhi;Z)V

    return-void
.end method
