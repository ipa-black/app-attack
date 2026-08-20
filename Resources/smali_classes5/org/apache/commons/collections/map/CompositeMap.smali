.class public Lorg/apache/commons/collections/map/CompositeMap;
.super Ljava/lang/Object;
.source "CompositeMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/CompositeMap$MapMutator;
    }
.end annotation


# instance fields
.field private composite:[Ljava/util/Map;

.field private mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 89
    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2

    const/4 v0, 0x2

    .line 100
    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V
    .locals 2

    const/4 v0, 0x2

    .line 111
    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/collections/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p2, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    const/4 p2, 0x0

    .line 134
    new-array p2, p2, [Ljava/util/Map;

    iput-object p2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    .line 135
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-gez p2, :cond_0

    return-void

    .line 136
    :cond_0
    aget-object v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/CompositeMap;->addComposited(Ljava/util/Map;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addComposited(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/util/Map;

    .line 170
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    aput-object p1, v2, v1

    .line 172
    iput-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 159
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/collections/CollectionUtils;->intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 160
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    if-eqz v2, :cond_1

    .line 165
    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v3, v3, v0

    invoke-interface {v2, p0, v3, p1, v1}, Lorg/apache/commons/collections/map/CompositeMap$MapMutator;->resolveCollision(Lorg/apache/commons/collections/map/CompositeMap;Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_1

    .line 162
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key collision adding Map to CompositeMap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 202
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    .line 224
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 225
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    .line 249
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 250
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3

    .line 275
    new-instance v0, Lorg/apache/commons/collections/set/CompositeSet;

    invoke-direct {v0}, Lorg/apache/commons/collections/set/CompositeSet;-><init>()V

    .line 276
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_0

    return-object v0

    .line 277
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/set/CompositeSet;->addComposited(Ljava/util/Collection;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 490
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 491
    check-cast p1, Ljava/util/Map;

    .line 492
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/CompositeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 307
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 308
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .line 502
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/CompositeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 503
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 3

    .line 321
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-gez v0, :cond_0

    return v1

    .line 322
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3

    .line 345
    new-instance v0, Lorg/apache/commons/collections/set/CompositeSet;

    invoke-direct {v0}, Lorg/apache/commons/collections/set/CompositeSet;-><init>()V

    .line 346
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_0

    return-object v0

    .line 347
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/set/CompositeSet;->addComposited(Ljava/util/Collection;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 378
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    if-eqz v0, :cond_0

    .line 381
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-interface {v0, p0, v1, p1, p2}, Lorg/apache/commons/collections/map/CompositeMap$MapMutator;->put(Lorg/apache/commons/collections/map/CompositeMap;[Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 379
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No mutator specified"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    .line 407
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    if-eqz v0, :cond_0

    .line 410
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections/map/CompositeMap$MapMutator;->putAll(Lorg/apache/commons/collections/map/CompositeMap;[Ljava/util/Map;Ljava/util/Map;)V

    return-void

    .line 408
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No mutator specified"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 439
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 440
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized removeComposited(Ljava/util/Map;)Ljava/util/Map;
    .locals 5

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    .line 192
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 184
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, -0x1

    .line 185
    new-array v3, v3, [Ljava/util/Map;

    .line 186
    iget-object v4, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v4, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    iput-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    monitor-exit p0

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMutator(Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    return-void
.end method

.method public size()I
    .locals 3

    .line 456
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gez v0, :cond_0

    return v1

    .line 457
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .line 476
    new-instance v0, Lorg/apache/commons/collections/collection/CompositeCollection;

    invoke-direct {v0}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>()V

    .line 477
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_0

    return-object v0

    .line 478
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited(Ljava/util/Collection;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
