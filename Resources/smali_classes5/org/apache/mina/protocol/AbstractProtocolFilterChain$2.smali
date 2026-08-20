.class Lorg/apache/mina/protocol/AbstractProtocolFilterChain$2;
.super Ljava/lang/Object;
.source "AbstractProtocolFilterChain.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolFilter;


# instance fields
.field private final synthetic this$0:Lorg/apache/mina/protocol/AbstractProtocolFilterChain;


# direct methods
.method constructor <init>(Lorg/apache/mina/protocol/AbstractProtocolFilterChain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$2;->this$0:Lorg/apache/mina/protocol/AbstractProtocolFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    invoke-interface {p2}, Lorg/apache/mina/protocol/ProtocolSession;->getHandler()Lorg/apache/mina/protocol/ProtocolHandler;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandler;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->filterWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public messageReceived(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    invoke-interface {p2}, Lorg/apache/mina/protocol/ProtocolSession;->getHandler()Lorg/apache/mina/protocol/ProtocolHandler;

    move-result-object p1

    .line 149
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandler;->messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public messageSent(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    invoke-interface {p2}, Lorg/apache/mina/protocol/ProtocolSession;->getHandler()Lorg/apache/mina/protocol/ProtocolHandler;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandler;->messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    invoke-interface {p2}, Lorg/apache/mina/protocol/ProtocolSession;->getHandler()Lorg/apache/mina/protocol/ProtocolHandler;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/protocol/ProtocolHandler;->sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-interface {p2}, Lorg/apache/mina/protocol/ProtocolSession;->getHandler()Lorg/apache/mina/protocol/ProtocolHandler;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandler;->sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-interface {p2}, Lorg/apache/mina/protocol/ProtocolSession;->getHandler()Lorg/apache/mina/protocol/ProtocolHandler;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/protocol/ProtocolHandler;->sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method
