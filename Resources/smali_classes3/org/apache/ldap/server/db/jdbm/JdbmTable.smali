.class public Lorg/apache/ldap/server/db/jdbm/JdbmTable;
.super Ljava/lang/Object;
.source "JdbmTable.java"

# interfaces
.implements Lorg/apache/ldap/server/db/Table;


# static fields
.field private static final SZSUFFIX:Ljava/lang/String; = "_btree_sz"


# instance fields
.field private final allowsDuplicates:Z

.field private bt:Ljdbm/btree/BTree;

.field private final comparator:Lorg/apache/ldap/server/db/TupleComparator;

.field private count:I

.field private final name:Ljava/lang/String;

.field private final recMan:Ljdbm/RecordManager;

.field private renderer:Lorg/apache/ldap/server/db/TupleRenderer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljdbm/RecordManager;Lorg/apache/ldap/server/schema/SerializableComparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 143
    new-instance v0, Lorg/apache/ldap/server/db/KeyOnlyComparator;

    invoke-direct {v0, p3}, Lorg/apache/ldap/server/db/KeyOnlyComparator;-><init>(Lorg/apache/ldap/server/schema/SerializableComparator;)V

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;-><init>(Ljava/lang/String;ZLjdbm/RecordManager;Lorg/apache/ldap/server/db/TupleComparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjdbm/RecordManager;Lorg/apache/ldap/server/db/TupleComparator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    .line 81
    iput-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->name:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->recMan:Ljdbm/RecordManager;

    .line 83
    iput-object p4, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->comparator:Lorg/apache/ldap/server/db/TupleComparator;

    .line 84
    iput-boolean p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    .line 90
    :try_start_0
    invoke-interface {p3, p1}, Ljdbm/RecordManager;->getNamedObject(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    .line 106
    const-string v3, "_btree_sz"

    if-eqz p2, :cond_0

    .line 108
    :try_start_1
    invoke-static {p3, v1, v2}, Ljdbm/btree/BTree;->load(Ljdbm/RecordManager;J)Ljdbm/btree/BTree;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->bt:Ljdbm/btree/BTree;

    .line 109
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljdbm/RecordManager;->getNamedObject(Ljava/lang/String;)J

    move-result-wide p1

    .line 110
    invoke-interface {p3, p1, p2}, Ljdbm/RecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    goto :goto_0

    .line 114
    :cond_0
    invoke-interface {p4}, Lorg/apache/ldap/server/db/TupleComparator;->getKeyComparator()Lorg/apache/ldap/server/schema/SerializableComparator;

    move-result-object p2

    invoke-static {p3, p2}, Ljdbm/btree/BTree;->createInstance(Ljdbm/RecordManager;Ljava/util/Comparator;)Ljdbm/btree/BTree;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->bt:Ljdbm/btree/BTree;

    .line 115
    invoke-virtual {p2}, Ljdbm/btree/BTree;->getRecid()J

    move-result-wide v1

    .line 116
    invoke-interface {p3, p1, v1, v2}, Ljdbm/RecordManager;->setNamedObject(Ljava/lang/String;J)V

    .line 117
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p3, p2}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    .line 118
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, v0, v1}, Ljdbm/RecordManager;->setNamedObject(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 123
    new-instance p2, Ljavax/naming/NamingException;

    invoke-direct {p2}, Ljavax/naming/NamingException;-><init>()V

    .line 124
    invoke-virtual {p2, p1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 125
    throw p2

    :catch_1
    move-exception p1

    .line 94
    new-instance p2, Ljavax/naming/NamingException;

    invoke-direct {p2}, Ljavax/naming/NamingException;-><init>()V

    .line 95
    invoke-virtual {p2, p1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 96
    throw p2
.end method

.method private getRaw(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1088
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    if-nez v0, :cond_1

    .line 1090
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->bt:Ljdbm/btree/BTree;

    invoke-virtual {v0, p1}, Ljdbm/btree/BTree;->find(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 1094
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->bt:Ljdbm/btree/BTree;

    invoke-virtual {v0, p1}, Ljdbm/btree/BTree;->find(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 1099
    new-instance v0, Ljavax/naming/NamingException;

    invoke-direct {v0}, Ljavax/naming/NamingException;-><init>()V

    .line 1100
    invoke-virtual {v0, p1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 1101
    throw v0
.end method

.method private putRaw(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1125
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->bt:Ljdbm/btree/BTree;

    invoke-virtual {v0, p1, p2, p3}, Ljdbm/btree/BTree;->insert(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1129
    new-instance p2, Ljavax/naming/NamingException;

    invoke-direct {p2}, Ljavax/naming/NamingException;-><init>()V

    .line 1130
    invoke-virtual {p2, p1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 1131
    throw p2
.end method

.method private removeRaw(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1153
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->bt:Ljdbm/btree/BTree;

    invoke-virtual {v0, p1}, Ljdbm/btree/BTree;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1157
    new-instance v0, Ljavax/naming/NamingException;

    invoke-direct {v0}, Ljavax/naming/NamingException;-><init>()V

    .line 1158
    invoke-virtual {v0, p1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 1159
    throw v0
.end method

.method private renderKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1052
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1055
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->renderer:Lorg/apache/ldap/server/db/TupleRenderer;

    if-nez v2, :cond_0

    .line 1057
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1061
    :cond_0
    invoke-interface {v2, p1}, Lorg/apache/ldap/server/db/TupleRenderer;->getKeyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1064
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1065
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    monitor-enter p0

    .line 1006
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    monitor-exit p0

    return-void

    :catchall_0
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

    .line 259
    iget v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 230
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 232
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 242
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TreeSet;

    if-eqz p1, :cond_2

    .line 246
    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public count(Ljava/lang/Object;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 220
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 273
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    if-eqz v0, :cond_2

    .line 275
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TreeSet;

    if-eqz p1, :cond_1

    .line 276
    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 286
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getComparator()Lorg/apache/ldap/server/db/TupleComparator;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->comparator:Lorg/apache/ldap/server/db/TupleComparator;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderer()Lorg/apache/ldap/server/db/TupleRenderer;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->renderer:Lorg/apache/ldap/server/db/TupleRenderer;

    return-object v0
.end method

.method public has(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 487
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public has(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 458
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 460
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TreeSet;

    if-nez p1, :cond_0

    return v1

    .line 467
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 470
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 477
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public has(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 300
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 302
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    .line 310
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 315
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->comparator:Lorg/apache/ldap/server/db/TupleComparator;

    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/db/TupleComparator;->compareValue(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lt v0, v2, :cond_2

    if-eqz p3, :cond_2

    return v2

    .line 320
    :cond_2
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->comparator:Lorg/apache/ldap/server/db/TupleComparator;

    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/db/TupleComparator;->compareValue(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gt p1, v2, :cond_3

    if-nez p3, :cond_3

    return v2

    :cond_3
    return v1

    .line 328
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TreeSet;

    if-eqz p1, :cond_9

    .line 330
    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    .line 337
    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p3

    goto :goto_0

    .line 341
    :cond_6
    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p3

    .line 344
    :goto_0
    invoke-interface {p3}, Ljava/util/SortedSet;->size()I

    move-result p3

    if-gtz p3, :cond_8

    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    return v1

    :cond_8
    :goto_1
    return v2

    :cond_9
    :goto_2
    return v1
.end method

.method public has(Ljava/lang/Object;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 362
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->bt:Ljdbm/btree/BTree;

    invoke-virtual {v0, p1}, Ljdbm/btree/BTree;->findGreaterOrEqual(Ljava/lang/Object;)Ljdbm/helper/Tuple;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 366
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->comparator:Lorg/apache/ldap/server/db/TupleComparator;

    invoke-virtual {v0}, Ljdbm/helper/Tuple;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lorg/apache/ldap/server/db/TupleComparator;->compareKey(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    if-nez v0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    if-nez v0, :cond_4

    .line 392
    new-instance p2, Ljdbm/helper/Tuple;

    invoke-direct {p2}, Ljdbm/helper/Tuple;-><init>()V

    .line 393
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->bt:Ljdbm/btree/BTree;

    invoke-virtual {v0}, Ljdbm/btree/BTree;->browse()Ljdbm/helper/TupleBrowser;

    move-result-object v0

    .line 399
    invoke-virtual {v0, p2}, Ljdbm/helper/TupleBrowser;->getNext(Ljdbm/helper/Tuple;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 401
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->comparator:Lorg/apache/ldap/server/db/TupleComparator;

    invoke-virtual {p2}, Ljdbm/helper/Tuple;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lorg/apache/ldap/server/db/TupleComparator;->compareKey(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_3

    return v1

    :cond_3
    return v2

    .line 415
    :cond_4
    iget-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->bt:Ljdbm/btree/BTree;

    invoke-virtual {v0}, Ljdbm/helper/Tuple;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljdbm/btree/BTree;->browse(Ljava/lang/Object;)Ljdbm/helper/TupleBrowser;

    move-result-object p2

    .line 420
    iget-object v3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->comparator:Lorg/apache/ldap/server/db/TupleComparator;

    invoke-virtual {v0}, Ljdbm/helper/Tuple;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Lorg/apache/ldap/server/db/TupleComparator;->compareKey(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_5

    return v1

    .line 425
    :cond_5
    invoke-virtual {p2, v0}, Ljdbm/helper/TupleBrowser;->getNext(Ljdbm/helper/Tuple;)Z

    .line 430
    :cond_6
    invoke-virtual {p2, v0}, Ljdbm/helper/TupleBrowser;->getPrevious(Ljdbm/helper/Tuple;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    return v2

    .line 432
    :cond_8
    iget-object v3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->comparator:Lorg/apache/ldap/server/db/TupleComparator;

    invoke-virtual {v0}, Ljdbm/helper/Tuple;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Lorg/apache/ldap/server/db/TupleComparator;->compareKey(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v3, :cond_6

    return v1

    :catch_0
    move-exception p1

    .line 442
    new-instance p2, Ljavax/naming/NamingException;

    invoke-direct {p2}, Ljavax/naming/NamingException;-><init>()V

    .line 443
    invoke-virtual {p2, p1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 444
    throw p2
.end method

.method public isDupsEnabled()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    return v0
.end method

.method public isSortedDupsEnabled()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    return v0
.end method

.method public listTuples()Ljavax/naming/NamingEnumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 803
    :try_start_0
    new-instance v0, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->bt:Ljdbm/btree/BTree;

    invoke-virtual {v1}, Ljdbm/btree/BTree;->browse()Ljdbm/helper/TupleBrowser;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;-><init>(Ljdbm/helper/TupleBrowser;)V

    .line 804
    new-instance v1, Lorg/apache/ldap/server/db/NoDupsEnumeration;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/apache/ldap/server/db/NoDupsEnumeration;-><init>(Lorg/apache/ldap/server/db/TupleBrowser;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    if-eqz v0, :cond_0

    .line 815
    new-instance v0, Lorg/apache/ldap/server/db/DupsEnumeration;

    move-object v2, v1

    check-cast v2, Lorg/apache/ldap/server/db/NoDupsEnumeration;

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/db/DupsEnumeration;-><init>(Lorg/apache/ldap/server/db/NoDupsEnumeration;)V

    return-object v0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    .line 808
    new-instance v1, Ljavax/naming/NamingException;

    invoke-direct {v1}, Ljavax/naming/NamingException;-><init>()V

    .line 809
    invoke-virtual {v1, v0}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 810
    throw v1
.end method

.method public listTuples(Ljava/lang/Object;)Ljavax/naming/NamingEnumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 831
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    if-nez v0, :cond_1

    .line 833
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 837
    new-instance p1, Lorg/apache/ldap/common/util/EmptyEnumeration;

    invoke-direct {p1}, Lorg/apache/ldap/common/util/EmptyEnumeration;-><init>()V

    return-object p1

    .line 841
    :cond_0
    new-instance v0, Lorg/apache/ldap/common/util/SingletonEnumeration;

    .line 842
    new-instance v1, Lorg/apache/ldap/server/db/Tuple;

    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/apache/ldap/server/db/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 841
    invoke-direct {v0, v1}, Lorg/apache/ldap/common/util/SingletonEnumeration;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 846
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-nez v0, :cond_2

    .line 849
    new-instance p1, Lorg/apache/ldap/common/util/EmptyEnumeration;

    invoke-direct {p1}, Lorg/apache/ldap/common/util/EmptyEnumeration;-><init>()V

    return-object p1

    .line 852
    :cond_2
    new-instance v1, Lorg/apache/ldap/server/db/TupleEnumeration;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/apache/ldap/server/db/TupleEnumeration;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public listTuples(Ljava/lang/Object;Ljava/lang/Object;Z)Ljavax/naming/NamingEnumeration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 931
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 933
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 937
    new-instance p1, Lorg/apache/ldap/common/util/EmptyEnumeration;

    invoke-direct {p1}, Lorg/apache/ldap/common/util/EmptyEnumeration;-><init>()V

    return-object p1

    .line 939
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 941
    new-instance p3, Lorg/apache/ldap/common/util/SingletonEnumeration;

    new-instance v0, Lorg/apache/ldap/server/db/Tuple;

    invoke-direct {v0, p1, p2}, Lorg/apache/ldap/server/db/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p3, v0}, Lorg/apache/ldap/common/util/SingletonEnumeration;-><init>(Ljava/lang/Object;)V

    return-object p3

    .line 944
    :cond_1
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->comparator:Lorg/apache/ldap/server/db/TupleComparator;

    invoke-interface {v2, p2, v0}, Lorg/apache/ldap/server/db/TupleComparator;->compareValue(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lt v2, v1, :cond_2

    if-eqz p3, :cond_2

    .line 946
    new-instance p3, Lorg/apache/ldap/common/util/SingletonEnumeration;

    new-instance v0, Lorg/apache/ldap/server/db/Tuple;

    invoke-direct {v0, p1, p2}, Lorg/apache/ldap/server/db/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p3, v0}, Lorg/apache/ldap/common/util/SingletonEnumeration;-><init>(Ljava/lang/Object;)V

    return-object p3

    .line 949
    :cond_2
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->comparator:Lorg/apache/ldap/server/db/TupleComparator;

    invoke-interface {v2, p2, v0}, Lorg/apache/ldap/server/db/TupleComparator;->compareValue(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v1, :cond_3

    if-nez p3, :cond_3

    .line 951
    new-instance p3, Lorg/apache/ldap/common/util/SingletonEnumeration;

    new-instance v0, Lorg/apache/ldap/server/db/Tuple;

    invoke-direct {v0, p1, p2}, Lorg/apache/ldap/server/db/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p3, v0}, Lorg/apache/ldap/common/util/SingletonEnumeration;-><init>(Ljava/lang/Object;)V

    return-object p3

    .line 954
    :cond_3
    new-instance p1, Lorg/apache/ldap/common/util/EmptyEnumeration;

    invoke-direct {p1}, Lorg/apache/ldap/common/util/EmptyEnumeration;-><init>()V

    return-object p1

    .line 958
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-nez v0, :cond_5

    .line 961
    new-instance p1, Lorg/apache/ldap/common/util/EmptyEnumeration;

    invoke-direct {p1}, Lorg/apache/ldap/common/util/EmptyEnumeration;-><init>()V

    return-object p1

    :cond_5
    if-eqz p3, :cond_6

    .line 966
    new-instance p3, Lorg/apache/ldap/server/db/TupleEnumeration;

    .line 967
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 966
    invoke-direct {p3, p1, p2}, Lorg/apache/ldap/server/db/TupleEnumeration;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V

    return-object p3

    .line 974
    :cond_6
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p3

    .line 975
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 976
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 982
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 984
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    :cond_7
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 990
    new-instance p2, Lorg/apache/ldap/server/db/TupleEnumeration;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/apache/ldap/server/db/TupleEnumeration;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V

    return-object p2
.end method

.method public listTuples(Ljava/lang/Object;Z)Ljavax/naming/NamingEnumeration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 870
    :try_start_0
    new-instance v0, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->bt:Ljdbm/btree/BTree;

    invoke-virtual {v1, p1}, Ljdbm/btree/BTree;->browse(Ljava/lang/Object;)Ljdbm/helper/TupleBrowser;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;-><init>(Ljdbm/helper/TupleBrowser;)V

    .line 871
    new-instance v1, Lorg/apache/ldap/server/db/NoDupsEnumeration;

    invoke-direct {v1, v0, p2}, Lorg/apache/ldap/server/db/NoDupsEnumeration;-><init>(Lorg/apache/ldap/server/db/TupleBrowser;Z)V

    goto :goto_0

    .line 885
    :cond_0
    new-instance v0, Ljdbm/helper/Tuple;

    invoke-direct {v0}, Ljdbm/helper/Tuple;-><init>()V

    .line 886
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->bt:Ljdbm/btree/BTree;

    invoke-virtual {v1, p1}, Ljdbm/btree/BTree;->browse(Ljava/lang/Object;)Ljdbm/helper/TupleBrowser;

    move-result-object v1

    .line 888
    invoke-virtual {v1, v0}, Ljdbm/helper/TupleBrowser;->getNext(Ljdbm/helper/Tuple;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 890
    invoke-virtual {v0}, Ljdbm/helper/Tuple;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 892
    iget-object v3, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->comparator:Lorg/apache/ldap/server/db/TupleComparator;

    invoke-interface {v3, p1, v2}, Lorg/apache/ldap/server/db/TupleComparator;->compareKey(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 895
    invoke-virtual {v1, v0}, Ljdbm/helper/TupleBrowser;->getPrevious(Ljdbm/helper/Tuple;)Z

    .line 900
    :cond_1
    new-instance v0, Lorg/apache/ldap/server/db/NoDupsEnumeration;

    .line 901
    new-instance v2, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;

    invoke-direct {v2, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;-><init>(Ljdbm/helper/TupleBrowser;)V

    .line 900
    invoke-direct {v0, v2, p2}, Lorg/apache/ldap/server/db/NoDupsEnumeration;-><init>(Lorg/apache/ldap/server/db/TupleBrowser;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 913
    :goto_0
    iget-boolean p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    if-eqz p1, :cond_2

    .line 915
    new-instance p1, Lorg/apache/ldap/server/db/DupsEnumeration;

    move-object p2, v1

    check-cast p2, Lorg/apache/ldap/server/db/NoDupsEnumeration;

    invoke-direct {p1, v1}, Lorg/apache/ldap/server/db/DupsEnumeration;-><init>(Lorg/apache/ldap/server/db/NoDupsEnumeration;)V

    move-object v1, p1

    :cond_2
    return-object v1

    :catch_0
    move-exception p2

    .line 906
    new-instance v0, Ljavax/naming/NamingException;

    .line 907
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Failed to get TupleBrowser on table "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 908
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " using key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->renderKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 907
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 906
    invoke-direct {v0, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v0, p2}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 910
    throw v0
.end method

.method public listValues(Ljava/lang/Object;)Ljavax/naming/NamingEnumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 738
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    if-nez v0, :cond_1

    .line 740
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 744
    new-instance p1, Lorg/apache/ldap/common/util/EmptyEnumeration;

    invoke-direct {p1}, Lorg/apache/ldap/common/util/EmptyEnumeration;-><init>()V

    return-object p1

    .line 748
    :cond_0
    new-instance v0, Lorg/apache/ldap/common/util/SingletonEnumeration;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/util/SingletonEnumeration;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 752
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TreeSet;

    if-nez p1, :cond_2

    .line 755
    new-instance p1, Lorg/apache/ldap/common/util/EmptyEnumeration;

    invoke-direct {p1}, Lorg/apache/ldap/common/util/EmptyEnumeration;-><init>()V

    return-object p1

    .line 758
    :cond_2
    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 759
    new-instance v0, Lorg/apache/ldap/server/db/jdbm/JdbmTable$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable$1;-><init>(Lorg/apache/ldap/server/db/jdbm/JdbmTable;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 500
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 502
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Ljava/util/TreeSet;

    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->comparator:Lorg/apache/ldap/server/db/TupleComparator;

    invoke-interface {v2}, Lorg/apache/ldap/server/db/TupleComparator;->getValueComparator()Lorg/apache/ldap/server/schema/SerializableComparator;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    goto :goto_0

    .line 508
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p2

    .line 513
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->putRaw(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 515
    iget p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    const/4 p1, 0x0

    return-object p1

    .line 519
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->putRaw(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 523
    iget p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    add-int/2addr p2, v1

    iput p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    :cond_3
    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljavax/naming/NamingEnumeration;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 545
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    if-nez v0, :cond_2

    .line 547
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    .line 551
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p2

    if-nez p2, :cond_0

    .line 558
    invoke-virtual {p0, p1, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 553
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 554
    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Attempting to put duplicate keys into table "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " which does not support duplicates"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 554
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 553
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 570
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-nez v0, :cond_3

    .line 574
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->comparator:Lorg/apache/ldap/server/db/TupleComparator;

    invoke-interface {v1}, Lorg/apache/ldap/server/db/TupleComparator;->getValueComparator()Lorg/apache/ldap/server/schema/SerializableComparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 577
    :cond_3
    :goto_0
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 589
    invoke-direct {p0, p1, v0, v2}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->putRaw(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 579
    :cond_4
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    .line 581
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 583
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 584
    iget v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 711
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->removeRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 718
    :cond_0
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    if-eqz v0, :cond_1

    .line 720
    check-cast p1, Ljava/util/TreeSet;

    .line 721
    iget v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    .line 722
    invoke-virtual {p1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 725
    :cond_1
    iget v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 600
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 602
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-nez v0, :cond_0

    return-object v1

    .line 610
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 612
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 614
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->removeRaw(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 618
    :cond_1
    invoke-direct {p0, p1, v0, v2}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->putRaw(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 622
    :goto_0
    iget p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    return-object p2

    :cond_2
    return-object v1

    .line 630
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 632
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->removeRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljavax/naming/NamingEnumeration;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 654
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->allowsDuplicates:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 656
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    .line 660
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p2

    if-nez p2, :cond_0

    .line 667
    invoke-virtual {p0, p1, v0}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 662
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 663
    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Attempting to put duplicate keys into table "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " which does not support duplicates"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 663
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 662
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v1

    .line 678
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->getRaw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-nez v0, :cond_3

    return-object v1

    .line 689
    :cond_3
    :goto_0
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 701
    invoke-direct {p0, p1, v0, v2}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->putRaw(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 691
    :cond_4
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    .line 693
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 695
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 696
    iget v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    goto :goto_0
.end method

.method public setRenderer(Lorg/apache/ldap/server/db/TupleRenderer;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->renderer:Lorg/apache/ldap/server/db/TupleRenderer;

    return-void
.end method

.method public sync()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 1019
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->recMan:Ljdbm/RecordManager;

    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "_btree_sz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljdbm/RecordManager;->getNamedObject(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 1023
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->recMan:Ljdbm/RecordManager;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;)J

    goto :goto_0

    .line 1027
    :cond_0
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->recMan:Ljdbm/RecordManager;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->count:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v0, v1, v3}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 1032
    new-instance v1, Ljavax/naming/NamingException;

    invoke-direct {v1}, Ljavax/naming/NamingException;-><init>()V

    .line 1033
    invoke-virtual {v1, v0}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 1034
    throw v1
.end method
