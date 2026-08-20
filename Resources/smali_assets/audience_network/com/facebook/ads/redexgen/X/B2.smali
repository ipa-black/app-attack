.class public final Lcom/facebook/ads/redexgen/X/B2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/B3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/B1;
    }
.end annotation


# instance fields
.field public final A00:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/ads/redexgen/X/B1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22710
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22711
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 4

    .line 22712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/B1;

    .line 22713
    .local v1, "handlerAndListener":Lcom/facebook/ads/redexgen/X/B1;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/B1;->A01:Lcom/facebook/ads/redexgen/X/B3;

    .line 22714
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/B3;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/B1;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ax;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Ax;-><init>(Lcom/facebook/ads/redexgen/X/B2;Lcom/facebook/ads/redexgen/X/B3;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22715
    .end local v1    # "handlerAndListener":Lcom/facebook/ads/redexgen/X/B1;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/B3;
    goto :goto_0

    .line 22716
    :cond_0
    return-void
.end method

.method public final A01()V
    .locals 4

    .line 22717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/B1;

    .line 22718
    .local v1, "handlerAndListener":Lcom/facebook/ads/redexgen/X/B1;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/B1;->A01:Lcom/facebook/ads/redexgen/X/B3;

    .line 22719
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/B3;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/B1;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/B0;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/B0;-><init>(Lcom/facebook/ads/redexgen/X/B2;Lcom/facebook/ads/redexgen/X/B3;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22720
    .end local v1    # "handlerAndListener":Lcom/facebook/ads/redexgen/X/B1;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/B3;
    goto :goto_0

    .line 22721
    :cond_0
    return-void
.end method

.method public final A02()V
    .locals 4

    .line 22722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/B1;

    .line 22723
    .local v1, "handlerAndListener":Lcom/facebook/ads/redexgen/X/B1;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/B1;->A01:Lcom/facebook/ads/redexgen/X/B3;

    .line 22724
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/B3;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/B1;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Az;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Az;-><init>(Lcom/facebook/ads/redexgen/X/B2;Lcom/facebook/ads/redexgen/X/B3;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22725
    .end local v1    # "handlerAndListener":Lcom/facebook/ads/redexgen/X/B1;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/B3;
    goto :goto_0

    .line 22726
    :cond_0
    return-void
.end method

.method public final A03(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/B3;)V
    .locals 2

    .line 22727
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 22728
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/B1;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/B1;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/B3;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 22729
    return-void

    .line 22730
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A04(Ljava/lang/Exception;)V
    .locals 4

    .line 22731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/B1;

    .line 22732
    .local v1, "handlerAndListener":Lcom/facebook/ads/redexgen/X/B1;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/B1;->A01:Lcom/facebook/ads/redexgen/X/B3;

    .line 22733
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/B3;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/B1;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ay;

    invoke-direct {v0, p0, v2, p1}, Lcom/facebook/ads/redexgen/X/Ay;-><init>(Lcom/facebook/ads/redexgen/X/B2;Lcom/facebook/ads/redexgen/X/B3;Ljava/lang/Exception;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22734
    .end local v1    # "handlerAndListener":Lcom/facebook/ads/redexgen/X/B1;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/B3;
    goto :goto_0

    .line 22735
    :cond_0
    return-void
.end method
