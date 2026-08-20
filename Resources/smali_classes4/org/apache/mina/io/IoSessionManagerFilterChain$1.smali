.class Lorg/apache/mina/io/IoSessionManagerFilterChain$1;
.super Ljava/lang/Object;
.source "IoSessionManagerFilterChain.java"

# interfaces
.implements Lorg/apache/mina/io/IoFilter;


# instance fields
.field private final synthetic this$0:Lorg/apache/mina/io/IoSessionManagerFilterChain;


# direct methods
.method constructor <init>(Lorg/apache/mina/io/IoSessionManagerFilterChain;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/apache/mina/io/IoSessionManagerFilterChain$1;->this$0:Lorg/apache/mina/io/IoSessionManagerFilterChain;

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

    .line 78
    invoke-interface {p2}, Lorg/apache/mina/io/IoSession;->getFilterChain()Lorg/apache/mina/io/IoFilterChain;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/io/IoSessionFilterChain;

    invoke-virtual {p1, p2, p3}, Lorg/apache/mina/io/IoSessionFilterChain;->dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V

    return-void
.end method

.method public dataWritten(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    invoke-interface {p2}, Lorg/apache/mina/io/IoSession;->getFilterChain()Lorg/apache/mina/io/IoFilterChain;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/io/IoSessionFilterChain;

    invoke-virtual {p1, p2, p3}, Lorg/apache/mina/io/IoSessionFilterChain;->dataWritten(Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public exceptionCaught(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-interface {p2}, Lorg/apache/mina/io/IoSession;->getFilterChain()Lorg/apache/mina/io/IoFilterChain;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/io/IoSessionFilterChain;

    invoke-virtual {p1, p2, p3}, Lorg/apache/mina/io/IoSessionFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
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

    .line 60
    invoke-interface {p2}, Lorg/apache/mina/io/IoSession;->getFilterChain()Lorg/apache/mina/io/IoFilterChain;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/io/IoSessionFilterChain;

    invoke-virtual {p1, p2}, Lorg/apache/mina/io/IoSessionFilterChain;->sessionClosed(Lorg/apache/mina/io/IoSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-interface {p2}, Lorg/apache/mina/io/IoSession;->getFilterChain()Lorg/apache/mina/io/IoFilterChain;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/io/IoSessionFilterChain;

    invoke-virtual {p1, p2, p3}, Lorg/apache/mina/io/IoSessionFilterChain;->sessionIdle(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-interface {p2}, Lorg/apache/mina/io/IoSession;->getFilterChain()Lorg/apache/mina/io/IoFilterChain;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/io/IoSessionFilterChain;

    invoke-virtual {p1, p2}, Lorg/apache/mina/io/IoSessionFilterChain;->sessionOpened(Lorg/apache/mina/io/IoSession;)V

    return-void
.end method
