.class public Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;
.super Ljava/lang/Object;
.source "JdbmDatabase.java"

# interfaces
.implements Lorg/apache/ldap/server/db/Database;


# instance fields
.field private aliasIdx:Lorg/apache/ldap/server/db/Index;

.field private closed:Z

.field private existanceIdx:Lorg/apache/ldap/server/db/Index;

.field private hierarchyIdx:Lorg/apache/ldap/server/db/Index;

.field private final indices:Ljava/util/Map;

.field private final master:Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;

.field private ndnIdx:Lorg/apache/ldap/server/db/Index;

.field private final normSuffix:Ljavax/naming/Name;

.field private oneAliasIdx:Lorg/apache/ldap/server/db/Index;

.field private final recMan:Ljdbm/RecordManager;

.field private subAliasIdx:Lorg/apache/ldap/server/db/Index;

.field private final sysIndices:Ljava/util/Map;

.field private final upSuffix:Ljavax/naming/Name;

.field private updnIdx:Lorg/apache/ldap/server/db/Index;

.field private final wkdir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/naming/Name;Ljavax/naming/Name;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->closed:Z

    .line 109
    iput-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->upSuffix:Ljavax/naming/Name;

    .line 110
    iput-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->normSuffix:Ljavax/naming/Name;

    .line 111
    iput-object p3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->wkdir:Ljava/lang/String;

    .line 115
    :try_start_0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "master"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    new-instance p2, Ljdbm/recman/BaseRecordManager;

    invoke-direct {p2, p1}, Ljdbm/recman/BaseRecordManager;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Ljdbm/recman/BaseRecordManager;->disableTransactions()V

    .line 118
    new-instance p1, Ljdbm/recman/CacheRecordManager;

    new-instance p3, Ljdbm/helper/MRU;

    const/16 v0, 0x3e8

    invoke-direct {p3, v0}, Ljdbm/helper/MRU;-><init>(I)V

    invoke-direct {p1, p2, p3}, Ljdbm/recman/CacheRecordManager;-><init>(Ljdbm/RecordManager;Ljdbm/helper/CachePolicy;)V

    iput-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->recMan:Ljdbm/RecordManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    new-instance p2, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;

    invoke-direct {p2, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;-><init>(Ljdbm/RecordManager;)V

    iput-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->master:Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;

    .line 129
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->indices:Ljava/util/Map;

    .line 130
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->sysIndices:Ljava/util/Map;

    return-void

    :catch_0
    move-exception p1

    .line 122
    new-instance p2, Ljavax/naming/NamingException;

    .line 123
    const-string p3, "Could not initialize RecordManager"

    .line 122
    invoke-direct {p2, p3}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2, p1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 125
    throw p2
.end method

.method private add(Ljava/math/BigInteger;Ljavax/naming/directory/Attributes;Ljavax/naming/directory/Attribute;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1106
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 1109
    invoke-interface {v0, p3, p1}, Lorg/apache/ldap/server/db/Index;->add(Ljavax/naming/directory/Attribute;Ljava/math/BigInteger;)V

    .line 1112
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->existanceIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/apache/ldap/server/db/Index;->hasValue(Ljava/lang/Object;Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1114
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/ldap/server/db/Index;->add(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 1118
    :cond_0
    invoke-interface {p2, p3}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 1120
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object p2

    const-string v0, "aliasedObjectName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1122
    iget-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {p2, p1}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1123
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p2}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 1124
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1123
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->addAliasIndices(Ljava/math/BigInteger;Ljavax/naming/Name;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private addAliasIndices(Ljava/math/BigInteger;Ljavax/naming/Name;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->oneAliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Index;->getAttribute()Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ldap/common/schema/AttributeType;->getEquality()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ldap/common/schema/MatchingRule;->getNormalizer()Lorg/apache/ldap/common/schema/Normalizer;

    move-result-object v0

    .line 543
    new-instance v1, Lorg/apache/ldap/common/name/LdapName;

    invoke-interface {v0, p3}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 555
    invoke-interface {p2, v1}, Ljavax/naming/Name;->startsWith(Ljavax/naming/Name;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 559
    new-instance p1, Ljavax/naming/NamingException;

    const-string p2, "[36] aliasDereferencingProblem - attempt to create alias to itself."

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 563
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[36] aliasDereferencingProblem - attempt to create alias with cycle to relative "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, " not allowed from descendent alias "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    .line 566
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 563
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 577
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->upSuffix:Ljavax/naming/Name;

    invoke-interface {v1, v0}, Ljavax/naming/Name;->startsWith(Ljavax/naming/Name;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 587
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ldap/server/db/Index;->forwardLookup(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 614
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->aliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v2, v0}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    .line 623
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->aliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v2, p3, p1}, Lorg/apache/ldap/server/db/Index;->add(Ljava/lang/Object;Ljava/math/BigInteger;)V

    const/4 p1, 0x1

    .line 632
    invoke-interface {p2, p1}, Ljavax/naming/Name;->getSuffix(I)Ljavax/naming/Name;

    move-result-object p3

    .line 633
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    .line 635
    invoke-static {v1, p2}, Lorg/apache/ldap/common/util/NamespaceTools;->isSibling(Ljavax/naming/Name;Ljavax/naming/Name;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 637
    iget-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->oneAliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {p2, v2, v0}, Lorg/apache/ldap/server/db/Index;->add(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 650
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->upSuffix:Ljavax/naming/Name;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    if-nez v2, :cond_3

    goto :goto_1

    .line 652
    :cond_3
    invoke-static {p3, v1}, Lorg/apache/ldap/common/util/NamespaceTools;->isDescendant(Ljavax/naming/Name;Ljavax/naming/Name;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 654
    iget-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->subAliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {p2, v2, v0}, Lorg/apache/ldap/server/db/Index;->add(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 657
    :cond_4
    invoke-interface {p3, p1}, Ljavax/naming/Name;->getSuffix(I)Ljavax/naming/Name;

    move-result-object p3

    .line 658
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    :cond_5
    :goto_1
    return-void

    .line 617
    :cond_6
    new-instance p1, Ljavax/naming/NamingException;

    const-string p2, "[36] aliasDereferencingProblem - the alias points to another alias.  Alias chaining is not supported by this backend."

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 598
    :cond_7
    new-instance p1, Ljavax/naming/NamingException;

    const-string p2, "[33] aliasProblem - the alias when dereferenced would not name a known object the aliasedObjectName must be set to a valid existing entry."

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 580
    :cond_8
    new-instance p1, Ljavax/naming/NamingException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "[36] aliasDereferencingProblem - the alias points to an entry outside of the "

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 581
    iget-object p3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->upSuffix:Ljavax/naming/Name;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 582
    const-string p3, " namingContext to an object whose existance cannot be determined."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 580
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private dropAliasIndices(Ljava/math/BigInteger;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->aliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 490
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 491
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryDn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    .line 492
    new-instance v2, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v2, v1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lorg/apache/ldap/common/name/LdapName;->getSuffix(I)Ljavax/naming/Name;

    move-result-object v2

    .line 493
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    .line 506
    iget-object v4, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->oneAliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v4, v3, v0}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 507
    iget-object v4, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->subAliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v4, v3, v0}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 509
    :goto_0
    iget-object v3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->upSuffix:Ljavax/naming/Name;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->aliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/math/BigInteger;)V

    return-void

    .line 511
    :cond_0
    invoke-interface {v2, v1}, Ljavax/naming/Name;->getSuffix(I)Ljavax/naming/Name;

    move-result-object v2

    .line 512
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    .line 514
    iget-object v4, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->subAliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v4, v3, v0}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/lang/Object;Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method private dropAliasIndices(Ljava/math/BigInteger;Ljavax/naming/Name;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1627
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->aliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1628
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1629
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryDn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 1635
    invoke-interface {p2, v1}, Ljavax/naming/Name;->getSuffix(I)Ljavax/naming/Name;

    move-result-object v2

    .line 1636
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1650
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1652
    iget-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->oneAliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {p1, v3, v0}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 1655
    :cond_0
    iget-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->subAliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {p1, v3, v0}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 1657
    :goto_0
    iget-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->upSuffix:Ljavax/naming/Name;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1659
    :cond_1
    invoke-interface {v2, v1}, Ljavax/naming/Name;->getSuffix(I)Ljavax/naming/Name;

    move-result-object v2

    .line 1660
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p1

    .line 1662
    iget-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->subAliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {p2, p1, v0}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/lang/Object;Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method private dropMovedAliasIndices(Ljavax/naming/Name;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1584
    new-instance v0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase$1;-><init>(Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;Ljavax/naming/Name;)V

    .line 1599
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    .line 1600
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->aliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v2, v1}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1602
    invoke-direct {p0, v1, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->dropAliasIndices(Ljava/math/BigInteger;Ljavax/naming/Name;)V

    .line 1605
    :cond_0
    new-instance v1, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;

    .line 1606
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->aliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lorg/apache/ldap/server/db/Index;->listIndices(Ljava/lang/Object;Z)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object v2

    .line 1605
    invoke-direct {v1, v2, v0}, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;-><init>(Ljavax/naming/NamingEnumeration;Lorg/apache/ldap/server/db/IndexAssertion;)V

    .line 1608
    :goto_0
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1610
    :cond_1
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/server/db/IndexRecord;

    .line 1611
    invoke-virtual {v0}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->dropAliasIndices(Ljava/math/BigInteger;Ljavax/naming/Name;)V

    goto :goto_0
.end method

.method private modifyDn(Ljava/math/BigInteger;Ljavax/naming/Name;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1457
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/math/BigInteger;)V

    .line 1458
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Index;->getNormalized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/ldap/server/db/Index;->add(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 1460
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->updnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/math/BigInteger;)V

    .line 1461
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->updnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/ldap/server/db/Index;->add(Ljava/lang/Object;Ljava/math/BigInteger;)V

    if-eqz p3, :cond_0

    .line 1475
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->aliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1479
    new-instance v1, Lorg/apache/ldap/common/name/LdapName;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryDn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->addAliasIndices(Ljava/math/BigInteger;Ljavax/naming/Name;Ljava/lang/String;)V

    .line 1484
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->list(Ljava/math/BigInteger;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    .line 1485
    :goto_0
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1488
    :cond_1
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/server/db/IndexRecord;

    .line 1489
    invoke-virtual {v0}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v0

    .line 1495
    invoke-interface {p2}, Ljavax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/naming/Name;

    .line 1496
    new-instance v2, Lorg/apache/ldap/common/name/LdapName;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryUpdn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 1497
    invoke-static {v2}, Lorg/apache/ldap/common/name/LdapName;->getRdn(Ljavax/naming/Name;)Ljava/lang/String;

    move-result-object v2

    .line 1498
    invoke-interface {v1}, Ljavax/naming/Name;->size()I

    move-result v3

    invoke-interface {v1, v3, v2}, Ljavax/naming/Name;->add(ILjava/lang/String;)Ljavax/naming/Name;

    .line 1501
    invoke-direct {p0, v0, v1, p3}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->modifyDn(Ljava/math/BigInteger;Ljavax/naming/Name;Z)V

    goto :goto_0
.end method

.method private remove(Ljava/math/BigInteger;Ljavax/naming/directory/Attributes;Ljavax/naming/directory/Attribute;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1146
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 1149
    invoke-interface {v0, p3, p1}, Lorg/apache/ldap/server/db/Index;->drop(Ljavax/naming/directory/Attribute;Ljava/math/BigInteger;)V

    .line 1155
    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1157
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->existanceIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 1167
    :cond_0
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1169
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljavax/naming/directory/Attributes;->remove(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    goto :goto_1

    .line 1173
    :cond_1
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object p2

    .line 1174
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v0

    .line 1175
    :goto_0
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1182
    :goto_1
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object p2

    const-string p3, "aliasedObjectName"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1184
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->dropAliasIndices(Ljava/math/BigInteger;)V

    :cond_2
    return-void

    .line 1177
    :cond_3
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljavax/naming/directory/Attribute;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private replace(Ljava/math/BigInteger;Ljavax/naming/directory/Attributes;Ljavax/naming/directory/Attribute;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1204
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1206
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 1209
    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/math/BigInteger;)V

    .line 1210
    invoke-interface {v0, p3, p1}, Lorg/apache/ldap/server/db/Index;->add(Ljavax/naming/directory/Attribute;Ljava/math/BigInteger;)V

    .line 1216
    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1218
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->existanceIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 1222
    :cond_0
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aliasedObjectName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1224
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->dropAliasIndices(Ljava/math/BigInteger;)V

    .line 1228
    :cond_1
    invoke-interface {p2, p3}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 1230
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1232
    iget-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {p2, p1}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1233
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p2}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 1234
    invoke-interface {p3}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1233
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->addAliasIndices(Ljava/math/BigInteger;Ljavax/naming/Name;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->master:Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->getNextId()Ljava/math/BigInteger;

    move-result-object v0

    .line 679
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->normSuffix:Ljavax/naming/Name;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 681
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    .line 685
    :cond_0
    invoke-interface {p2, v2}, Ljavax/naming/Name;->getSuffix(I)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    .line 694
    const-string v2, "objectClass"

    invoke-interface {p3, v2}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 706
    invoke-interface {p3, v2}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v2

    const-string v3, "alias"

    invoke-interface {v2, v3}, Ljavax/naming/directory/Attribute;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 708
    const-string v2, "aliasedObjectName"

    invoke-interface {p3, v2}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v2

    invoke-interface {v2}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, p2, v2}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->addAliasIndices(Ljava/math/BigInteger;Ljavax/naming/Name;Ljava/lang/String;)V

    .line 711
    :cond_1
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2, v0}, Lorg/apache/ldap/server/db/Index;->add(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 712
    iget-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->updnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {p2, p1, v0}, Lorg/apache/ldap/server/db/Index;->add(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 713
    iget-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hierarchyIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {p1, v1, v0}, Lorg/apache/ldap/server/db/Index;->add(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 716
    invoke-interface {p3}, Ljavax/naming/directory/Attributes;->getIDs()Ljavax/naming/NamingEnumeration;

    move-result-object p2

    .line 717
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p1

    if-nez p1, :cond_3

    .line 736
    iget-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->master:Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;

    invoke-virtual {p1, p3, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->put(Ljavax/naming/directory/Attributes;Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    return-void

    .line 719
    :cond_3
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 721
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 723
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object v1

    .line 724
    invoke-interface {p3, p1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v2

    invoke-interface {v2}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v2

    .line 726
    :goto_2
    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v3

    if-nez v3, :cond_4

    .line 732
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->existanceIdx:Lorg/apache/ldap/server/db/Index;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/db/Index;->add(Ljava/lang/Object;Ljava/math/BigInteger;)V

    goto :goto_1

    .line 728
    :cond_4
    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lorg/apache/ldap/server/db/Index;->add(Ljava/lang/Object;Ljava/math/BigInteger;)V

    goto :goto_2

    .line 698
    :cond_5
    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Entry "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, " contains no objectClass attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 700
    new-instance p2, Lorg/apache/ldap/common/exception/LdapSchemaViolationException;

    sget-object p3, Lorg/apache/ldap/common/message/ResultCodeEnum;->OBJECTCLASSVIOLATION:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p2, p1, p3}, Lorg/apache/ldap/common/exception/LdapSchemaViolationException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p2

    .line 691
    :cond_6
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNameNotFoundException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Id for parent \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljavax/naming/Name;->getSuffix(I)Ljavax/naming/Name;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, "\' not found!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/exception/LdapNameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 144
    new-instance v0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->wkdir:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;-><init>(Lorg/apache/ldap/common/schema/AttributeType;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->indices:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    monitor-enter p0

    .line 907
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    .line 909
    monitor-exit p0

    return-void

    .line 912
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 913
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->indices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 915
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    if-eqz v1, :cond_1

    .line 917
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    :cond_1
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->updnIdx:Lorg/apache/ldap/server/db/Index;

    if-eqz v1, :cond_2

    .line 922
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    :cond_2
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->aliasIdx:Lorg/apache/ldap/server/db/Index;

    if-eqz v1, :cond_3

    .line 927
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    :cond_3
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->oneAliasIdx:Lorg/apache/ldap/server/db/Index;

    if-eqz v1, :cond_4

    .line 932
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    :cond_4
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->subAliasIdx:Lorg/apache/ldap/server/db/Index;

    if-eqz v1, :cond_5

    .line 937
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    :cond_5
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hierarchyIdx:Lorg/apache/ldap/server/db/Index;

    if-eqz v1, :cond_6

    .line 942
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    :cond_6
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->existanceIdx:Lorg/apache/ldap/server/db/Index;

    if-eqz v1, :cond_7

    .line 947
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 953
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v2, :cond_b

    .line 974
    :try_start_2
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->master:Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-nez v1, :cond_8

    .line 980
    :try_start_3
    new-instance v1, Lorg/apache/ldap/common/MultiException;

    invoke-direct {v1}, Lorg/apache/ldap/common/MultiException;-><init>()V

    .line 983
    :cond_8
    invoke-virtual {v1, v0}, Lorg/apache/ldap/common/MultiException;->addThrowable(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 988
    :goto_1
    :try_start_4
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->recMan:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    if-nez v1, :cond_9

    .line 994
    :try_start_5
    new-instance v1, Lorg/apache/ldap/common/MultiException;

    invoke-direct {v1}, Lorg/apache/ldap/common/MultiException;-><init>()V

    .line 997
    :cond_9
    invoke-virtual {v1, v0}, Lorg/apache/ldap/common/MultiException;->addThrowable(Ljava/lang/Throwable;)V

    :goto_2
    const/4 v0, 0x1

    .line 1000
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->closed:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v1, :cond_a

    .line 1008
    monitor-exit p0

    return-void

    .line 1004
    :cond_a
    :try_start_6
    new-instance v0, Ljavax/naming/NamingException;

    const-string v2, "Failed to close all"

    invoke-direct {v0, v2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v0, v1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 1006
    throw v0

    .line 955
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/server/db/Index;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 959
    :try_start_7
    invoke-interface {v2}, Lorg/apache/ldap/server/db/Index;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    if-nez v1, :cond_c

    .line 965
    :try_start_8
    new-instance v1, Lorg/apache/ldap/common/MultiException;

    invoke-direct {v1}, Lorg/apache/ldap/common/MultiException;-><init>()V

    .line 968
    :cond_c
    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/MultiException;->addThrowable(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public count()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->master:Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->count()I

    move-result v0

    return v0
.end method

.method public delete(Ljava/math/BigInteger;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 754
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->lookup(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    move-result-object v0

    .line 755
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getParentId(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 756
    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->getIDs()Ljavax/naming/NamingEnumeration;

    move-result-object v2

    .line 758
    const-string v3, "objectClass"

    invoke-interface {v0, v3}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v3

    const-string v4, "alias"

    invoke-interface {v3, v4}, Ljavax/naming/directory/Attribute;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 760
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->dropAliasIndices(Ljava/math/BigInteger;)V

    .line 763
    :cond_0
    iget-object v3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v3, p1}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/math/BigInteger;)V

    .line 764
    iget-object v3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->updnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v3, p1}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/math/BigInteger;)V

    .line 765
    iget-object v3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hierarchyIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v3, p1}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/math/BigInteger;)V

    .line 768
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 770
    iget-object v3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hierarchyIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v3, v1, p1}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 773
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v1

    if-nez v1, :cond_2

    .line 791
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->master:Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->delete(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    return-void

    .line 775
    :cond_2
    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 777
    invoke-virtual {p0, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 779
    invoke-virtual {p0, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object v3

    .line 780
    invoke-interface {v0, v1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v4

    invoke-interface {v4}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v4

    .line 782
    :goto_1
    invoke-interface {v4}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v5

    if-nez v5, :cond_3

    .line 787
    iget-object v3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->existanceIdx:Lorg/apache/ldap/server/db/Index;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, p1}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/lang/Object;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 784
    :cond_3
    invoke-interface {v4}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5, p1}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/lang/Object;Ljava/math/BigInteger;)V

    goto :goto_1
.end method

.method public getAliasIndex()Lorg/apache/ldap/server/db/Index;
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->aliasIdx:Lorg/apache/ldap/server/db/Index;

    return-object v0
.end method

.method public getChildCount(Ljava/math/BigInteger;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hierarchyIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->count(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getEntryDn(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->forwardLookup(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public getEntryUpdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->forwardLookup(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p1

    .line 466
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->updnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getEntryUpdn(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->updnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getExistanceIndex()Lorg/apache/ldap/server/db/Index;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->existanceIdx:Lorg/apache/ldap/server/db/Index;

    return-object v0
.end method

.method public getHierarchyIndex()Lorg/apache/ldap/server/db/Index;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hierarchyIdx:Lorg/apache/ldap/server/db/Index;

    return-object v0
.end method

.method public getIndices(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1044
    new-instance v0, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {v0}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    .line 1047
    const-string v1, "_nDn"

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryDn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 1048
    const-string v1, "_upDn"

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryUpdn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 1049
    const-string v1, "_parent"

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getParentId(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 1052
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->indices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1053
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1067
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->existanceIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v1, p1}, Lorg/apache/ldap/server/db/Index;->listReverseIndices(Ljava/math/BigInteger;)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object v2

    .line 1068
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1069
    :goto_1
    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1081
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hierarchyIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v1, p1}, Lorg/apache/ldap/server/db/Index;->listIndices(Ljava/lang/Object;)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object v1

    .line 1082
    :goto_2
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    .line 1084
    :cond_0
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/db/IndexRecord;

    .line 1085
    const-string v2, "_child"

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    goto :goto_2

    .line 1071
    :cond_1
    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/db/IndexRecord;

    .line 1072
    const-string v4, "_existance["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1073
    invoke-virtual {v1}, Lorg/apache/ldap/server/db/IndexRecord;->getIndexKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1074
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1075
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    const/4 v1, 0x0

    .line 1076
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_1

    .line 1055
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/server/db/Index;

    .line 1056
    invoke-interface {v2, p1}, Lorg/apache/ldap/server/db/Index;->listReverseIndices(Ljava/math/BigInteger;)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object v3

    .line 1057
    :goto_3
    invoke-interface {v3}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 1059
    :cond_3
    invoke-interface {v3}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ldap/server/db/IndexRecord;

    .line 1060
    invoke-virtual {v4}, Lorg/apache/ldap/server/db/IndexRecord;->getIndexKey()Ljava/lang/Object;

    move-result-object v4

    .line 1061
    invoke-interface {v2}, Lorg/apache/ldap/server/db/Index;->getAttribute()Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    goto :goto_3
.end method

.method public getNdnIndex()Lorg/apache/ldap/server/db/Index;
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    return-object v0
.end method

.method public getOneAliasIndex()Lorg/apache/ldap/server/db/Index;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->oneAliasIdx:Lorg/apache/ldap/server/db/Index;

    return-object v0
.end method

.method public getParentId(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->forwardLookup(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p1

    .line 438
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hierarchyIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    return-object p1
.end method

.method public getParentId(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hierarchyIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1035
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->master:Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSubAliasIndex()Lorg/apache/ldap/server/db/Index;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->subAliasIdx:Lorg/apache/ldap/server/db/Index;

    return-object v0
.end method

.method public getSuffix()Ljavax/naming/Name;
    .locals 1

    .line 818
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->upSuffix:Ljavax/naming/Name;

    return-object v0
.end method

.method public getSuffixEntry()Ljavax/naming/directory/Attributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 827
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->upSuffix:Ljavax/naming/Name;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 834
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->lookup(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getSystemIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/server/db/IndexNotFoundException;
        }
    .end annotation

    .line 396
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->sysIndices:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->sysIndices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/db/Index;

    return-object p1

    .line 402
    :cond_0
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->sysIndices:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    iget-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->sysIndices:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/db/Index;

    return-object p1

    .line 408
    :cond_1
    new-instance v0, Lorg/apache/ldap/server/db/IndexNotFoundException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "A system index by the name of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " does not exist!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 408
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/ldap/server/db/IndexNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSystemIndices()Ljava/util/Iterator;
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->sysIndices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getUpdnIndex()Lorg/apache/ldap/server/db/Index;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->updnIdx:Lorg/apache/ldap/server/db/Index;

    return-object v0
.end method

.method public getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/server/db/IndexNotFoundException;
        }
    .end annotation

    .line 370
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->indices:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->indices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/db/Index;

    return-object p1

    .line 376
    :cond_0
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->indices:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    iget-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->indices:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/db/Index;

    return-object p1

    .line 382
    :cond_1
    new-instance v0, Lorg/apache/ldap/server/db/IndexNotFoundException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "An index on attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " does not exist!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 382
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/ldap/server/db/IndexNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserIndices()Ljava/util/Iterator;
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->indices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hasSystemIndexOn(Ljava/lang/String;)Z
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->sysIndices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->sysIndices:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public hasUserIndexOn(Ljava/lang/String;)Z
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->indices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->indices:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isClosed()Z
    .locals 1

    .line 1016
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->closed:Z

    return v0
.end method

.method public list(Ljava/math/BigInteger;)Ljavax/naming/NamingEnumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 800
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hierarchyIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->listIndices(Ljava/lang/Object;)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object p1

    return-object p1
.end method

.method public lookup(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->master:Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->get(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    move-result-object p1

    return-object p1
.end method

.method public modify(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1246
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p1

    .line 1247
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->master:Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->get(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 1263
    invoke-interface {p3}, Ljavax/naming/directory/Attributes;->getIDs()Ljavax/naming/NamingEnumeration;

    move-result-object p2

    .line 1265
    :goto_0
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 1267
    :cond_0
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1268
    invoke-interface {p3, v1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v1

    .line 1269
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->remove(Ljava/math/BigInteger;Ljavax/naming/directory/Attributes;Ljavax/naming/directory/Attribute;)V

    goto :goto_0

    .line 1285
    :cond_1
    new-instance p1, Ljavax/naming/NamingException;

    .line 1286
    const-string p2, "Unidentified modification operation"

    .line 1285
    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1274
    :cond_2
    invoke-interface {p3}, Ljavax/naming/directory/Attributes;->getIDs()Ljavax/naming/NamingEnumeration;

    move-result-object p2

    .line 1276
    :goto_1
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    .line 1278
    :cond_3
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1279
    invoke-interface {p3, v1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v1

    .line 1280
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->replace(Ljava/math/BigInteger;Ljavax/naming/directory/Attributes;Ljavax/naming/directory/Attribute;)V

    goto :goto_1

    .line 1252
    :cond_4
    invoke-interface {p3}, Ljavax/naming/directory/Attributes;->getIDs()Ljavax/naming/NamingEnumeration;

    move-result-object p2

    .line 1254
    :goto_2
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1289
    :goto_3
    iget-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->master:Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;

    invoke-virtual {p2, v0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->put(Ljavax/naming/directory/Attributes;Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    return-void

    .line 1256
    :cond_5
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1257
    invoke-interface {p3, v1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v1

    .line 1258
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->add(Ljava/math/BigInteger;Ljavax/naming/directory/Attributes;Ljavax/naming/directory/Attribute;)V

    goto :goto_2
.end method

.method public modify(Ljavax/naming/Name;[Ljavax/naming/directory/ModificationItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1299
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p1

    .line 1300
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->master:Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->get(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    move-result-object v0

    const/4 v1, 0x0

    .line 1302
    :goto_0
    array-length v2, p2

    if-lt v1, v2, :cond_0

    .line 1323
    iget-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->master:Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;

    invoke-virtual {p2, v0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->put(Ljavax/naming/directory/Attributes;Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    return-void

    .line 1304
    :cond_0
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljavax/naming/directory/ModificationItem;->getAttribute()Ljavax/naming/directory/Attribute;

    move-result-object v2

    .line 1306
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljavax/naming/directory/ModificationItem;->getModificationOp()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1312
    invoke-direct {p0, p1, v0, v2}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->remove(Ljava/math/BigInteger;Ljavax/naming/directory/Attributes;Ljavax/naming/directory/Attribute;)V

    goto :goto_1

    .line 1318
    :cond_1
    new-instance p1, Ljavax/naming/NamingException;

    .line 1319
    const-string p2, "Unidentified modification operation"

    .line 1318
    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1315
    :cond_2
    invoke-direct {p0, p1, v0, v2}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->replace(Ljava/math/BigInteger;Ljavax/naming/directory/Attributes;Ljavax/naming/directory/Attribute;)V

    goto :goto_1

    .line 1309
    :cond_3
    invoke-direct {p0, p1, v0, v2}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->add(Ljava/math/BigInteger;Ljavax/naming/directory/Attributes;Ljavax/naming/directory/Attribute;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public modifyRdn(Ljavax/naming/Name;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1349
    invoke-static {p2}, Lorg/apache/ldap/common/util/NamespaceTools;->getRdnAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1350
    invoke-static {p2}, Lorg/apache/ldap/common/util/NamespaceTools;->getRdnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1351
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p1

    .line 1352
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->lookup(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    move-result-object v2

    .line 1353
    new-instance v3, Lorg/apache/ldap/common/name/LdapName;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryUpdn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 1364
    invoke-interface {v2, v0, v1}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 1366
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1368
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object v4

    .line 1369
    invoke-interface {v4, v1, p1}, Lorg/apache/ldap/server/db/Index;->add(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 1372
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->existanceIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v1, v0, p1}, Lorg/apache/ldap/server/db/Index;->hasValue(Ljava/lang/Object;Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1374
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->existanceIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v1, v0, p1}, Lorg/apache/ldap/server/db/Index;->add(Ljava/lang/Object;Ljava/math/BigInteger;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 1394
    invoke-interface {v3}, Ljavax/naming/Name;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {v3, p3}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object p3

    .line 1395
    invoke-static {p3}, Lorg/apache/ldap/common/util/NamespaceTools;->getRdnAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1396
    invoke-static {p3}, Lorg/apache/ldap/common/util/NamespaceTools;->getRdnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1398
    invoke-interface {v2, v0}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v1

    invoke-interface {v1, p3}, Ljavax/naming/directory/Attribute;->remove(Ljava/lang/Object;)Z

    .line 1400
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1402
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object v1

    .line 1403
    invoke-interface {v1, p3, p1}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 1409
    invoke-interface {v1, p1}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    .line 1411
    iget-object p3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->existanceIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {p3, v0, p1}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 1427
    :cond_1
    invoke-interface {v3}, Ljavax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/naming/Name;

    .line 1428
    invoke-interface {p3}, Ljavax/naming/Name;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljavax/naming/Name;->remove(I)Ljava/lang/Object;

    .line 1429
    invoke-interface {p3}, Ljavax/naming/Name;->size()I

    move-result v0

    invoke-interface {p3, v0, p2}, Ljavax/naming/Name;->add(ILjava/lang/String;)Ljavax/naming/Name;

    const/4 p2, 0x0

    .line 1430
    invoke-direct {p0, p1, p3, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->modifyDn(Ljava/math/BigInteger;Ljavax/naming/Name;Z)V

    return-void
.end method

.method public move(Ljavax/naming/Name;Ljavax/naming/Name;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1537
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1538
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p2

    .line 1539
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getParentId(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 1549
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->dropMovedAliasIndices(Ljavax/naming/Name;)V

    .line 1555
    iget-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hierarchyIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {p1, v1, v0}, Lorg/apache/ldap/server/db/Index;->drop(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 1556
    iget-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hierarchyIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {p1, p2, v0}, Lorg/apache/ldap/server/db/Index;->add(Ljava/lang/Object;Ljava/math/BigInteger;)V

    .line 1563
    new-instance p1, Lorg/apache/ldap/common/name/LdapName;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryUpdn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 1564
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object p1

    .line 1565
    new-instance v1, Lorg/apache/ldap/common/name/LdapName;

    invoke-virtual {p0, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryUpdn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 1566
    invoke-interface {v1}, Ljavax/naming/Name;->size()I

    move-result p2

    invoke-interface {v1, p2, p1}, Ljavax/naming/Name;->add(ILjava/lang/String;)Ljavax/naming/Name;

    .line 1569
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->modifyDn(Ljava/math/BigInteger;Ljavax/naming/Name;Z)V

    return-void
.end method

.method public move(Ljavax/naming/Name;Ljavax/naming/Name;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1513
    invoke-virtual {p0, p1, p3, p4}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->modifyRdn(Ljavax/naming/Name;Ljava/lang/String;Z)V

    .line 1514
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->move(Ljavax/naming/Name;Ljavax/naming/Name;)V

    return-void
.end method

.method public setAliasIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->aliasIdx:Lorg/apache/ldap/server/db/Index;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->wkdir:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;-><init>(Lorg/apache/ldap/common/schema/AttributeType;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->aliasIdx:Lorg/apache/ldap/server/db/Index;

    .line 220
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->sysIndices:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->aliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 215
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    const-string v0, "Index already set!"

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 216
    throw p1
.end method

.method public setExistanceIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->existanceIdx:Lorg/apache/ldap/server/db/Index;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->wkdir:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;-><init>(Lorg/apache/ldap/common/schema/AttributeType;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->existanceIdx:Lorg/apache/ldap/server/db/Index;

    .line 170
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->sysIndices:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->existanceIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 165
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    const-string v0, "Index already set!"

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 166
    throw p1
.end method

.method public setHierarchyIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hierarchyIdx:Lorg/apache/ldap/server/db/Index;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->wkdir:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;-><init>(Lorg/apache/ldap/common/schema/AttributeType;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hierarchyIdx:Lorg/apache/ldap/server/db/Index;

    .line 195
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->sysIndices:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hierarchyIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 190
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    const-string v0, "Index already set!"

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 191
    throw p1
.end method

.method public setNdnIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->wkdir:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;-><init>(Lorg/apache/ldap/common/schema/AttributeType;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    .line 320
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->sysIndices:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 315
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    const-string v0, "Index already set!"

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 316
    throw p1
.end method

.method public setOneAliasIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->oneAliasIdx:Lorg/apache/ldap/server/db/Index;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->wkdir:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;-><init>(Lorg/apache/ldap/common/schema/AttributeType;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->oneAliasIdx:Lorg/apache/ldap/server/db/Index;

    .line 245
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->sysIndices:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->oneAliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 240
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    const-string v0, "Index already set!"

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 241
    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1026
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->master:Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSubAliasIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->subAliasIdx:Lorg/apache/ldap/server/db/Index;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->wkdir:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;-><init>(Lorg/apache/ldap/common/schema/AttributeType;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->subAliasIdx:Lorg/apache/ldap/server/db/Index;

    .line 270
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->sysIndices:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->subAliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 265
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    const-string v0, "Index already set!"

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 266
    throw p1
.end method

.method public setUpdnIndexOn(Lorg/apache/ldap/common/schema/AttributeType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->updnIdx:Lorg/apache/ldap/server/db/Index;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->wkdir:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;-><init>(Lorg/apache/ldap/common/schema/AttributeType;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->updnIdx:Lorg/apache/ldap/server/db/Index;

    .line 295
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->sysIndices:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->updnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 290
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    const-string v0, "Index already set!"

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 291
    throw p1
.end method

.method public sync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 844
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->indices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 845
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->ndnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->updnIdx:Lorg/apache/ldap/server/db/Index;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->aliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->oneAliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->subAliasIdx:Lorg/apache/ldap/server/db/Index;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->hierarchyIdx:Lorg/apache/ldap/server/db/Index;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->existanceIdx:Lorg/apache/ldap/server/db/Index;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 857
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 879
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->master:Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->sync()V

    .line 880
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->recMan:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 884
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-nez v1, :cond_0

    .line 887
    new-instance v1, Lorg/apache/ldap/common/MultiException;

    invoke-direct {v1}, Lorg/apache/ldap/common/MultiException;-><init>()V

    .line 890
    :cond_0
    invoke-virtual {v1, v0}, Lorg/apache/ldap/common/MultiException;->addThrowable(Ljava/lang/Throwable;)V

    :goto_1
    if-nez v1, :cond_1

    return-void

    .line 895
    :cond_1
    new-instance v0, Ljavax/naming/NamingException;

    const-string v2, "Failed to sync all"

    invoke-direct {v0, v2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v0, v1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 897
    throw v0

    .line 859
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/server/db/Index;

    .line 863
    :try_start_1
    invoke-interface {v2}, Lorg/apache/ldap/server/db/Index;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 867
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    if-nez v1, :cond_3

    .line 870
    new-instance v1, Lorg/apache/ldap/common/MultiException;

    invoke-direct {v1}, Lorg/apache/ldap/common/MultiException;-><init>()V

    .line 873
    :cond_3
    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/MultiException;->addThrowable(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
