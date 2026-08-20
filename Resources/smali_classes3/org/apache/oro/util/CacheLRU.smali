.class public final Lorg/apache/oro/util/CacheLRU;
.super Lorg/apache/oro/util/GenericCache;


# instance fields
.field private __head:I

.field private __next:[I

.field private __prev:[I

.field private __tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/oro/util/CacheLRU;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/apache/oro/util/GenericCache;-><init>(I)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/oro/util/CacheLRU;->__head:I

    iput p1, p0, Lorg/apache/oro/util/CacheLRU;->__tail:I

    iget-object v0, p0, Lorg/apache/oro/util/CacheLRU;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/oro/util/CacheLRU;->__next:[I

    iget-object v0, p0, Lorg/apache/oro/util/CacheLRU;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/oro/util/CacheLRU;->__prev:[I

    :goto_0
    iget-object v0, p0, Lorg/apache/oro/util/CacheLRU;->__next:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/oro/util/CacheLRU;->__prev:[I

    const/4 v2, -0x1

    aput v2, v1, p1

    aput v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private __moveToFront(I)V
    .locals 5

    iget v0, p0, Lorg/apache/oro/util/CacheLRU;->__head:I

    if-eq v0, p1, :cond_1

    iget-object v1, p0, Lorg/apache/oro/util/CacheLRU;->__next:[I

    aget v2, v1, p1

    iget-object v3, p0, Lorg/apache/oro/util/CacheLRU;->__prev:[I

    aget v4, v3, p1

    aput v2, v1, v4

    if-ltz v2, :cond_0

    aput v4, v3, v2

    goto :goto_0

    :cond_0
    iput v4, p0, Lorg/apache/oro/util/CacheLRU;->__tail:I

    :goto_0
    const/4 v2, -0x1

    aput v2, v3, p1

    aput v0, v1, p1

    aput p1, v3, v0

    iput p1, p0, Lorg/apache/oro/util/CacheLRU;->__head:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized addElement(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/util/CacheLRU;->_table:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lorg/apache/oro/util/GenericCacheEntry;

    iput-object p2, v0, Lorg/apache/oro/util/GenericCacheEntry;->_value:Ljava/lang/Object;

    iput-object p1, v0, Lorg/apache/oro/util/GenericCacheEntry;->_key:Ljava/lang/Object;

    iget p1, v0, Lorg/apache/oro/util/GenericCacheEntry;->_index:I

    invoke-direct {p0, p1}, Lorg/apache/oro/util/CacheLRU;->__moveToFront(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/oro/util/CacheLRU;->isFull()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/oro/util/CacheLRU;->_numEntries:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/oro/util/CacheLRU;->__prev:[I

    iget v1, p0, Lorg/apache/oro/util/CacheLRU;->_numEntries:I

    iget v2, p0, Lorg/apache/oro/util/CacheLRU;->__tail:I

    aput v2, v0, v1

    iget-object v0, p0, Lorg/apache/oro/util/CacheLRU;->__next:[I

    iget v1, p0, Lorg/apache/oro/util/CacheLRU;->_numEntries:I

    const/4 v2, -0x1

    aput v2, v0, v1

    iget v0, p0, Lorg/apache/oro/util/CacheLRU;->_numEntries:I

    invoke-direct {p0, v0}, Lorg/apache/oro/util/CacheLRU;->__moveToFront(I)V

    :cond_1
    iget v0, p0, Lorg/apache/oro/util/CacheLRU;->_numEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/oro/util/CacheLRU;->_numEntries:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/oro/util/CacheLRU;->_table:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/oro/util/CacheLRU;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    iget v2, p0, Lorg/apache/oro/util/CacheLRU;->__tail:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/apache/oro/util/GenericCacheEntry;->_key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lorg/apache/oro/util/CacheLRU;->__tail:I

    invoke-direct {p0, v0}, Lorg/apache/oro/util/CacheLRU;->__moveToFront(I)V

    :goto_0
    iget-object v0, p0, Lorg/apache/oro/util/CacheLRU;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    iget v1, p0, Lorg/apache/oro/util/CacheLRU;->__head:I

    aget-object v0, v0, v1

    iput-object p2, v0, Lorg/apache/oro/util/GenericCacheEntry;->_value:Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/oro/util/CacheLRU;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    iget v0, p0, Lorg/apache/oro/util/CacheLRU;->__head:I

    aget-object p2, p2, v0

    iput-object p1, p2, Lorg/apache/oro/util/GenericCacheEntry;->_key:Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/oro/util/CacheLRU;->_table:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/apache/oro/util/CacheLRU;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    iget v1, p0, Lorg/apache/oro/util/CacheLRU;->__head:I

    aget-object v0, v0, v1

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

.method public declared-synchronized getElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/util/CacheLRU;->_table:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lorg/apache/oro/util/GenericCacheEntry;

    iget v0, p1, Lorg/apache/oro/util/GenericCacheEntry;->_index:I

    invoke-direct {p0, v0}, Lorg/apache/oro/util/CacheLRU;->__moveToFront(I)V

    iget-object p1, p1, Lorg/apache/oro/util/GenericCacheEntry;->_value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
