.class public Lcom/bytedance/sdk/component/fl/CJ/hpZ;
.super Lcom/bytedance/sdk/component/fl/CJ/ROR;
.source "MemoryCacheVisitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/bytedance/sdk/component/fl/CJ/ROR;-><init>()V

    return-void
.end method

.method private ac(Lcom/bytedance/sdk/component/fl/ac/ac;)Landroid/graphics/Bitmap;
    .locals 2

    .line 78
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->tP()Lcom/bytedance/sdk/component/fl/ac/ROR;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->MQ()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/fl/ac/ROR;->Qhi(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/tP;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->fl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/fl/tP;->Qhi(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private cJ(Lcom/bytedance/sdk/component/fl/ac/ac;)Landroid/graphics/Bitmap;
    .locals 3

    .line 53
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->tP()Lcom/bytedance/sdk/component/fl/ac/ROR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/fl/ac/ROR;->Qhi()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 60
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/fl/tP;

    .line 61
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->fl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/fl/tP;->Qhi(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "memory_cache"

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;)V
    .locals 4

    .line 22
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->zc()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_2

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->qMt()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->MQ()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/cJ;->Tgh()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 29
    :cond_2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/fl/CJ/hpZ;->ac(Lcom/bytedance/sdk/component/fl/ac/ac;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 27
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/fl/CJ/hpZ;->cJ(Lcom/bytedance/sdk/component/fl/ac/ac;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_4

    .line 35
    new-instance v0, Lcom/bytedance/sdk/component/fl/CJ/kYc;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/fl/CJ/kYc;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/CJ/pA;)Z

    return-void

    .line 37
    :cond_4
    new-instance v1, Lcom/bytedance/sdk/component/fl/CJ/tP;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/fl/CJ/tP;-><init>(Ljava/lang/Object;Lcom/bytedance/sdk/component/fl/ROR;Z)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/CJ/pA;)Z

    return-void
.end method
