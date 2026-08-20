.class public Lorg/apache/ldap/server/db/DupsEnumeration;
.super Ljava/lang/Object;
.source "DupsEnumeration.java"

# interfaces
.implements Ljavax/naming/NamingEnumeration;


# instance fields
.field private dupIterator:Ljava/util/Iterator;

.field private duplicates:Lorg/apache/ldap/server/db/Tuple;

.field private hasMore:Z

.field private final prefetched:Lorg/apache/ldap/server/db/Tuple;

.field private final returned:Lorg/apache/ldap/server/db/Tuple;

.field private final underlying:Lorg/apache/ldap/server/db/NoDupsEnumeration;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/db/NoDupsEnumeration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->hasMore:Z

    .line 41
    new-instance v0, Lorg/apache/ldap/server/db/Tuple;

    invoke-direct {v0}, Lorg/apache/ldap/server/db/Tuple;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->returned:Lorg/apache/ldap/server/db/Tuple;

    .line 43
    new-instance v0, Lorg/apache/ldap/server/db/Tuple;

    invoke-direct {v0}, Lorg/apache/ldap/server/db/Tuple;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->prefetched:Lorg/apache/ldap/server/db/Tuple;

    .line 75
    iput-object p1, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->underlying:Lorg/apache/ldap/server/db/NoDupsEnumeration;

    .line 78
    invoke-virtual {p1}, Lorg/apache/ldap/server/db/NoDupsEnumeration;->hasMore()Z

    move-result p1

    if-nez p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/DupsEnumeration;->close()V

    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lorg/apache/ldap/server/db/DupsEnumeration;->prefetch()V

    return-void
.end method

.method private prefetch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 184
    :goto_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->dupIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->prefetched:Lorg/apache/ldap/server/db/Tuple;

    iget-object v1, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->duplicates:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {v1}, Lorg/apache/ldap/server/db/Tuple;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/Tuple;->setKey(Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->prefetched:Lorg/apache/ldap/server/db/Tuple;

    iget-object v1, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->dupIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/Tuple;->setValue(Ljava/lang/Object;)V

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->underlying:Lorg/apache/ldap/server/db/NoDupsEnumeration;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/NoDupsEnumeration;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->underlying:Lorg/apache/ldap/server/db/NoDupsEnumeration;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/NoDupsEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/server/db/Tuple;

    iput-object v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->duplicates:Lorg/apache/ldap/server/db/Tuple;

    .line 193
    invoke-virtual {v0}, Lorg/apache/ldap/server/db/Tuple;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 195
    iget-object v1, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->underlying:Lorg/apache/ldap/server/db/NoDupsEnumeration;

    invoke-virtual {v1}, Lorg/apache/ldap/server/db/NoDupsEnumeration;->doAscendingScan()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->dupIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 209
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 211
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 212
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->dupIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/DupsEnumeration;->close()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->hasMore:Z

    .line 155
    iget-object v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->underlying:Lorg/apache/ldap/server/db/NoDupsEnumeration;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/NoDupsEnumeration;->close()V

    return-void
.end method

.method public hasMore()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->hasMore:Z

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->hasMore:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->returned:Lorg/apache/ldap/server/db/Tuple;

    iget-object v1, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->prefetched:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {v1}, Lorg/apache/ldap/server/db/Tuple;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/Tuple;->setKey(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->returned:Lorg/apache/ldap/server/db/Tuple;

    iget-object v1, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->prefetched:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {v1}, Lorg/apache/ldap/server/db/Tuple;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/Tuple;->setValue(Ljava/lang/Object;)V

    .line 103
    invoke-direct {p0}, Lorg/apache/ldap/server/db/DupsEnumeration;->prefetch()V

    .line 105
    iget-object v0, p0, Lorg/apache/ldap/server/db/DupsEnumeration;->returned:Lorg/apache/ldap/server/db/Tuple;

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/DupsEnumeration;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 122
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
