.class Lcom/bytedance/sdk/component/Sf/ac/ROR$2;
.super Lcom/bytedance/sdk/component/Sf/ac/cJ;
.source "PagThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Sf/ac/ROR;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/util/concurrent/RunnableFuture;

.field final synthetic cJ:Lcom/bytedance/sdk/component/Sf/ac/ROR;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Sf/ac/ROR;ILjava/lang/String;Ljava/util/concurrent/RunnableFuture;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$2;->cJ:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    iput-object p4, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$2;->Qhi:Ljava/util/concurrent/RunnableFuture;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/Sf/ac/cJ;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$2;->Qhi:Ljava/util/concurrent/RunnableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/RunnableFuture;->run()V

    return-void
.end method
