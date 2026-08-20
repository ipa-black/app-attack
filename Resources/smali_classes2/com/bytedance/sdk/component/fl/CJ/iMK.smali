.class public Lcom/bytedance/sdk/component/fl/CJ/iMK;
.super Lcom/bytedance/sdk/component/fl/CJ/ROR;
.source "FailVisitor.java"


# instance fields
.field private Qhi:Ljava/lang/Throwable;

.field private ac:Ljava/lang/String;

.field private cJ:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/bytedance/sdk/component/fl/CJ/ROR;-><init>()V

    .line 22
    iput p1, p0, Lcom/bytedance/sdk/component/fl/CJ/iMK;->cJ:I

    .line 23
    iput-object p2, p0, Lcom/bytedance/sdk/component/fl/CJ/iMK;->ac:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/bytedance/sdk/component/fl/CJ/iMK;->Qhi:Ljava/lang/Throwable;

    return-void
.end method

.method private cJ(Lcom/bytedance/sdk/component/fl/ac/ac;)V
    .locals 3

    .line 61
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->hm()Lcom/bytedance/sdk/component/fl/HzH;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    iget v0, p0, Lcom/bytedance/sdk/component/fl/CJ/iMK;->cJ:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/fl/CJ/iMK;->ac:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/component/fl/CJ/iMK;->Qhi:Ljava/lang/Throwable;

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/sdk/component/fl/HzH;->Qhi(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "failed"

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;)V
    .locals 4

    .line 30
    new-instance v0, Lcom/bytedance/sdk/component/fl/ac/Qhi;

    iget v1, p0, Lcom/bytedance/sdk/component/fl/CJ/iMK;->cJ:I

    iget-object v2, p0, Lcom/bytedance/sdk/component/fl/CJ/iMK;->ac:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/component/fl/CJ/iMK;->Qhi:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/fl/ac/Qhi;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/ac/Qhi;)V

    .line 32
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->bxS()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->tP()Lcom/bytedance/sdk/component/fl/ac/ROR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/fl/ac/ROR;->ROR()Ljava/util/Map;

    move-result-object v1

    .line 36
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 39
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/fl/CJ/iMK;->cJ(Lcom/bytedance/sdk/component/fl/ac/ac;)V

    return-void

    .line 42
    :cond_0
    monitor-enter v2

    .line 43
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/fl/ac/ac;

    .line 44
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/fl/CJ/iMK;->cJ(Lcom/bytedance/sdk/component/fl/ac/ac;)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 48
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1
.end method
