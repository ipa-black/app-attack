.class public Lcom/bytedance/sdk/component/Sf/Qhi/fl;
.super Ljava/lang/Object;
.source "RecyclePool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bytedance/sdk/component/Sf/Qhi/ac;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private Qhi:I

.field private cJ:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sf/Qhi/fl;->cJ:Ljava/util/concurrent/BlockingQueue;

    .line 18
    iput p1, p0, Lcom/bytedance/sdk/component/Sf/Qhi/fl;->Qhi:I

    return-void
.end method

.method public static Qhi(I)Lcom/bytedance/sdk/component/Sf/Qhi/fl;
    .locals 1

    .line 13
    new-instance v0, Lcom/bytedance/sdk/component/Sf/Qhi/fl;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/Sf/Qhi/fl;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/component/Sf/Qhi/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sf/Qhi/fl;->cJ:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/Sf/Qhi/ac;

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Sf/Qhi/ac;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 48
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Sf/Qhi/ac;->Qhi()V

    .line 49
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sf/Qhi/fl;->cJ:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    .line 50
    iget v2, p0, Lcom/bytedance/sdk/component/Sf/Qhi/fl;->Qhi:I

    if-lt v1, v2, :cond_1

    return v0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sf/Qhi/fl;->cJ:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
