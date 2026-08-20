.class Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;
.super Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;
.source "VmPipeSessionManagerFilterChain.java"


# direct methods
.method constructor <init>(Lorg/apache/mina/protocol/ProtocolSessionManager;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;-><init>(Lorg/apache/mina/protocol/ProtocolSessionManager;)V

    return-void
.end method


# virtual methods
.method protected doWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 2

    .line 16
    check-cast p1, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;

    .line 18
    iget-object v0, p1, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_0
    iget-boolean v1, p1, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->closed:Z

    if-nez v1, :cond_0

    .line 22
    iget-object v1, p1, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->remoteSession:Lorg/apache/mina/protocol/vmpipe/VmPipeSession;

    invoke-virtual {v1}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->getManagerFilterChain()Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    move-result-object v1

    iget-object p1, p1, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->remoteSession:Lorg/apache/mina/protocol/vmpipe/VmPipeSession;

    invoke-virtual {v1, p1, p2}, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;->messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    .line 23
    monitor-exit v0

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Session is closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
