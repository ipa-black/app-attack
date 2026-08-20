.class public Lorg/apache/ldap/server/db/IndexAssertionEnumeration;
.super Ljava/lang/Object;
.source "IndexAssertionEnumeration.java"

# interfaces
.implements Ljavax/naming/NamingEnumeration;


# instance fields
.field private final assertion:Lorg/apache/ldap/server/db/IndexAssertion;

.field private final candidate:Lorg/apache/ldap/server/db/IndexRecord;

.field private final candidates:Ljava/util/Map;

.field private final checkDups:Z

.field private hasMore:Z

.field private final prefetched:Lorg/apache/ldap/server/db/IndexRecord;

.field private final underlying:Ljavax/naming/NamingEnumeration;


# direct methods
.method public constructor <init>(Ljavax/naming/NamingEnumeration;Lorg/apache/ldap/server/db/IndexAssertion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/apache/ldap/server/db/IndexRecord;

    invoke-direct {v0}, Lorg/apache/ldap/server/db/IndexRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->prefetched:Lorg/apache/ldap/server/db/IndexRecord;

    .line 40
    new-instance v0, Lorg/apache/ldap/server/db/IndexRecord;

    invoke-direct {v0}, Lorg/apache/ldap/server/db/IndexRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->candidate:Lorg/apache/ldap/server/db/IndexRecord;

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->hasMore:Z

    .line 68
    iput-object p1, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->underlying:Ljavax/naming/NamingEnumeration;

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->candidates:Ljava/util/Map;

    .line 70
    iput-object p2, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->assertion:Lorg/apache/ldap/server/db/IndexAssertion;

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->checkDups:Z

    .line 72
    invoke-direct {p0}, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->prefetch()V

    return-void
.end method

.method public constructor <init>(Ljavax/naming/NamingEnumeration;Lorg/apache/ldap/server/db/IndexAssertion;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/apache/ldap/server/db/IndexRecord;

    invoke-direct {v0}, Lorg/apache/ldap/server/db/IndexRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->prefetched:Lorg/apache/ldap/server/db/IndexRecord;

    .line 40
    new-instance v0, Lorg/apache/ldap/server/db/IndexRecord;

    invoke-direct {v0}, Lorg/apache/ldap/server/db/IndexRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->candidate:Lorg/apache/ldap/server/db/IndexRecord;

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->hasMore:Z

    .line 88
    iput-object p1, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->underlying:Ljavax/naming/NamingEnumeration;

    .line 89
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->candidates:Ljava/util/Map;

    .line 90
    iput-object p2, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->assertion:Lorg/apache/ldap/server/db/IndexAssertion;

    .line 91
    iput-boolean p3, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->checkDups:Z

    .line 92
    invoke-direct {p0}, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->prefetch()V

    return-void
.end method

.method private prefetch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 179
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->close()V

    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/server/db/IndexRecord;

    .line 184
    iget-object v1, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->assertion:Lorg/apache/ldap/server/db/IndexAssertion;

    invoke-interface {v1, v0}, Lorg/apache/ldap/server/db/IndexAssertion;->assertCandidate(Lorg/apache/ldap/server/db/IndexRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-boolean v1, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->checkDups:Z

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->candidates:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 206
    :cond_2
    iget-object v1, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->prefetched:Lorg/apache/ldap/server/db/IndexRecord;

    invoke-virtual {v1, v0}, Lorg/apache/ldap/server/db/IndexRecord;->copy(Lorg/apache/ldap/server/db/IndexRecord;)V

    .line 207
    iget-object v1, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->candidates:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 212
    :cond_3
    iget-object v1, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->prefetched:Lorg/apache/ldap/server/db/IndexRecord;

    invoke-virtual {v1, v0}, Lorg/apache/ldap/server/db/IndexRecord;->copy(Lorg/apache/ldap/server/db/IndexRecord;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->hasMore:Z

    .line 157
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->close()V

    return-void
.end method

.method public hasMore()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->hasMore:Z

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->hasMore:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->candidate:Lorg/apache/ldap/server/db/IndexRecord;

    iget-object v1, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->prefetched:Lorg/apache/ldap/server/db/IndexRecord;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/IndexRecord;->copy(Lorg/apache/ldap/server/db/IndexRecord;)V

    .line 137
    invoke-direct {p0}, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->prefetch()V

    .line 138
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->candidate:Lorg/apache/ldap/server/db/IndexRecord;

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 112
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
