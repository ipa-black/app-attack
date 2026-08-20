.class public Lorg/apache/mina/protocol/filter/ProtocolLoggingFilter;
.super Ljava/lang/Object;
.source "ProtocolLoggingFilter.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolFilter;


# static fields
.field public static final LOGGER:Ljava/lang/String;

.field public static final PREFIX:Ljava/lang/String;


# instance fields
.field private defaultLevel:Ljava/util/logging/Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Lorg/apache/mina/util/SessionLog;->PREFIX:Ljava/lang/String;

    sput-object v0, Lorg/apache/mina/protocol/filter/ProtocolLoggingFilter;->PREFIX:Ljava/lang/String;

    .line 48
    sget-object v0, Lorg/apache/mina/util/SessionLog;->LOGGER:Ljava/lang/String;

    sput-object v0, Lorg/apache/mina/protocol/filter/ProtocolLoggingFilter;->LOGGER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iput-object v0, p0, Lorg/apache/mina/protocol/filter/ProtocolLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/apache/mina/protocol/filter/ProtocolLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    const-string v1, "EXCEPTION:"

    invoke-static {v0, p2, v1, p3}, Lorg/apache/mina/util/SessionLog;->log(Ljava/util/logging/Level;Lorg/apache/mina/common/Session;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lorg/apache/mina/protocol/filter/ProtocolLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "WRITE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/apache/mina/util/SessionLog;->log(Ljava/util/logging/Level;Lorg/apache/mina/common/Session;Ljava/lang/String;)V

    .line 117
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->filterWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public getDefaultLevel()Ljava/util/logging/Level;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/mina/protocol/filter/ProtocolLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    return-object v0
.end method

.method public messageReceived(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 3

    .line 104
    iget-object v0, p0, Lorg/apache/mina/protocol/filter/ProtocolLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "RECEIVED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/apache/mina/util/SessionLog;->log(Ljava/util/logging/Level;Lorg/apache/mina/common/Session;Ljava/lang/String;)V

    .line 105
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public messageSent(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lorg/apache/mina/protocol/filter/ProtocolLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "SENT: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/apache/mina/util/SessionLog;->log(Ljava/util/logging/Level;Lorg/apache/mina/common/Session;Ljava/lang/String;)V

    .line 111
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/apache/mina/protocol/filter/ProtocolLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    const-string v1, "CLOSED"

    invoke-static {v0, p2, v1}, Lorg/apache/mina/util/SessionLog;->log(Ljava/util/logging/Level;Lorg/apache/mina/common/Session;Ljava/lang/String;)V

    .line 87
    invoke-interface {p1, p2}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lorg/apache/mina/protocol/filter/ProtocolLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "IDLE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/apache/mina/util/SessionLog;->log(Ljava/util/logging/Level;Lorg/apache/mina/common/Session;Ljava/lang/String;)V

    .line 93
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/apache/mina/protocol/filter/ProtocolLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    const-string v1, "OPENED"

    invoke-static {v0, p2, v1}, Lorg/apache/mina/util/SessionLog;->log(Ljava/util/logging/Level;Lorg/apache/mina/common/Session;Ljava/lang/String;)V

    .line 81
    invoke-interface {p1, p2}, Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;->sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method

.method public setDefaultLevel(Ljava/util/logging/Level;)V
    .locals 0

    if-nez p1, :cond_0

    .line 73
    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 75
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/protocol/filter/ProtocolLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    return-void
.end method
