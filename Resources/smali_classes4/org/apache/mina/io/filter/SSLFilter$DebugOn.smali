.class Lorg/apache/mina/io/filter/SSLFilter$DebugOn;
.super Ljava/lang/Object;
.source "SSLFilter.java"

# interfaces
.implements Lorg/apache/mina/io/filter/SSLFilter$Debug;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/io/filter/SSLFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugOn"
.end annotation


# static fields
.field private static final debugMethod:Ljava/lang/reflect/Method;

.field private static final log:Ljava/lang/Object;


# instance fields
.field private final date:Ljava/util/Date;

.field private final df:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x0

    .line 599
    :try_start_0
    const-string v1, "org.apache.commons.logging.Log"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 601
    const-string v2, "org.apache.commons.logging.LogFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 603
    const-string v3, "getLog"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Lorg/apache/mina/io/filter/SSLFilter;->class$java$lang$String:Ljava/lang/Class;

    if-nez v6, :cond_0

    const-string v6, "java.lang.String"

    invoke-static {v6}, Lorg/apache/mina/io/filter/SSLFilter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/apache/mina/io/filter/SSLFilter;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v6, Lorg/apache/mina/io/filter/SSLFilter;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 605
    sget-object v3, Lorg/apache/mina/io/filter/SSLFilter;->class$org$apache$mina$common$DefaultExceptionMonitor:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "org.apache.mina.common.DefaultExceptionMonitor"

    invoke-static {v3}, Lorg/apache/mina/io/filter/SSLFilter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/mina/io/filter/SSLFilter;->class$org$apache$mina$common$DefaultExceptionMonitor:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/apache/mina/io/filter/SSLFilter;->class$org$apache$mina$common$DefaultExceptionMonitor:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 608
    const-string v3, "debug"

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Lorg/apache/mina/io/filter/SSLFilter;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v5, :cond_2

    const-string v5, "java.lang.Object"

    invoke-static {v5}, Lorg/apache/mina/io/filter/SSLFilter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/mina/io/filter/SSLFilter;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_2

    :cond_2
    sget-object v5, Lorg/apache/mina/io/filter/SSLFilter;->class$java$lang$Object:Ljava/lang/Class;

    :goto_2
    aput-object v5, v4, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-object v1, v0

    .line 617
    :goto_3
    sput-object v0, Lorg/apache/mina/io/filter/SSLFilter$DebugOn;->log:Ljava/lang/Object;

    .line 618
    sput-object v1, Lorg/apache/mina/io/filter/SSLFilter$DebugOn;->debugMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 621
    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/io/filter/SSLFilter$DebugOn;->df:Ljava/text/DateFormat;

    .line 624
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/filter/SSLFilter$DebugOn;->date:Ljava/util/Date;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/io/filter/SSLFilter$1;)V
    .locals 0

    .line 586
    invoke-direct {p0}, Lorg/apache/mina/io/filter/SSLFilter$DebugOn;-><init>()V

    return-void
.end method

.method private logToCommonsLogging(Ljava/lang/String;)V
    .locals 3

    .line 651
    :try_start_0
    sget-object v0, Lorg/apache/mina/io/filter/SSLFilter$DebugOn;->debugMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lorg/apache/mina/io/filter/SSLFilter$DebugOn;->log:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 655
    :catch_0
    invoke-direct {p0, p1}, Lorg/apache/mina/io/filter/SSLFilter$DebugOn;->logToStdOut(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private logToStdOut(Ljava/lang/String;)V
    .locals 4

    .line 661
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    monitor-enter v0

    .line 663
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/filter/SSLFilter$DebugOn;->date:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 665
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 666
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/apache/mina/io/filter/SSLFilter$DebugOn;->df:Ljava/text/DateFormat;

    iget-object v3, p0, Lorg/apache/mina/io/filter/SSLFilter$DebugOn;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 667
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 668
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 669
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 670
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 671
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public print(Lorg/apache/mina/io/filter/SSLFilter;Ljava/lang/String;)V
    .locals 1

    .line 628
    invoke-virtual {p1}, Lorg/apache/mina/io/filter/SSLFilter;->isUseClientMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 630
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "[CLIENT] "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 634
    :cond_0
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "[SERVER] "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 637
    :goto_0
    sget-object p2, Lorg/apache/mina/io/filter/SSLFilter$DebugOn;->log:Ljava/lang/Object;

    if-nez p2, :cond_1

    .line 639
    invoke-direct {p0, p1}, Lorg/apache/mina/io/filter/SSLFilter$DebugOn;->logToStdOut(Ljava/lang/String;)V

    goto :goto_1

    .line 643
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/mina/io/filter/SSLFilter$DebugOn;->logToCommonsLogging(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
