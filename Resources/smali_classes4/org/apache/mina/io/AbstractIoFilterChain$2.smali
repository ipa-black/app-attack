.class Lorg/apache/mina/io/AbstractIoFilterChain$2;
.super Ljava/lang/Object;
.source "AbstractIoFilterChain.java"

# interfaces
.implements Lorg/apache/mina/io/IoFilter;


# instance fields
.field private final synthetic this$0:Lorg/apache/mina/io/AbstractIoFilterChain;


# direct methods
.method constructor <init>(Lorg/apache/mina/io/AbstractIoFilterChain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lorg/apache/mina/io/AbstractIoFilterChain$2;->this$0:Lorg/apache/mina/io/AbstractIoFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataRead(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-interface {p2}, Lorg/apache/mina/io/IoSession;->getHandler()Lorg/apache/mina/io/IoHandler;

    move-result-object p1

    .line 150
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoHandler;->dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V

    .line 151
    invoke-virtual {p3}, Lorg/apache/mina/common/ByteBuffer;->release()V

    return-void
.end method

.method public dataWritten(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    invoke-interface {p2}, Lorg/apache/mina/io/IoSession;->getHandler()Lorg/apache/mina/io/IoHandler;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoHandler;->dataWritten(Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public exceptionCaught(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    invoke-interface {p2}, Lorg/apache/mina/io/IoSession;->getHandler()Lorg/apache/mina/io/IoHandler;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoHandler;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    invoke-interface {p1, p2, p3, p4}, Lorg/apache/mina/io/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    invoke-interface {p2}, Lorg/apache/mina/io/IoSession;->getHandler()Lorg/apache/mina/io/IoHandler;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/io/IoHandler;->sessionClosed(Lorg/apache/mina/io/IoSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    invoke-interface {p2}, Lorg/apache/mina/io/IoSession;->getHandler()Lorg/apache/mina/io/IoHandler;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoHandler;->sessionIdle(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-interface {p2}, Lorg/apache/mina/io/IoSession;->getHandler()Lorg/apache/mina/io/IoHandler;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/io/IoHandler;->sessionOpened(Lorg/apache/mina/io/IoSession;)V

    return-void
.end method
