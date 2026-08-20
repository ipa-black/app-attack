.class Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;
.super Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;
.source "IoProtocolSessionManagerFilterChain.java"


# direct methods
.method constructor <init>(Lorg/apache/mina/protocol/ProtocolSessionManager;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;-><init>(Lorg/apache/mina/protocol/ProtocolSessionManager;)V

    return-void
.end method


# virtual methods
.method protected doWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 1

    .line 17
    check-cast p1, Lorg/apache/mina/protocol/io/IoProtocolSession;

    .line 18
    iget-object v0, p1, Lorg/apache/mina/protocol/io/IoProtocolSession;->writeQueue:Lorg/apache/mina/util/Queue;

    .line 19
    monitor-enter v0

    .line 21
    :try_start_0
    invoke-virtual {v0, p2}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object p2, p1, Lorg/apache/mina/protocol/io/IoProtocolSession;->shAdapter:Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;

    iget-object p1, p1, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-virtual {p2, p1}, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->doWrite(Lorg/apache/mina/io/IoSession;)V

    return-void

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
