.class public Lorg/apache/mina/protocol/ProtocolHandlerFilterAdapter;
.super Ljava/lang/Object;
.source "ProtocolHandlerFilterAdapter.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolHandlerFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 54
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 71
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;->filterWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public messageReceived(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 60
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;->messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public messageSent(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 66
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;->messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 0

    .line 42
    invoke-interface {p1, p2}, Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;->sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 0

    .line 48
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;->sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 0

    .line 36
    invoke-interface {p1, p2}, Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;->sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method
