.class public Lorg/apache/mina/examples/sumup/ServerSessionHandler;
.super Ljava/lang/Object;
.source "ServerSessionHandler.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 88
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->close()V

    return-void
.end method

.method public messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 4

    .line 42
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "RCVD: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    check-cast p2, Lorg/apache/mina/examples/sumup/AddMessage;

    .line 48
    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 49
    invoke-virtual {p2}, Lorg/apache/mina/examples/sumup/AddMessage;->getValue()I

    move-result v1

    int-to-long v2, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    const-wide/32 v0, -0x80000000

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v0, v2

    .line 63
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, v1}, Lorg/apache/mina/protocol/ProtocolSession;->setAttachment(Ljava/lang/Object;)V

    .line 66
    new-instance v1, Lorg/apache/mina/examples/sumup/ResultMessage;

    invoke-direct {v1}, Lorg/apache/mina/examples/sumup/ResultMessage;-><init>()V

    .line 67
    invoke-virtual {p2}, Lorg/apache/mina/examples/sumup/AddMessage;->getSequence()I

    move-result p2

    invoke-virtual {v1, p2}, Lorg/apache/mina/examples/sumup/ResultMessage;->setSequence(I)V

    const/4 p2, 0x1

    .line 68
    invoke-virtual {v1, p2}, Lorg/apache/mina/examples/sumup/ResultMessage;->setOk(Z)V

    .line 69
    invoke-virtual {v1, v0}, Lorg/apache/mina/examples/sumup/ResultMessage;->setValue(I)V

    .line 70
    invoke-interface {p1, v1}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/mina/examples/sumup/ResultMessage;

    invoke-direct {v0}, Lorg/apache/mina/examples/sumup/ResultMessage;-><init>()V

    .line 55
    invoke-virtual {p2}, Lorg/apache/mina/examples/sumup/AddMessage;->getSequence()I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/apache/mina/examples/sumup/ResultMessage;->setSequence(I)V

    const/4 p2, 0x0

    .line 56
    invoke-virtual {v0, p2}, Lorg/apache/mina/examples/sumup/ResultMessage;->setOk(Z)V

    .line 57
    invoke-interface {p1, v0}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 2

    .line 76
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SENT: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 1

    .line 37
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "CLOSED"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 1

    .line 81
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Disconnecting the idle."

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->close()V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 3

    .line 27
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "OPENED"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->getConfig()Lorg/apache/mina/common/SessionConfig;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    const/16 v2, 0x3c

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/common/SessionConfig;->setIdleTime(Lorg/apache/mina/common/IdleStatus;I)V

    .line 32
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, v0}, Lorg/apache/mina/protocol/ProtocolSession;->setAttachment(Ljava/lang/Object;)V

    return-void
.end method
