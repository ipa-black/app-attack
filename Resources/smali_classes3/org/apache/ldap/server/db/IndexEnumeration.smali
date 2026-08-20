.class public Lorg/apache/ldap/server/db/IndexEnumeration;
.super Ljava/lang/Object;
.source "IndexEnumeration.java"

# interfaces
.implements Ljavax/naming/NamingEnumeration;


# instance fields
.field private hasMore:Z

.field private final prefetched:Lorg/apache/ldap/server/db/IndexRecord;

.field private final re:Lorg/apache/regexp/RE;

.field private final returned:Lorg/apache/ldap/server/db/IndexRecord;

.field private final swapKeyVal:Z

.field private final tmp:Lorg/apache/ldap/server/db/IndexRecord;

.field private final underlying:Ljavax/naming/NamingEnumeration;


# direct methods
.method public constructor <init>(Ljavax/naming/NamingEnumeration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ldap/server/db/IndexEnumeration;-><init>(Ljavax/naming/NamingEnumeration;ZLorg/apache/regexp/RE;)V

    return-void
.end method

.method public constructor <init>(Ljavax/naming/NamingEnumeration;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ldap/server/db/IndexEnumeration;-><init>(Ljavax/naming/NamingEnumeration;ZLorg/apache/regexp/RE;)V

    return-void
.end method

.method public constructor <init>(Ljavax/naming/NamingEnumeration;ZLorg/apache/regexp/RE;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/apache/ldap/server/db/IndexRecord;

    invoke-direct {v0}, Lorg/apache/ldap/server/db/IndexRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->tmp:Lorg/apache/ldap/server/db/IndexRecord;

    .line 41
    new-instance v0, Lorg/apache/ldap/server/db/IndexRecord;

    invoke-direct {v0}, Lorg/apache/ldap/server/db/IndexRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->returned:Lorg/apache/ldap/server/db/IndexRecord;

    .line 43
    new-instance v0, Lorg/apache/ldap/server/db/IndexRecord;

    invoke-direct {v0}, Lorg/apache/ldap/server/db/IndexRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->prefetched:Lorg/apache/ldap/server/db/IndexRecord;

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->hasMore:Z

    .line 96
    iput-object p3, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->re:Lorg/apache/regexp/RE;

    .line 97
    iput-object p1, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->underlying:Ljavax/naming/NamingEnumeration;

    .line 98
    iput-boolean p2, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->swapKeyVal:Z

    .line 100
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->hasMore:Z

    return-void

    .line 106
    :cond_0
    invoke-direct {p0}, Lorg/apache/ldap/server/db/IndexEnumeration;->prefetch()V

    return-void
.end method

.method private prefetch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->hasMore:Z

    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/server/db/Tuple;

    .line 187
    iget-boolean v1, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->swapKeyVal:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->tmp:Lorg/apache/ldap/server/db/IndexRecord;

    invoke-virtual {v1, v0, v2}, Lorg/apache/ldap/server/db/IndexRecord;->setSwapped(Lorg/apache/ldap/server/db/Tuple;Ljavax/naming/directory/Attributes;)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v1, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->tmp:Lorg/apache/ldap/server/db/IndexRecord;

    invoke-virtual {v1, v0, v2}, Lorg/apache/ldap/server/db/IndexRecord;->setTuple(Lorg/apache/ldap/server/db/Tuple;Ljavax/naming/directory/Attributes;)V

    .line 199
    :goto_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->re:Lorg/apache/regexp/RE;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->tmp:Lorg/apache/ldap/server/db/IndexRecord;

    invoke-virtual {v1}, Lorg/apache/ldap/server/db/IndexRecord;->getIndexKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/regexp/RE;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :cond_3
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->prefetched:Lorg/apache/ldap/server/db/IndexRecord;

    iget-object v1, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->tmp:Lorg/apache/ldap/server/db/IndexRecord;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/IndexRecord;->copy(Lorg/apache/ldap/server/db/IndexRecord;)V

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

    .line 166
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->hasMore:Z

    .line 167
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->close()V

    return-void
.end method

.method public hasMore()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->hasMore:Z

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->hasMore:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->returned:Lorg/apache/ldap/server/db/IndexRecord;

    iget-object v1, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->prefetched:Lorg/apache/ldap/server/db/IndexRecord;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/IndexRecord;->copy(Lorg/apache/ldap/server/db/IndexRecord;)V

    .line 122
    invoke-direct {p0}, Lorg/apache/ldap/server/db/IndexEnumeration;->prefetch()V

    .line 123
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexEnumeration;->returned:Lorg/apache/ldap/server/db/IndexRecord;

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/IndexEnumeration;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 138
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
