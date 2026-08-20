.class public abstract Lorg/apache/ldap/server/AbstractContextPartition;
.super Ljava/lang/Object;
.source "AbstractContextPartition.java"

# interfaces
.implements Lorg/apache/ldap/server/ContextPartition;


# static fields
.field public static final ALIAS_OID:Ljava/lang/String; = "1.2.6.1.4.1.18060.1.1.1.3.7"

.field public static final EXISTANCE_OID:Ljava/lang/String; = "1.2.6.1.4.1.18060.1.1.1.3.3"

.field public static final HIERARCHY_OID:Ljava/lang/String; = "1.2.6.1.4.1.18060.1.1.1.3.4"

.field public static final NDN_OID:Ljava/lang/String; = "1.2.6.1.4.1.18060.1.1.1.3.1"

.field public static final ONEALIAS_OID:Ljava/lang/String; = "1.2.6.1.4.1.18060.1.1.1.3.5"

.field public static final SUBALIAS_OID:Ljava/lang/String; = "1.2.6.1.4.1.18060.1.1.1.3.6"

.field public static final UPDN_OID:Ljava/lang/String; = "1.2.6.1.4.1.18060.1.1.1.3.2"


# instance fields
.field private db:Lorg/apache/ldap/server/db/Database;

.field private engine:Lorg/apache/ldap/server/db/SearchEngine;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/db/SearchEngine;[Lorg/apache/ldap/common/schema/AttributeType;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    .line 134
    iput-object p2, p0, Lorg/apache/ldap/server/AbstractContextPartition;->engine:Lorg/apache/ldap/server/db/SearchEngine;

    .line 136
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 137
    const-string v0, "1.2.6.1.4.1.18060.1.1.1.3.3"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v1, "1.2.6.1.4.1.18060.1.1.1.3.4"

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v2, "1.2.6.1.4.1.18060.1.1.1.3.2"

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v3, "1.2.6.1.4.1.18060.1.1.1.3.1"

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v4, "1.2.6.1.4.1.18060.1.1.1.3.5"

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v5, "1.2.6.1.4.1.18060.1.1.1.3.6"

    invoke-virtual {p2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v6, "1.2.6.1.4.1.18060.1.1.1.3.7"

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    .line 145
    :goto_0
    array-length v8, p3

    if-lt v7, v8, :cond_0

    return-void

    .line 147
    :cond_0
    aget-object v8, p3, v7

    invoke-interface {v8}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v8

    .line 150
    invoke-virtual {p2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 152
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 154
    aget-object v8, p3, v7

    invoke-interface {p1, v8}, Lorg/apache/ldap/server/db/Database;->setExistanceIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V

    goto :goto_1

    .line 156
    :cond_1
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 158
    aget-object v8, p3, v7

    invoke-interface {p1, v8}, Lorg/apache/ldap/server/db/Database;->setHierarchyIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V

    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 162
    aget-object v8, p3, v7

    invoke-interface {p1, v8}, Lorg/apache/ldap/server/db/Database;->setUpdnIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V

    goto :goto_1

    .line 164
    :cond_3
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 166
    aget-object v8, p3, v7

    invoke-interface {p1, v8}, Lorg/apache/ldap/server/db/Database;->setNdnIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V

    goto :goto_1

    .line 168
    :cond_4
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 170
    aget-object v8, p3, v7

    invoke-interface {p1, v8}, Lorg/apache/ldap/server/db/Database;->setOneAliasIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V

    goto :goto_1

    .line 172
    :cond_5
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 174
    aget-object v8, p3, v7

    invoke-interface {p1, v8}, Lorg/apache/ldap/server/db/Database;->setSubAliasIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V

    goto :goto_1

    .line 176
    :cond_6
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 178
    aget-object v8, p3, v7

    invoke-interface {p1, v8}, Lorg/apache/ldap/server/db/Database;->setAliasIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V

    goto :goto_1

    .line 182
    :cond_7
    new-instance p1, Ljavax/naming/NamingException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "Unidentified system index "

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 182
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_8
    aget-object v8, p3, v7

    invoke-interface {p1, v8}, Lorg/apache/ldap/server/db/Database;->addIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ldap/server/db/Database;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->close()V

    return-void
.end method

.method public delete(Ljavax/naming/Name;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v1, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v1, v0}, Lorg/apache/ldap/server/db/Database;->getChildCount(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 249
    iget-object p1, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {p1, v0}, Lorg/apache/ldap/server/db/Database;->delete(Ljava/math/BigInteger;)V

    return-void

    .line 243
    :cond_0
    new-instance v0, Lorg/apache/ldap/common/exception/LdapContextNotEmptyException;

    .line 244
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "[66] Cannot delete entry "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " it has children!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-direct {v0, v1}, Lorg/apache/ldap/common/exception/LdapContextNotEmptyException;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/exception/LdapContextNotEmptyException;->setRemainingName(Ljavax/naming/Name;)V

    .line 246
    throw v0

    .line 237
    :cond_1
    new-instance v0, Lorg/apache/ldap/common/exception/LdapNameNotFoundException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Could not find entry at \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\' to delete it!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/exception/LdapNameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDb()Lorg/apache/ldap/server/db/Database;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    return-object v0
.end method

.method public getEngine()Lorg/apache/ldap/server/db/SearchEngine;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/apache/ldap/server/AbstractContextPartition;->engine:Lorg/apache/ldap/server/db/SearchEngine;

    return-object v0
.end method

.method public hasEntry(Ljavax/naming/Name;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Database;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public inspect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 401
    new-instance v0, Lorg/apache/ldap/server/db/gui/PartitionViewer;

    iget-object v1, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    iget-object v2, p0, Lorg/apache/ldap/server/AbstractContextPartition;->engine:Lorg/apache/ldap/server/db/SearchEngine;

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/server/db/gui/PartitionViewer;-><init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/db/SearchEngine;)V

    .line 402
    invoke-virtual {v0}, Lorg/apache/ldap/server/db/gui/PartitionViewer;->execute()V

    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->isClosed()Z

    move-result v0

    return v0
.end method

.method public list(Ljavax/naming/Name;)Ljavax/naming/NamingEnumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 286
    new-instance v0, Lorg/apache/ldap/server/db/SearchResultEnumeration;

    sget-object v1, Lorg/apache/ldap/common/util/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 287
    iget-object v2, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/apache/ldap/server/db/Database;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/apache/ldap/server/db/Database;->list(Ljava/math/BigInteger;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    .line 286
    invoke-direct {v0, v1, p1, v2}, Lorg/apache/ldap/server/db/SearchResultEnumeration;-><init>([Ljava/lang/String;Ljavax/naming/NamingEnumeration;Lorg/apache/ldap/server/db/Database;)V

    return-object v0
.end method

.method public lookup(Ljavax/naming/Name;)Ljavax/naming/directory/Attributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Database;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Database;->lookup(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    move-result-object p1

    return-object p1
.end method

.method public lookup(Ljavax/naming/Name;[Ljava/lang/String;)Ljavax/naming/directory/Attributes;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 322
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 327
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/AbstractContextPartition;->lookup(Ljavax/naming/Name;)Ljavax/naming/directory/Attributes;

    move-result-object v0

    .line 328
    new-instance v1, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {v1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    const/4 v2, 0x0

    move p1, v2

    .line 330
    :goto_0
    array-length v3, p2

    if-lt p1, v3, :cond_1

    return-object v1

    .line 332
    :cond_1
    aget-object v3, p2, v2

    invoke-interface {v0, v3}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 336
    invoke-interface {v1, v3}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 324
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/AbstractContextPartition;->lookup(Ljavax/naming/Name;)Ljavax/naming/directory/Attributes;

    move-result-object p1

    return-object p1
.end method

.method public modify(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ldap/server/db/Database;->modify(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V

    return-void
.end method

.method public modify(Ljavax/naming/Name;[Ljavax/naming/directory/ModificationItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/db/Database;->modify(Ljavax/naming/Name;[Ljavax/naming/directory/ModificationItem;)V

    return-void
.end method

.method public modifyRn(Ljavax/naming/Name;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ldap/server/db/Database;->modifyRdn(Ljavax/naming/Name;Ljava/lang/String;Z)V

    return-void
.end method

.method public move(Ljavax/naming/Name;Ljavax/naming/Name;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/db/Database;->move(Ljavax/naming/Name;Ljavax/naming/Name;)V

    return-void
.end method

.method public move(Ljavax/naming/Name;Ljavax/naming/Name;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/ldap/server/db/Database;->move(Ljavax/naming/Name;Ljavax/naming/Name;Ljava/lang/String;Z)V

    return-void
.end method

.method public search(Ljavax/naming/Name;Ljava/util/Map;Lorg/apache/ldap/common/filter/ExprNode;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 299
    invoke-virtual {p4}, Ljavax/naming/directory/SearchControls;->getReturningAttributes()[Ljava/lang/String;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lorg/apache/ldap/server/AbstractContextPartition;->engine:Lorg/apache/ldap/server/db/SearchEngine;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/apache/ldap/server/db/SearchEngine;->search(Ljavax/naming/Name;Ljava/util/Map;Lorg/apache/ldap/common/filter/ExprNode;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    .line 304
    new-instance p2, Lorg/apache/ldap/server/db/SearchResultEnumeration;

    iget-object p3, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    invoke-direct {p2, v0, p1, p3}, Lorg/apache/ldap/server/db/SearchResultEnumeration;-><init>([Ljava/lang/String;Ljavax/naming/NamingEnumeration;Lorg/apache/ldap/server/db/Database;)V

    return-object p2
.end method

.method public sync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lorg/apache/ldap/server/AbstractContextPartition;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->sync()V

    return-void
.end method
