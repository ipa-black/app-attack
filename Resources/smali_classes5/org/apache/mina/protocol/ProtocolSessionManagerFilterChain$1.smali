.class Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain$1;
.super Ljava/lang/Object;
.source "ProtocolSessionManagerFilterChain.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolFilter;


# instance fields
.field private final synthetic this$0:Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;


# direct methods
.method constructor <init>(Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain$1;->this$0:Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 71
    invoke-interface {p2}, Lorg/apache/mina/protocol/ProtocolSession;->getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

    invoke-virtual {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 89
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->filterWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public messageReceived(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 77
    invoke-interface {p2}, Lorg/apache/mina/protocol/ProtocolSession;->getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

    invoke-virtual {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;->messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public messageSent(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 83
    invoke-interface {p2}, Lorg/apache/mina/protocol/ProtocolSession;->getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

    invoke-virtual {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;->messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 0

    .line 59
    invoke-interface {p2}, Lorg/apache/mina/protocol/ProtocolSession;->getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

    invoke-virtual {p1, p2}, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;->sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 0

    .line 65
    invoke-interface {p2}, Lorg/apache/mina/protocol/ProtocolSession;->getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

    invoke-virtual {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;->sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 0

    .line 54
    invoke-interface {p2}, Lorg/apache/mina/protocol/ProtocolSession;->getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

    invoke-virtual {p1, p2}, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;->sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method
