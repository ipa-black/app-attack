.class abstract Lorg/apache/commons/collections/FastHashMap$CollectionView;
.super Ljava/lang/Object;
.source "FastHashMap.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CollectionView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;
    }
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/FastHashMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastHashMap;)V
    .locals 0

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    return-void
.end method

.method static synthetic access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;
    .locals 0

    .line 500
    iget-object p0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0

    .line 650
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 654
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 3

    .line 510
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    monitor-enter v0

    .line 512
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 513
    monitor-exit v0

    throw v1

    .line 515
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 516
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    .line 517
    monitor-exit v0

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 588
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 591
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 592
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 593
    monitor-exit v0

    throw p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2

    .line 598
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 601
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 602
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 603
    monitor-exit v0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 630
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 633
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 634
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 635
    monitor-exit v0

    throw p1
.end method

.method protected abstract get(Ljava/util/Map;)Ljava/util/Collection;
.end method

.method public hashCode()I
    .locals 2

    .line 640
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 643
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 644
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 645
    monitor-exit v0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 578
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0

    .line 581
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 582
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 583
    monitor-exit v0

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 658
    new-instance v0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;-><init>(Lorg/apache/commons/collections/FastHashMap$CollectionView;)V

    return-object v0
.end method

.method protected abstract iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 522
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    monitor-enter v0

    .line 524
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 525
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 526
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iput-object v1, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 527
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 528
    monitor-exit v0

    throw p1

    .line 530
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 531
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p1

    .line 532
    monitor-exit v0

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3

    .line 537
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    monitor-enter v0

    .line 539
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 540
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    .line 541
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iput-object v1, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 542
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 543
    monitor-exit v0

    throw p1

    .line 545
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 546
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p1

    .line 547
    monitor-exit v0

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3

    .line 552
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    monitor-enter v0

    .line 554
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 555
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    .line 556
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iput-object v1, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 557
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 558
    monitor-exit v0

    throw p1

    .line 560
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 561
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p1

    .line 562
    monitor-exit v0

    throw p1
.end method

.method public size()I
    .locals 2

    .line 567
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0

    .line 570
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 571
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 572
    monitor-exit v0

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 618
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 621
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 622
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 623
    monitor-exit v0

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 608
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 611
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 612
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 613
    monitor-exit v0

    throw p1
.end method
