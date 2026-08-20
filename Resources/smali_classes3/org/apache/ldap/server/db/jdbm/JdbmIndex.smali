.class public Lorg/apache/ldap/server/db/jdbm/JdbmIndex;
.super Ljava/lang/Object;
.source "JdbmIndex.java"

# interfaces
.implements Lorg/apache/ldap/server/db/Index;


# static fields
.field public static final FORWARD_BTREE:Ljava/lang/String; = "_forward"

.field public static final REVERSE_BTREE:Ljava/lang/String; = "_reverse"


# instance fields
.field private attribute:Lorg/apache/ldap/common/schema/AttributeType;

.field private forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

.field private keyCache:Lorg/apache/ldap/common/util/LRUMap;

.field private recMan:Ljdbm/RecordManager;

.field private reverse:Lorg/apache/ldap/server/db/jdbm/JdbmTable;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/common/schema/AttributeType;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    .line 59
    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->reverse:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    .line 61
    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->recMan:Ljdbm/RecordManager;

    .line 66
    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->keyCache:Lorg/apache/ldap/common/util/LRUMap;

    .line 103
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 104
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->attribute:Lorg/apache/ldap/common/schema/AttributeType;

    .line 106
    new-instance p1, Lorg/apache/ldap/common/util/LRUMap;

    const/16 p2, 0x3e8

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/util/LRUMap;-><init>(I)V

    iput-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->keyCache:Lorg/apache/ldap/common/util/LRUMap;

    .line 110
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 111
    new-instance v0, Ljdbm/recman/BaseRecordManager;

    invoke-direct {v0, p1}, Ljdbm/recman/BaseRecordManager;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljdbm/recman/BaseRecordManager;->disableTransactions()V

    .line 113
    new-instance p1, Ljdbm/recman/CacheRecordManager;

    new-instance v1, Ljdbm/helper/MRU;

    invoke-direct {v1, p2}, Ljdbm/helper/MRU;-><init>(I)V

    invoke-direct {p1, v0, v1}, Ljdbm/recman/CacheRecordManager;-><init>(Ljdbm/RecordManager;Ljdbm/helper/CachePolicy;)V

    iput-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->recMan:Ljdbm/RecordManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    invoke-direct {p0}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->initTables()V

    return-void

    :catch_0
    move-exception p1

    .line 117
    new-instance p2, Ljavax/naming/NamingException;

    .line 118
    const-string v0, "Could not initialize the record manager"

    .line 117
    invoke-direct {p2, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2, p1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 120
    throw p2
.end method

.method public constructor <init>(Lorg/apache/ldap/common/schema/AttributeType;Ljdbm/RecordManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    .line 59
    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->reverse:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    .line 61
    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->recMan:Ljdbm/RecordManager;

    .line 66
    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->keyCache:Lorg/apache/ldap/common/util/LRUMap;

    .line 86
    iput-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->attribute:Lorg/apache/ldap/common/schema/AttributeType;

    .line 87
    new-instance p1, Lorg/apache/ldap/common/util/LRUMap;

    const/16 v0, 0x3e8

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/util/LRUMap;-><init>(I)V

    iput-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->keyCache:Lorg/apache/ldap/common/util/LRUMap;

    .line 88
    iput-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->recMan:Ljdbm/RecordManager;

    .line 89
    invoke-direct {p0}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->initTables()V

    return-void
.end method

.method private initTables()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 136
    new-instance v0, Lorg/apache/ldap/server/schema/SerializableComparator;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->attribute:Lorg/apache/ldap/common/schema/AttributeType;

    invoke-interface {v1}, Lorg/apache/ldap/common/schema/AttributeType;->getEquality()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/schema/SerializableComparator;-><init>(Ljava/lang/String;)V

    .line 143
    new-instance v1, Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->attribute:Lorg/apache/ldap/common/schema/AttributeType;

    invoke-interface {v3}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "_forward"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    iget-object v3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->recMan:Ljdbm/RecordManager;

    new-instance v4, Lorg/apache/ldap/server/db/IndexComparator;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lorg/apache/ldap/server/db/IndexComparator;-><init>(Lorg/apache/ldap/server/schema/SerializableComparator;Z)V

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;-><init>(Ljava/lang/String;ZLjdbm/RecordManager;Lorg/apache/ldap/server/db/TupleComparator;)V

    iput-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    .line 152
    new-instance v1, Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->attribute:Lorg/apache/ldap/common/schema/AttributeType;

    invoke-interface {v3}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "_reverse"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    iget-object v3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->attribute:Lorg/apache/ldap/common/schema/AttributeType;

    invoke-interface {v3}, Lorg/apache/ldap/common/schema/AttributeType;->isSingleValue()Z

    move-result v3

    xor-int/2addr v3, v5

    iget-object v4, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->recMan:Ljdbm/RecordManager;

    .line 154
    new-instance v5, Lorg/apache/ldap/server/db/IndexComparator;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lorg/apache/ldap/server/db/IndexComparator;-><init>(Lorg/apache/ldap/server/schema/SerializableComparator;Z)V

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;-><init>(Ljava/lang/String;ZLjdbm/RecordManager;Lorg/apache/ldap/server/db/TupleComparator;)V

    iput-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->reverse:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->getNormalized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->reverse:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->getNormalized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Ljavax/naming/directory/Attribute;Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    monitor-enter p0

    .line 252
    :try_start_0
    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->reverse:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {v1, p2, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->put(Ljava/lang/Object;Ljavax/naming/NamingEnumeration;)Ljava/lang/Object;

    .line 256
    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object p1

    .line 257
    :goto_0
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 261
    monitor-exit p0

    return-void

    .line 259
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Ljavax/naming/directory/Attributes;Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->attribute:Lorg/apache/ldap/common/schema/AttributeType;

    invoke-interface {v0}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->add(Ljavax/naming/directory/Attribute;Ljava/math/BigInteger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    monitor-enter p0

    .line 470
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->close()V

    .line 471
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->reverse:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->close()V

    .line 472
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->recMan:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->commit()V

    .line 473
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->recMan:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 477
    :try_start_1
    new-instance v1, Ljavax/naming/NamingException;

    .line 478
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Exception while closing backend index file for attribute "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 479
    iget-object v3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->attribute:Lorg/apache/ldap/common/schema/AttributeType;

    invoke-interface {v3}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 478
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-direct {v1, v2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1, v0}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 481
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
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

    .line 178
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count()I

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->getNormalized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public count(Ljava/lang/Object;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->getNormalized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count(Ljava/lang/Object;Z)I

    move-result p1

    return p1
.end method

.method public declared-synchronized drop(Ljava/lang/Object;Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->getNormalized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->reverse:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->getNormalized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public drop(Ljava/math/BigInteger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->reverse:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->listValues(Ljava/lang/Object;)Ljavax/naming/NamingEnumeration;

    move-result-object v0

    .line 295
    :goto_0
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->reverse:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 297
    :cond_0
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public drop(Ljavax/naming/directory/Attribute;Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 312
    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    invoke-virtual {p0, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->drop(Ljava/math/BigInteger;)V

    return-void

    .line 321
    :cond_0
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->reverse:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {v1, p2, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->remove(Ljava/lang/Object;Ljavax/naming/NamingEnumeration;)Ljava/lang/Object;

    .line 324
    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object p1

    .line 325
    :goto_0
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public drop(Ljavax/naming/directory/Attributes;Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->attribute:Lorg/apache/ldap/common/schema/AttributeType;

    invoke-interface {v0}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->drop(Ljavax/naming/directory/Attribute;Ljava/math/BigInteger;)V

    return-void
.end method

.method public forwardLookup(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->getNormalized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    return-object p1
.end method

.method public getAttribute()Lorg/apache/ldap/common/schema/AttributeType;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->attribute:Lorg/apache/ldap/common/schema/AttributeType;

    return-object v0
.end method

.method public getNormalized(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->keyCache:Lorg/apache/ldap/common/util/LRUMap;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->attribute:Lorg/apache/ldap/common/schema/AttributeType;

    invoke-interface {v0}, Lorg/apache/ldap/common/schema/AttributeType;->getEquality()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ldap/common/schema/MatchingRule;->getNormalizer()Lorg/apache/ldap/common/schema/Normalizer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 529
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->keyCache:Lorg/apache/ldap/common/util/LRUMap;

    invoke-virtual {v1, p1, v0}, Lorg/apache/ldap/common/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->keyCache:Lorg/apache/ldap/common/util/LRUMap;

    invoke-virtual {p1, v0, v0}, Lorg/apache/ldap/common/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public hasValue(Ljava/lang/Object;Ljava/math/BigInteger;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->getNormalized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->has(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasValue(Ljava/lang/Object;Ljava/math/BigInteger;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->getNormalized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->has(Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public hasValue(Lorg/apache/regexp/RE;Ljava/math/BigInteger;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 449
    new-instance v0, Lorg/apache/ldap/server/db/IndexEnumeration;

    .line 450
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->reverse:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {v1, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->listTuples(Ljava/lang/Object;)Ljavax/naming/NamingEnumeration;

    move-result-object p2

    const/4 v1, 0x1

    .line 449
    invoke-direct {v0, p2, v1, p1}, Lorg/apache/ldap/server/db/IndexEnumeration;-><init>(Ljavax/naming/NamingEnumeration;ZLorg/apache/regexp/RE;)V

    .line 451
    invoke-virtual {v0}, Lorg/apache/ldap/server/db/IndexEnumeration;->hasMore()Z

    move-result p1

    .line 452
    invoke-virtual {v0}, Lorg/apache/ldap/server/db/IndexEnumeration;->close()V

    return p1
.end method

.method public listIndices()Lorg/apache/ldap/server/db/IndexEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 364
    new-instance v0, Lorg/apache/ldap/server/db/IndexEnumeration;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {v1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->listTuples()Ljavax/naming/NamingEnumeration;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/db/IndexEnumeration;-><init>(Ljavax/naming/NamingEnumeration;)V

    return-object v0
.end method

.method public listIndices(Ljava/lang/Object;)Lorg/apache/ldap/server/db/IndexEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 374
    new-instance v0, Lorg/apache/ldap/server/db/IndexEnumeration;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    .line 375
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->getNormalized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 374
    invoke-virtual {v1, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->listTuples(Ljava/lang/Object;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/ldap/server/db/IndexEnumeration;-><init>(Ljavax/naming/NamingEnumeration;)V

    return-object v0
.end method

.method public listIndices(Ljava/lang/Object;Z)Lorg/apache/ldap/server/db/IndexEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 386
    new-instance v0, Lorg/apache/ldap/server/db/IndexEnumeration;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    .line 387
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->getNormalized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 386
    invoke-virtual {v1, p1, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->listTuples(Ljava/lang/Object;Z)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/ldap/server/db/IndexEnumeration;-><init>(Ljavax/naming/NamingEnumeration;)V

    return-object v0
.end method

.method public listIndices(Lorg/apache/regexp/RE;)Lorg/apache/ldap/server/db/IndexEnumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 397
    new-instance v0, Lorg/apache/ldap/server/db/IndexEnumeration;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {v1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->listTuples()Ljavax/naming/NamingEnumeration;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/ldap/server/db/IndexEnumeration;-><init>(Ljavax/naming/NamingEnumeration;ZLorg/apache/regexp/RE;)V

    return-object v0
.end method

.method public listIndices(Lorg/apache/regexp/RE;Ljava/lang/String;)Lorg/apache/ldap/server/db/IndexEnumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 408
    new-instance v0, Lorg/apache/ldap/server/db/IndexEnumeration;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->forward:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    .line 409
    invoke-virtual {p0, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->getNormalized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x1

    .line 408
    invoke-virtual {v1, p2, v2}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->listTuples(Ljava/lang/Object;Z)Ljavax/naming/NamingEnumeration;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p1}, Lorg/apache/ldap/server/db/IndexEnumeration;-><init>(Ljavax/naming/NamingEnumeration;ZLorg/apache/regexp/RE;)V

    return-object v0
.end method

.method public listReverseIndices(Ljava/math/BigInteger;)Lorg/apache/ldap/server/db/IndexEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 354
    new-instance v0, Lorg/apache/ldap/server/db/IndexEnumeration;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->reverse:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {v1, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->listTuples(Ljava/lang/Object;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/ldap/server/db/IndexEnumeration;-><init>(Ljavax/naming/NamingEnumeration;Z)V

    return-object v0
.end method

.method public reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->reverse:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized sync()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    monitor-enter p0

    .line 494
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->recMan:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 498
    :try_start_1
    new-instance v1, Ljavax/naming/NamingException;

    .line 499
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Exception while syncing backend index file for attribute "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 500
    iget-object v3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmIndex;->attribute:Lorg/apache/ldap/common/schema/AttributeType;

    invoke-interface {v3}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 499
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 498
    invoke-direct {v1, v2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v1, v0}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 502
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method
