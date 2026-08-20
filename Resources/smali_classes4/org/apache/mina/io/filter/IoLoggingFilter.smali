.class public Lorg/apache/mina/io/filter/IoLoggingFilter;
.super Ljava/lang/Object;
.source "IoLoggingFilter.java"

# interfaces
.implements Lorg/apache/mina/io/IoFilter;


# static fields
.field public static final LOGGER:Ljava/lang/String;

.field public static final PREFIX:Ljava/lang/String;


# instance fields
.field private defaultLevel:Ljava/util/logging/Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/mina/util/SessionLog;->PREFIX:Ljava/lang/String;

    sput-object v0, Lorg/apache/mina/io/filter/IoLoggingFilter;->PREFIX:Ljava/lang/String;

    .line 49
    sget-object v0, Lorg/apache/mina/util/SessionLog;->LOGGER:Ljava/lang/String;

    sput-object v0, Lorg/apache/mina/io/filter/IoLoggingFilter;->LOGGER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iput-object v0, p0, Lorg/apache/mina/io/filter/IoLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    return-void
.end method


# virtual methods
.method public dataRead(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    .locals 3

    .line 104
    iget-object v0, p0, Lorg/apache/mina/io/filter/IoLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "READ: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/apache/mina/common/ByteBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/apache/mina/util/SessionLog;->log(Ljava/util/logging/Level;Lorg/apache/mina/common/Session;Ljava/lang/String;)V

    .line 105
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoFilter$NextFilter;->dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V

    return-void
.end method

.method public dataWritten(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lorg/apache/mina/io/filter/IoLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "WRITTEN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/apache/mina/util/SessionLog;->log(Ljava/util/logging/Level;Lorg/apache/mina/common/Session;Ljava/lang/String;)V

    .line 111
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoFilter$NextFilter;->dataWritten(Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public exceptionCaught(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/apache/mina/io/filter/IoLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    const-string v1, "EXCEPTION:"

    invoke-static {v0, p2, v1, p3}, Lorg/apache/mina/util/SessionLog;->log(Ljava/util/logging/Level;Lorg/apache/mina/common/Session;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lorg/apache/mina/io/filter/IoLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "WRITE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p3}, Lorg/apache/mina/common/ByteBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/apache/mina/util/SessionLog;->log(Ljava/util/logging/Level;Lorg/apache/mina/common/Session;Ljava/lang/String;)V

    .line 117
    invoke-interface {p1, p2, p3, p4}, Lorg/apache/mina/io/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public getDefaultLevel()Ljava/util/logging/Level;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/mina/io/filter/IoLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    return-object v0
.end method

.method public sessionClosed(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/apache/mina/io/filter/IoLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    const-string v1, "CLOSED"

    invoke-static {v0, p2, v1}, Lorg/apache/mina/util/SessionLog;->log(Ljava/util/logging/Level;Lorg/apache/mina/common/Session;Ljava/lang/String;)V

    .line 87
    invoke-interface {p1, p2}, Lorg/apache/mina/io/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/io/IoSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lorg/apache/mina/io/filter/IoLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "IDLE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/apache/mina/util/SessionLog;->log(Ljava/util/logging/Level;Lorg/apache/mina/common/Session;Ljava/lang/String;)V

    .line 93
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/apache/mina/io/filter/IoLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    const-string v1, "OPENED"

    invoke-static {v0, p2, v1}, Lorg/apache/mina/util/SessionLog;->log(Ljava/util/logging/Level;Lorg/apache/mina/common/Session;Ljava/lang/String;)V

    .line 81
    invoke-interface {p1, p2}, Lorg/apache/mina/io/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/io/IoSession;)V

    return-void
.end method

.method public setDefaultLevel(Ljava/util/logging/Level;)V
    .locals 0

    if-nez p1, :cond_0

    .line 73
    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 75
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/io/filter/IoLoggingFilter;->defaultLevel:Ljava/util/logging/Level;

    return-void
.end method
