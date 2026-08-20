.class Lorg/apache/mina/io/socket/SocketSessionManagerFilterChain;
.super Lorg/apache/mina/io/IoSessionManagerFilterChain;
.source "SocketSessionManagerFilterChain.java"


# direct methods
.method constructor <init>(Lorg/apache/mina/io/IoSessionManager;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/apache/mina/io/IoSessionManagerFilterChain;-><init>(Lorg/apache/mina/io/IoSessionManager;)V

    return-void
.end method


# virtual methods
.method protected doWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    .locals 2

    .line 24
    check-cast p1, Lorg/apache/mina/io/socket/SocketSession;

    .line 25
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getWriteBufferQueue()Lorg/apache/mina/util/Queue;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getWriteMarkerQueue()Lorg/apache/mina/util/Queue;

    move-result-object v1

    .line 28
    monitor-enter v0

    .line 30
    :try_start_0
    invoke-virtual {v0, p2}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v1, p3}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {}, Lorg/apache/mina/io/socket/SocketIoProcessor;->getInstance()Lorg/apache/mina/io/socket/SocketIoProcessor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/mina/io/socket/SocketIoProcessor;->flushSession(Lorg/apache/mina/io/socket/SocketSession;)V

    return-void

    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
