.class public Lcom/bytedance/sdk/component/fl/CJ/HzH;
.super Lcom/bytedance/sdk/component/fl/CJ/ROR;
.source "NetVisitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/component/fl/CJ/ROR;-><init>()V

    return-void
.end method

.method private Qhi(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/fl/ac/ac;)V
    .locals 1

    .line 82
    new-instance v0, Lcom/bytedance/sdk/component/fl/CJ/iMK;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/fl/CJ/iMK;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p4, v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/CJ/pA;)Z

    return-void
.end method


# virtual methods
.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "net_request"

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;)V
    .locals 9

    .line 22
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->tP()Lcom/bytedance/sdk/component/fl/ac/ROR;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/fl/ac/ROR;->CJ()Lcom/bytedance/sdk/component/fl/fl;

    move-result-object v0

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Z)V

    .line 28
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/component/fl/cJ/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->ABk()Z

    move-result v4

    .line 30
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->iMK()Z

    move-result v5

    .line 31
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->EBS()Lcom/bytedance/sdk/component/fl/pA;

    move-result-object v6

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/bytedance/sdk/component/fl/cJ/ac;-><init>(Ljava/lang/String;ZZLcom/bytedance/sdk/component/fl/pA;)V

    .line 28
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/fl/fl;->Qhi(Lcom/bytedance/sdk/component/fl/Tgh;)Lcom/bytedance/sdk/component/fl/ROR;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/ROR;->cJ()I

    move-result v1

    .line 35
    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/ROR;->Qhi()Lcom/bytedance/sdk/component/fl/Sf;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/Sf;)V

    .line 37
    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/ROR;->cJ()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    .line 39
    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/ROR;->ac()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [B

    .line 41
    new-instance v1, Lcom/bytedance/sdk/component/fl/CJ/Sf;

    invoke-direct {v1, v6, v0}, Lcom/bytedance/sdk/component/fl/CJ/Sf;-><init>([BLcom/bytedance/sdk/component/fl/ROR;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/CJ/pA;)Z

    .line 44
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->WAv()Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->MQ()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object v2

    .line 46
    invoke-interface {v2}, Lcom/bytedance/sdk/component/fl/cJ;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->MQ()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/fl/ac/ROR;->cJ(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/MQ;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Lcom/bytedance/sdk/component/fl/MQ;->Qhi(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    :cond_0
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/fl/ac/ROR;->Tgh()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/bytedance/sdk/component/fl/CJ/HzH$1;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/fl/CJ/HzH$1;-><init>(Lcom/bytedance/sdk/component/fl/CJ/HzH;Lcom/bytedance/sdk/component/fl/cJ;Lcom/bytedance/sdk/component/fl/ac/ROR;Lcom/bytedance/sdk/component/fl/ac/ac;Ljava/lang/String;[B)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 62
    :cond_1
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/fl/ac/ROR;->Sf()Lcom/bytedance/sdk/component/fl/kYc;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/ROR;->ac()Ljava/lang/Object;

    move-result-object v2

    .line 67
    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 68
    check-cast v2, Ljava/lang/Throwable;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 71
    :goto_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/ROR;->CJ()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/bytedance/sdk/component/fl/CJ/HzH;->Qhi(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/fl/ac/ac;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/16 v1, 0x3ec

    .line 75
    const-string v2, "net request failed!"

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/bytedance/sdk/component/fl/CJ/HzH;->Qhi(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/fl/ac/ac;)V

    return-void
.end method
