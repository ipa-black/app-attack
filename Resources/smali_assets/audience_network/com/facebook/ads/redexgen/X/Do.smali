.class public final Lcom/facebook/ads/redexgen/X/Do;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Dq;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Dq;

.field public final synthetic A01:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dq;Ljava/lang/Throwable;)V
    .locals 0

    .line 28936
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dq;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Do;->A01:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 28937
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Do;
    :try_start_0
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dq;

    const/4 v2, 0x1

    .line 28938
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Do;->A01:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Do;->A01:Ljava/lang/Throwable;

    .line 28939
    invoke-static {v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A0J(Lcom/facebook/ads/redexgen/X/Dq;IILjava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dq;

    const/4 v1, 0x6

    const/4 v0, 0x3

    .line 28940
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A0I(Lcom/facebook/ads/redexgen/X/Dq;II)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dq;

    const/4 v1, 0x7

    const/4 v0, 0x0

    .line 28941
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A0I(Lcom/facebook/ads/redexgen/X/Dq;II)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 28942
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 28943
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Do;
    :cond_3
    :goto_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28944
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
