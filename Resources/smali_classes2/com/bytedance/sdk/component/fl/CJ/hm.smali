.class public Lcom/bytedance/sdk/component/fl/CJ/hm;
.super Lcom/bytedance/sdk/component/fl/CJ/ROR;
.source "CacheKeyVisitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/component/fl/CJ/ROR;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "generate_key"

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;)V
    .locals 2

    .line 18
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->fl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->tP()Lcom/bytedance/sdk/component/fl/ac/ROR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/fl/ac/ROR;->fl()Lcom/bytedance/sdk/component/fl/ABk;

    move-result-object v0

    .line 20
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/fl/ABk;->Qhi(Lcom/bytedance/sdk/component/fl/WAv;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/fl/ac/ac;->cJ(Ljava/lang/String;)V

    .line 21
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/fl/ABk;->cJ(Lcom/bytedance/sdk/component/fl/WAv;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Ljava/lang/String;)V

    .line 25
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/fl/CJ/ABk;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/fl/CJ/ABk;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/CJ/pA;)Z

    return-void
.end method
