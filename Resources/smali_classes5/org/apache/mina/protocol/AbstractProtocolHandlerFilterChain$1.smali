.class Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$1;
.super Ljava/lang/Object;
.source "AbstractProtocolHandlerFilterChain.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolHandlerFilter;


# instance fields
.field private final synthetic this$0:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;


# direct methods
.method constructor <init>(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$1;->this$0:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 93
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 111
    iget-object p1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$1;->this$0:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;

    invoke-virtual {p1, p2, p3}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->doWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public messageReceived(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 99
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;->messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public messageSent(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 105
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;->messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 0

    .line 81
    invoke-interface {p1, p2}, Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;->sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 0

    .line 87
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;->sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 0

    .line 76
    invoke-interface {p1, p2}, Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;->sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method
