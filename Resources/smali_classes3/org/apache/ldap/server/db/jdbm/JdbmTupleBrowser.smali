.class public Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;
.super Ljava/lang/Object;
.source "JdbmTupleBrowser.java"

# interfaces
.implements Lorg/apache/ldap/server/db/TupleBrowser;


# instance fields
.field private jdbmBrowser:Ljdbm/helper/TupleBrowser;

.field private jdbmTuple:Ljdbm/helper/Tuple;


# direct methods
.method public constructor <init>(Ljdbm/helper/TupleBrowser;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljdbm/helper/Tuple;

    invoke-direct {v0}, Ljdbm/helper/Tuple;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;->jdbmTuple:Ljdbm/helper/Tuple;

    .line 48
    iput-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;->jdbmBrowser:Ljdbm/helper/TupleBrowser;

    return-void
.end method


# virtual methods
.method public getNext(Lorg/apache/ldap/server/db/Tuple;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;->jdbmTuple:Ljdbm/helper/Tuple;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;->jdbmBrowser:Ljdbm/helper/TupleBrowser;

    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;->jdbmTuple:Ljdbm/helper/Tuple;

    invoke-virtual {v1, v2}, Ljdbm/helper/TupleBrowser;->getNext(Ljdbm/helper/Tuple;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 75
    :try_start_1
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;->jdbmTuple:Ljdbm/helper/Tuple;

    invoke-virtual {v2}, Ljdbm/helper/Tuple;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ldap/server/db/Tuple;->setKey(Ljava/lang/Object;)V

    .line 76
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;->jdbmTuple:Ljdbm/helper/Tuple;

    invoke-virtual {v2}, Ljdbm/helper/Tuple;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ldap/server/db/Tuple;->setValue(Ljava/lang/Object;)V

    .line 59
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    new-instance v1, Ljavax/naming/NamingException;

    .line 68
    const-string v2, "Failed on call to jdbm TupleBrowser.getNext()"

    .line 67
    invoke-direct {v1, v2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, p1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 70
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public getPrevious(Lorg/apache/ldap/server/db/Tuple;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;->jdbmTuple:Ljdbm/helper/Tuple;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;->jdbmBrowser:Ljdbm/helper/TupleBrowser;

    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;->jdbmTuple:Ljdbm/helper/Tuple;

    invoke-virtual {v1, v2}, Ljdbm/helper/TupleBrowser;->getPrevious(Ljdbm/helper/Tuple;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 107
    :try_start_1
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;->jdbmTuple:Ljdbm/helper/Tuple;

    invoke-virtual {v2}, Ljdbm/helper/Tuple;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ldap/server/db/Tuple;->setKey(Ljava/lang/Object;)V

    .line 108
    iget-object v2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTupleBrowser;->jdbmTuple:Ljdbm/helper/Tuple;

    invoke-virtual {v2}, Ljdbm/helper/Tuple;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ldap/server/db/Tuple;->setValue(Ljava/lang/Object;)V

    .line 91
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    new-instance v1, Ljavax/naming/NamingException;

    .line 100
    const-string v2, "Failed on call to jdbm TupleBrowser.getPrevious()"

    .line 99
    invoke-direct {v1, v2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, p1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 102
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_0
    monitor-exit v0

    throw p1
.end method
