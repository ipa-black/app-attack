.class public Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;
.super Lorg/apache/ldap/server/db/jdbm/JdbmTable;
.source "JdbmMasterTable.java"

# interfaces
.implements Lorg/apache/ldap/server/db/MasterTable;


# static fields
.field private static final BIG_INTEGER_COMPARATOR:Lorg/apache/ldap/server/schema/SerializableComparator;

.field private static final STRCOMP:Ljdbm/helper/StringComparator;

.field private static final STRING_COMPARATOR:Lorg/apache/ldap/server/schema/SerializableComparator;


# instance fields
.field private adminTbl:Lorg/apache/ldap/server/db/jdbm/JdbmTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljdbm/helper/StringComparator;

    invoke-direct {v0}, Ljdbm/helper/StringComparator;-><init>()V

    sput-object v0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->STRCOMP:Ljdbm/helper/StringComparator;

    .line 41
    new-instance v0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable$1;

    const-string v1, "1.2.6.1.4.1.18060.1.1.1.2.2"

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable$1;-><init>(Ljava/lang/String;)V

    .line 40
    sput-object v0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->BIG_INTEGER_COMPARATOR:Lorg/apache/ldap/server/schema/SerializableComparator;

    .line 51
    new-instance v0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable$2;

    const-string v1, "1.2.6.1.4.1.18060.1.1.1.2.3"

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable$2;-><init>(Ljava/lang/String;)V

    .line 50
    sput-object v0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->STRING_COMPARATOR:Lorg/apache/ldap/server/schema/SerializableComparator;

    return-void
.end method

.method public constructor <init>(Ljdbm/RecordManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 73
    const-string v0, "master"

    sget-object v1, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->BIG_INTEGER_COMPARATOR:Lorg/apache/ldap/server/schema/SerializableComparator;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;-><init>(Ljava/lang/String;Ljdbm/RecordManager;Lorg/apache/ldap/server/schema/SerializableComparator;)V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->adminTbl:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    .line 74
    new-instance v0, Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    const-string v1, "admin"

    sget-object v2, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->STRING_COMPARATOR:Lorg/apache/ldap/server/schema/SerializableComparator;

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;-><init>(Ljava/lang/String;Ljdbm/RecordManager;Lorg/apache/ldap/server/schema/SerializableComparator;)V

    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->adminTbl:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    .line 75
    const-string p1, "__sequence__"

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->adminTbl:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic access$0()Ljdbm/helper/StringComparator;
    .locals 1

    .line 39
    sget-object v0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->STRCOMP:Ljdbm/helper/StringComparator;

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 122
    invoke-super {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attributes;

    return-object p1
.end method

.method public get(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 93
    invoke-super {p0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attributes;

    return-object p1
.end method

.method public getCurrentId()Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->adminTbl:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    monitor-enter v0

    .line 140
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->adminTbl:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    const-string v3, "__sequence__"

    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getNextId()Ljava/math/BigInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->adminTbl:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    monitor-enter v0

    .line 170
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    .line 171
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->adminTbl:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    const-string v3, "__sequence__"

    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 170
    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 180
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->adminTbl:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    const-string v3, "__sequence__"

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->adminTbl:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->adminTbl:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {v1, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 198
    monitor-exit v0

    throw p1
.end method

.method public put(Ljavax/naming/directory/Attributes;Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 109
    invoke-super {p0, p2, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attributes;

    return-object p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->adminTbl:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->adminTbl:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    invoke-virtual {v1, p1, p2}, Lorg/apache/ldap/server/db/jdbm/JdbmTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
