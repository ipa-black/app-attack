.class public Lorg/apache/ldap/server/db/DisjunctionEnumeration;
.super Ljava/lang/Object;
.source "DisjunctionEnumeration.java"

# interfaces
.implements Ljavax/naming/NamingEnumeration;


# instance fields
.field private final candidate:Lorg/apache/ldap/server/db/IndexRecord;

.field private final candidates:Ljava/util/Map;

.field private final children:[Ljavax/naming/NamingEnumeration;

.field private hasMore:Z

.field private index:I

.field private final prefetched:Lorg/apache/ldap/server/db/IndexRecord;


# direct methods
.method public constructor <init>([Ljavax/naming/NamingEnumeration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->candidates:Ljava/util/Map;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->index:I

    .line 45
    new-instance v1, Lorg/apache/ldap/server/db/IndexRecord;

    invoke-direct {v1}, Lorg/apache/ldap/server/db/IndexRecord;-><init>()V

    iput-object v1, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->candidate:Lorg/apache/ldap/server/db/IndexRecord;

    .line 47
    new-instance v1, Lorg/apache/ldap/server/db/IndexRecord;

    invoke-direct {v1}, Lorg/apache/ldap/server/db/IndexRecord;-><init>()V

    iput-object v1, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->prefetched:Lorg/apache/ldap/server/db/IndexRecord;

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->hasMore:Z

    .line 68
    iput-object p1, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->children:[Ljavax/naming/NamingEnumeration;

    .line 71
    array-length v2, p1

    if-gtz v2, :cond_0

    .line 73
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->hasMore:Z

    return-void

    .line 78
    :cond_0
    iget v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->index:I

    aget-object v0, p1, v0

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->index:I

    aget-object p1, p1, v0

    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/db/IndexRecord;

    .line 93
    iget-object v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->prefetched:Lorg/apache/ldap/server/db/IndexRecord;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/IndexRecord;->copy(Lorg/apache/ldap/server/db/IndexRecord;)V

    .line 94
    iget-object v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->candidates:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 80
    :cond_1
    iget v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->index:I

    .line 84
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 86
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->close()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->hasMore:Z

    const/4 v1, 0x0

    .line 204
    :goto_0
    iget-object v2, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->children:[Ljavax/naming/NamingEnumeration;

    array-length v3, v2

    if-lt v0, v3, :cond_3

    if-eqz v1, :cond_1

    .line 218
    instance-of v0, v1, Ljavax/naming/NamingException;

    if-nez v0, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    check-cast v1, Ljavax/naming/NamingException;

    throw v1

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    return-void

    .line 224
    :cond_2
    new-instance v0, Ljavax/naming/NamingException;

    invoke-direct {v0}, Ljavax/naming/NamingException;-><init>()V

    .line 225
    invoke-virtual {v0, v1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 226
    throw v0

    .line 210
    :cond_3
    :try_start_0
    aget-object v2, v2, v0

    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hasMore()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->hasMore:Z

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->hasMore()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->candidate:Lorg/apache/ldap/server/db/IndexRecord;

    iget-object v1, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->prefetched:Lorg/apache/ldap/server/db/IndexRecord;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/IndexRecord;->copy(Lorg/apache/ldap/server/db/IndexRecord;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->children:[Ljavax/naming/NamingEnumeration;

    iget v1, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->index:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->children:[Ljavax/naming/NamingEnumeration;

    iget v1, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->index:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/server/db/IndexRecord;

    .line 167
    iget-object v1, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->prefetched:Lorg/apache/ldap/server/db/IndexRecord;

    invoke-virtual {v1, v0}, Lorg/apache/ldap/server/db/IndexRecord;->copy(Lorg/apache/ldap/server/db/IndexRecord;)V

    .line 171
    iget-object v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->candidates:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->prefetched:Lorg/apache/ldap/server/db/IndexRecord;

    invoke-virtual {v1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->candidates:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->candidate:Lorg/apache/ldap/server/db/IndexRecord;

    invoke-virtual {v1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->candidate:Lorg/apache/ldap/server/db/IndexRecord;

    invoke-virtual {v2}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->candidate:Lorg/apache/ldap/server/db/IndexRecord;

    return-object v0

    .line 152
    :cond_1
    iget v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->index:I

    .line 158
    iget-object v1, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->children:[Ljavax/naming/NamingEnumeration;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->close()V

    .line 161
    iget-object v0, p0, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->candidate:Lorg/apache/ldap/server/db/IndexRecord;

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/DisjunctionEnumeration;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 114
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
