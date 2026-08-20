.class public Lorg/apache/mina/examples/netcat/NetCatProtocolHandler;
.super Lorg/apache/mina/io/IoHandlerAdapter;
.source "NetCatProtocolHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/mina/io/IoHandlerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    .locals 1

    .line 60
    :goto_0
    invoke-virtual {p2}, Lorg/apache/mina/common/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Lorg/apache/mina/common/ByteBuffer;->get()B

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(C)V

    goto :goto_0

    .line 64
    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/io/IoSession;)V
    .locals 4

    .line 47
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Total "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/mina/io/IoSession;->getReadBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " byte(s)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 1

    .line 53
    sget-object v0, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    if-ne p2, v0, :cond_0

    .line 54
    invoke-interface {p1}, Lorg/apache/mina/io/IoSession;->close()V

    :cond_0
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/io/IoSession;)V
    .locals 2

    .line 41
    invoke-interface {p1}, Lorg/apache/mina/io/IoSession;->getConfig()Lorg/apache/mina/common/SessionConfig;

    move-result-object p1

    sget-object v0, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    const/16 v1, 0xa

    invoke-interface {p1, v0, v1}, Lorg/apache/mina/common/SessionConfig;->setIdleTime(Lorg/apache/mina/common/IdleStatus;I)V

    return-void
.end method
