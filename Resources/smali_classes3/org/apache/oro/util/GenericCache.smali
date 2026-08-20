.class public abstract Lorg/apache/oro/util/GenericCache;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/oro/util/Cache;
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_CAPACITY:I = 0x14


# instance fields
.field _cache:[Lorg/apache/oro/util/GenericCacheEntry;

.field _numEntries:I

.field _table:Ljava/util/HashMap;


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/oro/util/GenericCache;->_numEntries:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/oro/util/GenericCache;->_table:Ljava/util/HashMap;

    new-array v0, p1, [Lorg/apache/oro/util/GenericCacheEntry;

    iput-object v0, p0, Lorg/apache/oro/util/GenericCache;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/oro/util/GenericCache;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    new-instance v1, Lorg/apache/oro/util/GenericCacheEntry;

    invoke-direct {v1, p1}, Lorg/apache/oro/util/GenericCacheEntry;-><init>(I)V

    aput-object v1, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public abstract addElement(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public final capacity()I
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/util/GenericCache;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    array-length v0, v0

    return v0
.end method

.method public declared-synchronized getElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/util/GenericCache;->_table:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lorg/apache/oro/util/GenericCacheEntry;

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

.method public final isFull()Z
    .locals 2

    iget v0, p0, Lorg/apache/oro/util/GenericCache;->_numEntries:I

    iget-object v1, p0, Lorg/apache/oro/util/GenericCache;->_cache:[Lorg/apache/oro/util/GenericCacheEntry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final keys()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/util/GenericCache;->_table:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lorg/apache/oro/util/GenericCache;->_numEntries:I

    return v0
.end method
