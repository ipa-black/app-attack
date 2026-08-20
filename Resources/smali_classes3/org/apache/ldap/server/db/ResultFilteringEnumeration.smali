.class public Lorg/apache/ldap/server/db/ResultFilteringEnumeration;
.super Ljava/lang/Object;
.source "ResultFilteringEnumeration.java"

# interfaces
.implements Ljavax/naming/NamingEnumeration;


# instance fields
.field private final ctx:Ljavax/naming/ldap/LdapContext;

.field private final decorated:Ljavax/naming/NamingEnumeration;

.field private final filters:Ljava/util/List;

.field private isClosed:Z

.field private prefetched:Ljavax/naming/directory/SearchResult;

.field private final searchControls:Ljavax/naming/directory/SearchControls;


# direct methods
.method public constructor <init>(Ljavax/naming/NamingEnumeration;Ljavax/naming/directory/SearchControls;Ljavax/naming/ldap/LdapContext;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->isClosed:Z

    .line 108
    iput-object p2, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->searchControls:Ljavax/naming/directory/SearchControls;

    .line 109
    iput-object p3, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->ctx:Ljavax/naming/ldap/LdapContext;

    .line 110
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->filters:Ljava/util/List;

    .line 111
    invoke-interface {p2, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    iput-object p1, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->decorated:Ljavax/naming/NamingEnumeration;

    .line 114
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p1

    if-nez p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->close()V

    return-void

    .line 120
    :cond_0
    invoke-direct {p0}, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->prefetch()V

    return-void
.end method

.method public constructor <init>(Ljavax/naming/NamingEnumeration;Ljavax/naming/directory/SearchControls;Ljavax/naming/ldap/LdapContext;Lorg/apache/ldap/server/db/SearchResultFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->isClosed:Z

    .line 76
    iput-object p2, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->searchControls:Ljavax/naming/directory/SearchControls;

    .line 77
    iput-object p3, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->ctx:Ljavax/naming/ldap/LdapContext;

    .line 78
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->filters:Ljava/util/List;

    .line 79
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iput-object p1, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->decorated:Ljavax/naming/NamingEnumeration;

    .line 82
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p1

    if-nez p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->close()V

    return-void

    .line 88
    :cond_0
    invoke-direct {p0}, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->prefetch()V

    return-void
.end method

.method private prefetch()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 240
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->decorated:Ljavax/naming/NamingEnumeration;

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->close()V

    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->decorated:Ljavax/naming/NamingEnumeration;

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/directory/SearchResult;

    .line 246
    iget-object v1, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    iput-object v0, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->prefetched:Ljavax/naming/directory/SearchResult;

    return-void

    .line 251
    :cond_2
    iget-object v1, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 253
    iget-object v1, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->filters:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/db/SearchResultFilter;

    .line 254
    iget-object v2, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->ctx:Ljavax/naming/ldap/LdapContext;

    iget-object v3, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->searchControls:Ljavax/naming/directory/SearchControls;

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/ldap/server/db/SearchResultFilter;->accept(Ljavax/naming/ldap/LdapContext;Ljavax/naming/directory/SearchResult;Ljavax/naming/directory/SearchControls;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iput-object v0, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->prefetched:Ljavax/naming/directory/SearchResult;

    return-void

    .line 265
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_4

    .line 281
    iput-object v0, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->prefetched:Ljavax/naming/directory/SearchResult;

    return-void

    .line 267
    :cond_4
    iget-object v1, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->filters:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/db/SearchResultFilter;

    .line 268
    iget-object v3, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->ctx:Ljavax/naming/ldap/LdapContext;

    iget-object v4, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->searchControls:Ljavax/naming/directory/SearchControls;

    invoke-interface {v1, v3, v0, v4}, Lorg/apache/ldap/server/db/SearchResultFilter;->accept(Ljavax/naming/ldap/LdapContext;Ljavax/naming/directory/SearchResult;Ljavax/naming/directory/SearchControls;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addResultFilter(Lorg/apache/ldap/server/db/SearchResultFilter;)Z
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->isClosed:Z

    .line 175
    iget-object v0, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->decorated:Ljavax/naming/NamingEnumeration;

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->close()V

    return-void
.end method

.method public getFilters()Ljava/util/List;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->filters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasMore()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->isClosed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->isClosed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->prefetched:Ljavax/naming/directory/SearchResult;

    .line 188
    invoke-direct {p0}, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->prefetch()V

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->prefetched:Ljavax/naming/directory/SearchResult;

    .line 210
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->prefetch()V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 214
    invoke-virtual {v1}, Ljavax/naming/NamingException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public removeResultFilter(Lorg/apache/ldap/server/db/SearchResultFilter;)Z
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
