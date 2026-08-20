.class public final Lorg/apache/oro/util/CacheFIFO2;
.super Lorg/apache/oro/util/GenericCache;


# instance fields
.field private __current:I

.field private __tryAgain:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/oro/util/CacheFIFO2;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/oro/util/GenericCache;-><init>(I)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/oro/util/CacheFIFO2;->__current:I

    iget-object p1, p0, Lorg/apache/oro/util/CacheFIFO2;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/oro/util/CacheFIFO2;->__tryAgain:[Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized addElement(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/util/CacheFIFO2;->_table:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast v0, Lorg/apache/oro/util/GenericCacheEntry;

    iput-object p2, v0, Lorg/apache/oro/util/GenericCacheEntry;->_value:Ljava/lang/Object;

    iput-object p1, v0, Lorg/apache/oro/util/GenericCacheEntry;->_key:Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/oro/util/CacheFIFO2;->__tryAgain:[Z

    iget p2, v0, Lorg/apache/oro/util/GenericCacheEntry;->_index:I

    aput-boolean v1, p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/oro/util/CacheFIFO2;->isFull()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/oro/util/CacheFIFO2;->_numEntries:I

    iget v2, p0, Lorg/apache/oro/util/CacheFIFO2;->_numEntries:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/oro/util/CacheFIFO2;->_numEntries:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/apache/oro/util/CacheFIFO2;->__current:I

    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/oro/util/CacheFIFO2;->__tryAgain:[Z

    aget-boolean v2, v1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_4

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/oro/util/CacheFIFO2;->__current:I

    iget-object v2, p0, Lorg/apache/oro/util/CacheFIFO2;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    iput v3, p0, Lorg/apache/oro/util/CacheFIFO2;->__current:I

    :cond_3
    iget-object v1, p0, Lorg/apache/oro/util/CacheFIFO2;->_table:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/apache/oro/util/CacheFIFO2;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/apache/oro/util/GenericCacheEntry;->_key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lorg/apache/oro/util/CacheFIFO2;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    aget-object v1, v1, v0

    iput-object p2, v1, Lorg/apache/oro/util/GenericCacheEntry;->_value:Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/oro/util/CacheFIFO2;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    aget-object p2, p2, v0

    iput-object p1, p2, Lorg/apache/oro/util/GenericCacheEntry;->_key:Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/oro/util/CacheFIFO2;->_table:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/oro/util/CacheFIFO2;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    aget-object v0, v1, v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    aput-boolean v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/util/CacheFIFO2;->_table:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lorg/apache/oro/util/GenericCacheEntry;

    iget-object v0, p0, Lorg/apache/oro/util/CacheFIFO2;->__tryAgain:[Z

    iget v1, p1, Lorg/apache/oro/util/GenericCacheEntry;->_index:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

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
