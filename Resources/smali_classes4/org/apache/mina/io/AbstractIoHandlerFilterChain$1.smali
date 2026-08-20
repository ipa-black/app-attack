.class Lorg/apache/mina/io/AbstractIoHandlerFilterChain$1;
.super Ljava/lang/Object;
.source "AbstractIoHandlerFilterChain.java"

# interfaces
.implements Lorg/apache/mina/io/IoHandlerFilter;


# instance fields
.field private final synthetic this$0:Lorg/apache/mina/io/AbstractIoHandlerFilterChain;


# direct methods
.method constructor <init>(Lorg/apache/mina/io/AbstractIoHandlerFilterChain;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/apache/mina/io/AbstractIoHandlerFilterChain$1;->this$0:Lorg/apache/mina/io/AbstractIoHandlerFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataRead(Lorg/apache/mina/io/IoHandlerFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    .locals 0

    .line 100
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoHandlerFilter$NextFilter;->dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V

    return-void
.end method

.method public dataWritten(Lorg/apache/mina/io/IoHandlerFilter$NextFilter;Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V
    .locals 0

    .line 106
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoHandlerFilter$NextFilter;->dataWritten(Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public exceptionCaught(Lorg/apache/mina/io/IoHandlerFilter$NextFilter;Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 94
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoHandlerFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/io/IoHandlerFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    .locals 0

    .line 112
    iget-object p1, p0, Lorg/apache/mina/io/AbstractIoHandlerFilterChain$1;->this$0:Lorg/apache/mina/io/AbstractIoHandlerFilterChain;

    invoke-virtual {p1, p2, p3, p4}, Lorg/apache/mina/io/AbstractIoHandlerFilterChain;->doWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/io/IoHandlerFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V
    .locals 0

    .line 82
    invoke-interface {p1, p2}, Lorg/apache/mina/io/IoHandlerFilter$NextFilter;->sessionClosed(Lorg/apache/mina/io/IoSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/io/IoHandlerFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 0

    .line 88
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoHandlerFilter$NextFilter;->sessionIdle(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/io/IoHandlerFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V
    .locals 0

    .line 77
    invoke-interface {p1, p2}, Lorg/apache/mina/io/IoHandlerFilter$NextFilter;->sessionOpened(Lorg/apache/mina/io/IoSession;)V

    return-void
.end method
