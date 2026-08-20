.class public Lcom/bytedance/sdk/component/fl/CJ/zc;
.super Lcom/bytedance/sdk/component/fl/CJ/ROR;
.source "DiskCacheVisitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/component/fl/CJ/ROR;-><init>()V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;Ljava/lang/String;)[B
    .locals 2

    .line 42
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->tP()Lcom/bytedance/sdk/component/fl/ac/ROR;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->MQ()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/fl/ac/ROR;->ac(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/ac;

    .line 44
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->tP()Lcom/bytedance/sdk/component/fl/ac/ROR;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ROR;->ac()Ljava/util/Collection;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 51
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/fl/ac;

    .line 52
    invoke-interface {v1, p2}, Lcom/bytedance/sdk/component/fl/ac;->Qhi(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private cJ(Lcom/bytedance/sdk/component/fl/ac/ac;Ljava/lang/String;)[B
    .locals 1

    .line 61
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->tP()Lcom/bytedance/sdk/component/fl/ac/ROR;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->MQ()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/fl/ac/ROR;->ac(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/ac;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_0
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/fl/ac;->Qhi(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method


# virtual methods
.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "disk_cache"

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;)V
    .locals 4

    .line 19
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->WAv()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->qMt()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->MQ()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/component/fl/cJ;->Tgh()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/fl/CJ/zc;->cJ(Lcom/bytedance/sdk/component/fl/ac/ac;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/fl/CJ/zc;->Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;Ljava/lang/String;)[B

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    .line 30
    new-instance v0, Lcom/bytedance/sdk/component/fl/CJ/HzH;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/fl/CJ/HzH;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/CJ/pA;)Z

    return-void

    .line 34
    :cond_2
    new-instance v2, Lcom/bytedance/sdk/component/fl/CJ/Sf;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/bytedance/sdk/component/fl/CJ/Sf;-><init>([BLcom/bytedance/sdk/component/fl/ROR;)V

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/CJ/pA;)Z

    .line 36
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->tP()Lcom/bytedance/sdk/component/fl/ac/ROR;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->MQ()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/fl/ac/ROR;->cJ(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/MQ;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/fl/MQ;->Qhi(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
