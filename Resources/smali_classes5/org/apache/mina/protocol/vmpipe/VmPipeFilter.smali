.class Lorg/apache/mina/protocol/vmpipe/VmPipeFilter;
.super Lorg/apache/mina/protocol/ProtocolFilterAdapter;
.source "VmPipeFilter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/apache/mina/protocol/ProtocolFilterAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 3

    .line 21
    move-object v0, p2

    check-cast v0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;

    .line 23
    sget-object v1, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->setIdle(Lorg/apache/mina/common/IdleStatus;Z)V

    .line 24
    sget-object v1, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->setIdle(Lorg/apache/mina/common/IdleStatus;Z)V

    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->increaseReadBytes(I)V

    .line 28
    iget-object v1, v0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->remoteSession:Lorg/apache/mina/protocol/vmpipe/VmPipeSession;

    invoke-virtual {v1}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->getManagerFilterChain()Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    move-result-object v1

    iget-object v0, v0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->remoteSession:Lorg/apache/mina/protocol/vmpipe/VmPipeSession;

    invoke-virtual {v1, v0, p3}, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;->messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    .line 31
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public messageSent(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 3

    .line 37
    move-object v0, p2

    check-cast v0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;

    .line 38
    sget-object v1, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->setIdle(Lorg/apache/mina/common/IdleStatus;Z)V

    .line 39
    sget-object v1, Lorg/apache/mina/common/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->setIdle(Lorg/apache/mina/common/IdleStatus;Z)V

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->increaseWrittenBytes(I)V

    .line 42
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method
