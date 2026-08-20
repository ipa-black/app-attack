.class public Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;
.super Lorg/apache/mina/util/BaseThreadPool;
.source "ProtocolThreadPoolFilter.java"

# interfaces
.implements Lorg/apache/mina/util/ThreadPool;
.implements Lorg/apache/mina/protocol/ProtocolFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/mina/util/BaseThreadPool;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
    .locals 1

    .line 72
    sget-object v0, Lorg/apache/mina/util/EventType;->EXCEPTION:Lorg/apache/mina/util/EventType;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;->fireEvent(Ljava/lang/Object;Lorg/apache/mina/common/Session;Lorg/apache/mina/util/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 122
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->filterWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public messageReceived(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 1

    .line 78
    sget-object v0, Lorg/apache/mina/util/EventType;->RECEIVED:Lorg/apache/mina/util/EventType;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;->fireEvent(Ljava/lang/Object;Lorg/apache/mina/common/Session;Lorg/apache/mina/util/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public messageSent(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 1

    .line 84
    sget-object v0, Lorg/apache/mina/util/EventType;->SENT:Lorg/apache/mina/util/EventType;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;->fireEvent(Ljava/lang/Object;Lorg/apache/mina/common/Session;Lorg/apache/mina/util/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method protected processEvent(Ljava/lang/Object;Lorg/apache/mina/common/Session;Lorg/apache/mina/util/EventType;Ljava/lang/Object;)V
    .locals 1

    .line 91
    check-cast p1, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;

    .line 92
    check-cast p2, Lorg/apache/mina/protocol/ProtocolSession;

    .line 94
    sget-object v0, Lorg/apache/mina/util/EventType;->RECEIVED:Lorg/apache/mina/util/EventType;

    if-ne p3, v0, :cond_0

    .line 96
    invoke-interface {p1, p2, p4}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_0
    sget-object v0, Lorg/apache/mina/util/EventType;->SENT:Lorg/apache/mina/util/EventType;

    if-ne p3, v0, :cond_1

    .line 100
    invoke-interface {p1, p2, p4}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_1
    sget-object v0, Lorg/apache/mina/util/EventType;->EXCEPTION:Lorg/apache/mina/util/EventType;

    if-ne p3, v0, :cond_2

    .line 104
    check-cast p4, Ljava/lang/Throwable;

    invoke-interface {p1, p2, p4}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 106
    :cond_2
    sget-object v0, Lorg/apache/mina/util/EventType;->IDLE:Lorg/apache/mina/util/EventType;

    if-ne p3, v0, :cond_3

    .line 108
    check-cast p4, Lorg/apache/mina/common/IdleStatus;

    invoke-interface {p1, p2, p4}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V

    goto :goto_0

    .line 110
    :cond_3
    sget-object p4, Lorg/apache/mina/util/EventType;->OPENED:Lorg/apache/mina/util/EventType;

    if-ne p3, p4, :cond_4

    .line 112
    invoke-interface {p1, p2}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V

    goto :goto_0

    .line 114
    :cond_4
    sget-object p4, Lorg/apache/mina/util/EventType;->CLOSED:Lorg/apache/mina/util/EventType;

    if-ne p3, p4, :cond_5

    .line 116
    invoke-interface {p1, p2}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 2

    .line 60
    sget-object v0, Lorg/apache/mina/util/EventType;->CLOSED:Lorg/apache/mina/util/EventType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;->fireEvent(Ljava/lang/Object;Lorg/apache/mina/common/Session;Lorg/apache/mina/util/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 1

    .line 66
    sget-object v0, Lorg/apache/mina/util/EventType;->IDLE:Lorg/apache/mina/util/EventType;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;->fireEvent(Ljava/lang/Object;Lorg/apache/mina/common/Session;Lorg/apache/mina/util/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 2

    .line 54
    sget-object v0, Lorg/apache/mina/util/EventType;->OPENED:Lorg/apache/mina/util/EventType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;->fireEvent(Ljava/lang/Object;Lorg/apache/mina/common/Session;Lorg/apache/mina/util/EventType;Ljava/lang/Object;)V

    return-void
.end method
