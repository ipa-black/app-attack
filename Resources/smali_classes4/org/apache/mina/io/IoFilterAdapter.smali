.class public Lorg/apache/mina/io/IoFilterAdapter;
.super Ljava/lang/Object;
.source "IoFilterAdapter.java"

# interfaces
.implements Lorg/apache/mina/io/IoFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
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

    .line 63
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

    .line 69
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

    .line 57
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

    .line 75
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

    .line 45
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

    .line 51
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

    .line 40
    invoke-interface {p1, p2}, Lorg/apache/mina/io/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/io/IoSession;)V

    return-void
.end method
