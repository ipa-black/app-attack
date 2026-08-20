.class public Lorg/apache/mina/examples/sumup/ClientSessionHandler;
.super Ljava/lang/Object;
.source "ClientSessionHandler.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolHandler;


# instance fields
.field private finished:Z

.field private final values:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/apache/mina/examples/sumup/ClientSessionHandler;->values:[I

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 91
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->close()V

    return-void
.end method

.method public isFinished()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lorg/apache/mina/examples/sumup/ClientSessionHandler;->finished:Z

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 4

    .line 52
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "RCVD: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    check-cast p2, Lorg/apache/mina/examples/sumup/ResultMessage;

    .line 56
    invoke-virtual {p2}, Lorg/apache/mina/examples/sumup/ResultMessage;->isOk()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p2}, Lorg/apache/mina/examples/sumup/ResultMessage;->getSequence()I

    move-result v0

    iget-object v2, p0, Lorg/apache/mina/examples/sumup/ClientSessionHandler;->values:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    .line 65
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "The sum: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/mina/examples/sumup/ResultMessage;->getValue()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->close()V

    .line 67
    iput-boolean v1, p0, Lorg/apache/mina/examples/sumup/ClientSessionHandler;->finished:Z

    goto :goto_0

    .line 73
    :cond_0
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Server error, disconnecting..."

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->close()V

    .line 75
    iput-boolean v1, p0, Lorg/apache/mina/examples/sumup/ClientSessionHandler;->finished:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 2

    .line 81
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

    .line 47
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "CLOSED"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 0

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 3

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "OPENED"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 36
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/examples/sumup/ClientSessionHandler;->values:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 38
    new-instance v1, Lorg/apache/mina/examples/sumup/AddMessage;

    invoke-direct {v1}, Lorg/apache/mina/examples/sumup/AddMessage;-><init>()V

    .line 39
    invoke-virtual {v1, v0}, Lorg/apache/mina/examples/sumup/AddMessage;->setSequence(I)V

    .line 40
    iget-object v2, p0, Lorg/apache/mina/examples/sumup/ClientSessionHandler;->values:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/mina/examples/sumup/AddMessage;->setValue(I)V

    .line 41
    invoke-interface {p1, v1}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
