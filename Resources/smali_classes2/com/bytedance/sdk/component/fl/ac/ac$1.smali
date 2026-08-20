.class Lcom/bytedance/sdk/component/fl/ac/ac$1;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/fl/ac/ac;->Dww()Lcom/bytedance/sdk/component/fl/WAv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/fl/ac/ac;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 356
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->cJ(Lcom/bytedance/sdk/component/fl/ac/ac;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/fl/CJ/pA;

    if-eqz v0, :cond_2

    .line 363
    iget-object v1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/component/fl/ac/ac;->ac(Lcom/bytedance/sdk/component/fl/ac/ac;)Lcom/bytedance/sdk/component/fl/qMt;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/component/fl/ac/ac;->ac(Lcom/bytedance/sdk/component/fl/ac/ac;)Lcom/bytedance/sdk/component/fl/qMt;

    move-result-object v1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/CJ/pA;->Qhi()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/fl/ac/ac$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/component/fl/qMt;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/fl/WAv;)V

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/fl/CJ/pA;->Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;)V

    .line 369
    iget-object v1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/component/fl/ac/ac;->ac(Lcom/bytedance/sdk/component/fl/ac/ac;)Lcom/bytedance/sdk/component/fl/qMt;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/component/fl/ac/ac;->ac(Lcom/bytedance/sdk/component/fl/ac/ac;)Lcom/bytedance/sdk/component/fl/qMt;

    move-result-object v1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/CJ/pA;->Qhi()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/fl/ac/ac$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/component/fl/qMt;->cJ(Ljava/lang/String;Lcom/bytedance/sdk/component/fl/WAv;)V

    goto :goto_0

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;

    const-string v1, "canceled"

    const/4 v2, 0x0

    const/16 v3, 0x3eb

    invoke-static {v0, v3, v1, v2}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 381
    iget-object v1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;

    const/16 v2, 0x7d0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 383
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->ac(Lcom/bytedance/sdk/component/fl/ac/ac;)Lcom/bytedance/sdk/component/fl/qMt;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 384
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->ac(Lcom/bytedance/sdk/component/fl/ac/ac;)Lcom/bytedance/sdk/component/fl/qMt;

    move-result-object v0

    const-string v1, "exception"

    iget-object v2, p0, Lcom/bytedance/sdk/component/fl/ac/ac$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/ac;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/fl/qMt;->cJ(Ljava/lang/String;Lcom/bytedance/sdk/component/fl/WAv;)V

    :cond_4
    return-void
.end method
