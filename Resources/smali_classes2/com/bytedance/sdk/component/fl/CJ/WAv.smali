.class public Lcom/bytedance/sdk/component/fl/CJ/WAv;
.super Lcom/bytedance/sdk/component/fl/CJ/ROR;
.source "CachePolicyVisitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/bytedance/sdk/component/fl/CJ/ROR;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "cache_policy"

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;)V
    .locals 2

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->MQ()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/cJ;->ac()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    new-instance v0, Lcom/bytedance/sdk/component/fl/CJ/hpZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/fl/CJ/hpZ;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/CJ/pA;)Z

    return-void

    .line 26
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/cJ;->CJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Lcom/bytedance/sdk/component/fl/CJ/zc;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/fl/CJ/zc;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/CJ/pA;)Z

    return-void

    .line 32
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/fl/CJ/HzH;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/fl/CJ/HzH;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/CJ/pA;)Z

    return-void
.end method
