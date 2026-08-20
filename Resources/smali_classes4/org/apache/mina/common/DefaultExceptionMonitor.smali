.class public Lorg/apache/mina/common/DefaultExceptionMonitor;
.super Ljava/lang/Object;
.source "DefaultExceptionMonitor.java"

# interfaces
.implements Lorg/apache/mina/common/ExceptionMonitor;


# static fields
.field static synthetic class$org$apache$mina$common$DefaultExceptionMonitor:Ljava/lang/Class;

.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-object v0, Lorg/apache/mina/common/DefaultExceptionMonitor;->class$org$apache$mina$common$DefaultExceptionMonitor:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.mina.common.DefaultExceptionMonitor"

    invoke-static {v0}, Lorg/apache/mina/common/DefaultExceptionMonitor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/common/DefaultExceptionMonitor;->class$org$apache$mina$common$DefaultExceptionMonitor:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/common/DefaultExceptionMonitor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 36
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


# virtual methods
.method public exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .line 40
    sget-object p1, Lorg/apache/mina/common/DefaultExceptionMonitor;->log:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Unexpected exception."

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
