.class public Ljdbm/helper/SoftCache;
.super Ljava/lang/Object;
.source "SoftCache.java"

# interfaces
.implements Ljdbm/helper/CachePolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdbm/helper/SoftCache$Entry;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOAD_FACTOR:F = 1.5f

.field private static final INITIAL_CAPACITY:I = 0x80


# instance fields
.field private final _cacheMap:Ljava/util/Map;

.field private final _clearQueue:Ljava/lang/ref/ReferenceQueue;

.field private final _internal:Ljdbm/helper/CachePolicy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 99
    new-instance v0, Ljdbm/helper/MRU;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljdbm/helper/MRU;-><init>(I)V

    invoke-direct {p0, v0}, Ljdbm/helper/SoftCache;-><init>(Ljdbm/helper/CachePolicy;)V

    return-void
.end method

.method public constructor <init>(FLjdbm/helper/CachePolicy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljdbm/helper/SoftCache;->_clearQueue:Ljava/lang/ref/ReferenceQueue;

    if-eqz p2, :cond_0

    .line 129
    iput-object p2, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    .line 130
    new-instance p2, Ljava/util/HashMap;

    const/16 v0, 0x80

    invoke-direct {p2, v0, p1}, Ljava/util/HashMap;-><init>(IF)V

    iput-object p2, p0, Ljdbm/helper/SoftCache;->_cacheMap:Ljava/util/Map;

    return-void

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Internal cache cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljdbm/helper/CachePolicy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 110
    invoke-direct {p0, v0, p1}, Ljdbm/helper/SoftCache;-><init>(FLjdbm/helper/CachePolicy;)V

    return-void
.end method

.method private final removeClearedEntries()V
    .locals 2

    .line 253
    :goto_0
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_clearQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    check-cast v0, Ljdbm/helper/SoftCache$Entry;

    invoke-virtual {v0}, Ljdbm/helper/SoftCache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 255
    iget-object v1, p0, Ljdbm/helper/SoftCache;->_cacheMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Ljdbm/helper/CachePolicyListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    invoke-interface {v0, p1}, Ljdbm/helper/CachePolicy;->addListener(Ljdbm/helper/CachePolicyListener;)V

    return-void
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1

    .line 224
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    invoke-interface {v0}, Ljdbm/helper/CachePolicy;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 175
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    invoke-interface {v0, p1}, Ljdbm/helper/CachePolicy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 180
    :cond_0
    invoke-direct {p0}, Ljdbm/helper/SoftCache;->removeClearedEntries()V

    .line 181
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/helper/SoftCache$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 185
    :cond_1
    invoke-virtual {v0}, Ljdbm/helper/SoftCache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 191
    :cond_2
    :try_start_0
    iget-object v2, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    invoke-interface {v2, p1, v0}, Ljdbm/helper/CachePolicy;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljdbm/helper/CacheEvictionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 194
    :catch_0
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljdbm/helper/CacheEvictionException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 148
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    invoke-interface {v0, p1, p2}, Ljdbm/helper/CachePolicy;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    invoke-direct {p0}, Ljdbm/helper/SoftCache;->removeClearedEntries()V

    .line 150
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_cacheMap:Ljava/util/Map;

    new-instance v1, Ljdbm/helper/SoftCache$Entry;

    iget-object v2, p0, Ljdbm/helper/SoftCache;->_clearQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, p2, v2}, Ljdbm/helper/SoftCache$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1

    .line 207
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    invoke-interface {v0, p1}, Ljdbm/helper/CachePolicy;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeAll()V
    .locals 1

    .line 215
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 216
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    invoke-interface {v0}, Ljdbm/helper/CachePolicy;->removeAll()V

    return-void
.end method

.method public removeListener(Ljdbm/helper/CachePolicyListener;)V
    .locals 1

    .line 243
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    invoke-interface {v0, p1}, Ljdbm/helper/CachePolicy;->removeListener(Ljdbm/helper/CachePolicyListener;)V

    return-void
.end method
