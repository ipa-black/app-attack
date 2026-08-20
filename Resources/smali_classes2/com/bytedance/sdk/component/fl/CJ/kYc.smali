.class public Lcom/bytedance/sdk/component/fl/CJ/kYc;
.super Lcom/bytedance/sdk/component/fl/CJ/ROR;
.source "RawCacheVisitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/component/fl/CJ/ROR;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "raw_cache"

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;)V
    .locals 3

    .line 16
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->tP()Lcom/bytedance/sdk/component/fl/ac/ROR;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->MQ()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/fl/ac/ROR;->cJ(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/MQ;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->WAv()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/fl/MQ;->Qhi(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/bytedance/sdk/component/fl/CJ/zc;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/fl/CJ/zc;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/CJ/pA;)Z

    return-void

    .line 25
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/component/fl/CJ/Sf;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/fl/CJ/Sf;-><init>([BLcom/bytedance/sdk/component/fl/ROR;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/CJ/pA;)Z

    return-void
.end method
