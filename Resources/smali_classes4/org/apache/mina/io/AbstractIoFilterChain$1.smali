.class Lorg/apache/mina/io/AbstractIoFilterChain$1;
.super Ljava/lang/Object;
.source "AbstractIoFilterChain.java"

# interfaces
.implements Lorg/apache/mina/io/IoFilter;


# instance fields
.field private final synthetic this$0:Lorg/apache/mina/io/AbstractIoFilterChain;


# direct methods
.method constructor <init>(Lorg/apache/mina/io/AbstractIoFilterChain;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/apache/mina/io/AbstractIoFilterChain$1;->this$0:Lorg/apache/mina/io/AbstractIoFilterChain;

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

    .line 100
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoFilter$NextFilter;->dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V

    return-void
.end method

.method public dataWritten(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoFilter$NextFilter;->dataWritten(Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public exceptionCaught(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    iget-object p1, p0, Lorg/apache/mina/io/AbstractIoFilterChain$1;->this$0:Lorg/apache/mina/io/AbstractIoFilterChain;

    invoke-virtual {p1, p2, p3, p4}, Lorg/apache/mina/io/AbstractIoFilterChain;->doWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    invoke-interface {p1, p2}, Lorg/apache/mina/io/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/io/IoSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    invoke-interface {p1, p2}, Lorg/apache/mina/io/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/io/IoSession;)V

    return-void
.end method
