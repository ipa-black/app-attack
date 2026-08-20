.class public Lorg/apache/mina/io/filter/BlacklistFilter;
.super Lorg/apache/mina/io/IoFilterAdapter;
.source "BlacklistFilter.java"


# instance fields
.field private final blacklist:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/apache/mina/io/IoFilterAdapter;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/filter/BlacklistFilter;->blacklist:Ljava/util/Set;

    return-void
.end method

.method private isBlocked(Lorg/apache/mina/io/IoSession;)Z
    .locals 1

    .line 92
    invoke-interface {p1}, Lorg/apache/mina/io/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object p1

    .line 93
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/apache/mina/io/filter/BlacklistFilter;->blacklist:Ljava/util/Set;

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public declared-synchronized block(Ljava/net/InetAddress;)V
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/io/filter/BlacklistFilter;->blacklist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dataRead(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p2}, Lorg/apache/mina/io/filter/BlacklistFilter;->isBlocked(Lorg/apache/mina/io/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-super {p0, p1, p2, p3}, Lorg/apache/mina/io/IoFilterAdapter;->dataRead(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    invoke-direct {p0, p2}, Lorg/apache/mina/io/filter/BlacklistFilter;->isBlocked(Lorg/apache/mina/io/IoSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p2}, Lorg/apache/mina/io/IoSession;->close()V

    goto :goto_0

    .line 86
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/mina/io/IoFilterAdapter;->sessionOpened(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized unblock(Ljava/net/InetAddress;)V
    .locals 1

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/io/filter/BlacklistFilter;->blacklist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
