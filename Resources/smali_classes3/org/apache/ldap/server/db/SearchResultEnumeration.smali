.class public Lorg/apache/ldap/server/db/SearchResultEnumeration;
.super Ljava/lang/Object;
.source "SearchResultEnumeration.java"

# interfaces
.implements Ljavax/naming/NamingEnumeration;


# instance fields
.field private final attrIds:[Ljava/lang/String;

.field private db:Lorg/apache/ldap/server/db/Database;

.field private final underlying:Ljavax/naming/NamingEnumeration;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljavax/naming/NamingEnumeration;Lorg/apache/ldap/server/db/Database;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p3, p0, Lorg/apache/ldap/server/db/SearchResultEnumeration;->db:Lorg/apache/ldap/server/db/Database;

    .line 62
    iput-object p1, p0, Lorg/apache/ldap/server/db/SearchResultEnumeration;->attrIds:[Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lorg/apache/ldap/server/db/SearchResultEnumeration;->underlying:Ljavax/naming/NamingEnumeration;

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

    .line 72
    iget-object v0, p0, Lorg/apache/ldap/server/db/SearchResultEnumeration;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->close()V

    return-void
.end method

.method public hasMore()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/ldap/server/db/SearchResultEnumeration;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/ldap/server/db/SearchResultEnumeration;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/apache/ldap/server/db/SearchResultEnumeration;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/server/db/IndexRecord;

    .line 92
    iget-object v1, p0, Lorg/apache/ldap/server/db/SearchResultEnumeration;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ldap/server/db/Database;->getEntryUpdn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Lorg/apache/ldap/server/db/IndexRecord;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v2

    if-nez v2, :cond_0

    .line 96
    iget-object v2, p0, Lorg/apache/ldap/server/db/SearchResultEnumeration;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ldap/server/db/Database;->lookup(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/db/IndexRecord;->setAttributes(Ljavax/naming/directory/Attributes;)V

    .line 99
    :cond_0
    iget-object v2, p0, Lorg/apache/ldap/server/db/SearchResultEnumeration;->attrIds:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 101
    invoke-virtual {v0}, Lorg/apache/ldap/server/db/IndexRecord;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v2

    invoke-interface {v2}, Ljavax/naming/directory/Attributes;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/naming/directory/Attributes;

    goto :goto_1

    .line 105
    :cond_1
    new-instance v2, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {v2}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    const/4 v3, 0x0

    .line 107
    :goto_0
    iget-object v4, p0, Lorg/apache/ldap/server/db/SearchResultEnumeration;->attrIds:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 121
    :goto_1
    new-instance v3, Lorg/apache/ldap/server/db/DbSearchResult;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4, v2}, Lorg/apache/ldap/server/db/DbSearchResult;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V

    return-object v3

    .line 110
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ldap/server/db/IndexRecord;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ldap/server/db/SearchResultEnumeration;->attrIds:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 116
    :cond_3
    invoke-virtual {v0}, Lorg/apache/ldap/server/db/IndexRecord;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ldap/server/db/SearchResultEnumeration;->attrIds:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v4

    invoke-interface {v4}, Ljavax/naming/directory/Attribute;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/naming/directory/Attribute;

    .line 117
    invoke-interface {v2, v4}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/ldap/server/db/SearchResultEnumeration;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
