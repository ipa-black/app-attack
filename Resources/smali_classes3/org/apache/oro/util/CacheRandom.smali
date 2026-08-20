.class public final Lorg/apache/oro/util/CacheRandom;
.super Lorg/apache/oro/util/GenericCache;


# instance fields
.field private __random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/oro/util/CacheRandom;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/oro/util/GenericCache;-><init>(I)V

    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    iput-object p1, p0, Lorg/apache/oro/util/CacheRandom;->__random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public final declared-synchronized addElement(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/util/CacheRandom;->_table:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lorg/apache/oro/util/GenericCacheEntry;

    iput-object p2, v0, Lorg/apache/oro/util/GenericCacheEntry;->_value:Ljava/lang/Object;

    iput-object p1, v0, Lorg/apache/oro/util/GenericCacheEntry;->_key:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/oro/util/CacheRandom;->isFull()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/oro/util/CacheRandom;->_numEntries:I

    iget v1, p0, Lorg/apache/oro/util/CacheRandom;->_numEntries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/oro/util/CacheRandom;->_numEntries:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/oro/util/CacheRandom;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    array-length v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/apache/oro/util/CacheRandom;->__random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/apache/oro/util/CacheRandom;->_table:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/apache/oro/util/CacheRandom;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/apache/oro/util/GenericCacheEntry;->_key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lorg/apache/oro/util/CacheRandom;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    aget-object v1, v1, v0

    iput-object p2, v1, Lorg/apache/oro/util/GenericCacheEntry;->_value:Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/oro/util/CacheRandom;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    aget-object p2, p2, v0

    iput-object p1, p2, Lorg/apache/oro/util/GenericCacheEntry;->_key:Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/oro/util/CacheRandom;->_table:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/oro/util/CacheRandom;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    aget-object v0, v1, v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
