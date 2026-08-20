.class Lorg/apache/mina/io/datagram/DatagramSessionManagerFilterChain;
.super Lorg/apache/mina/io/IoSessionManagerFilterChain;
.source "DatagramSessionManagerFilterChain.java"


# direct methods
.method constructor <init>(Lorg/apache/mina/io/datagram/DatagramSessionManager;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lorg/apache/mina/io/IoSessionManagerFilterChain;-><init>(Lorg/apache/mina/io/IoSessionManager;)V

    return-void
.end method


# virtual methods
.method protected doWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    .locals 2

    .line 23
    check-cast p1, Lorg/apache/mina/io/datagram/DatagramSession;

    .line 24
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getWriteBufferQueue()Lorg/apache/mina/util/Queue;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getWriteMarkerQueue()Lorg/apache/mina/util/Queue;

    move-result-object v1

    .line 27
    monitor-enter v0

    .line 29
    :try_start_0
    invoke-virtual {v0, p2}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v1, p3}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {p0}, Lorg/apache/mina/io/datagram/DatagramSessionManagerFilterChain;->getManager()Lorg/apache/mina/io/IoSessionManager;

    move-result-object p2

    check-cast p2, Lorg/apache/mina/io/datagram/DatagramSessionManager;

    invoke-virtual {p2, p1}, Lorg/apache/mina/io/datagram/DatagramSessionManager;->flushSession(Lorg/apache/mina/io/datagram/DatagramSession;)V

    return-void

    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
