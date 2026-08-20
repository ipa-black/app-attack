.class public Lorg/apache/mina/util/SessionLog;
.super Ljava/lang/Object;
.source "SessionLog.java"


# static fields
.field public static final LOGGER:Ljava/lang/String;

.field public static final PREFIX:Ljava/lang/String;

.field static synthetic class$org$apache$mina$util$SessionLog:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lorg/apache/mina/util/SessionLog;->class$org$apache$mina$util$SessionLog:Ljava/lang/Class;

    const-string v2, "org.apache.mina.util.SessionLog"

    if-nez v1, :cond_0

    invoke-static {v2}, Lorg/apache/mina/util/SessionLog;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/util/SessionLog;->class$org$apache$mina$util$SessionLog:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".prefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/util/SessionLog;->PREFIX:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lorg/apache/mina/util/SessionLog;->class$org$apache$mina$util$SessionLog:Ljava/lang/Class;

    if-nez v1, :cond_1

    invoke-static {v2}, Lorg/apache/mina/util/SessionLog;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/util/SessionLog;->class$org$apache$mina$util$SessionLog:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".logger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/util/SessionLog;->LOGGER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 26
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private static getClassName(Lorg/apache/mina/common/Session;)Ljava/lang/String;
    .locals 1

    .line 55
    instance-of v0, p0, Lorg/apache/mina/io/IoSession;

    if-eqz v0, :cond_0

    .line 56
    check-cast p0, Lorg/apache/mina/io/IoSession;

    invoke-interface {p0}, Lorg/apache/mina/io/IoSession;->getHandler()Lorg/apache/mina/io/IoHandler;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 58
    :cond_0
    check-cast p0, Lorg/apache/mina/protocol/ProtocolSession;

    invoke-interface {p0}, Lorg/apache/mina/protocol/ProtocolSession;->getHandler()Lorg/apache/mina/protocol/ProtocolHandler;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Lorg/apache/mina/common/Session;)Ljava/util/logging/Logger;
    .locals 5

    .line 36
    sget-object v0, Lorg/apache/mina/util/SessionLog;->LOGGER:Ljava/lang/String;

    invoke-interface {p0, v0}, Lorg/apache/mina/common/Session;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Logger;

    if-nez v1, :cond_1

    .line 39
    invoke-static {p0}, Lorg/apache/mina/util/SessionLog;->getClassName(Lorg/apache/mina/common/Session;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 40
    sget-object v2, Lorg/apache/mina/util/SessionLog;->PREFIX:Ljava/lang/String;

    invoke-interface {p0, v2}, Lorg/apache/mina/common/Session;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 43
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/mina/common/Session;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-interface {p0, v2, v3}, Lorg/apache/mina/common/Session;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    invoke-interface {p0, v0, v1}, Lorg/apache/mina/common/Session;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public static log(Ljava/util/logging/Level;Lorg/apache/mina/common/Session;Ljava/lang/String;)V
    .locals 1

    .line 63
    invoke-static {p1}, Lorg/apache/mina/util/SessionLog;->getLogger(Lorg/apache/mina/common/Session;)Ljava/util/logging/Logger;

    move-result-object p1

    .line 64
    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1, p0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Ljava/util/logging/Level;Lorg/apache/mina/common/Session;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 72
    invoke-static {p1}, Lorg/apache/mina/util/SessionLog;->getLogger(Lorg/apache/mina/common/Session;)Ljava/util/logging/Logger;

    move-result-object p1

    .line 73
    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1, p0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
