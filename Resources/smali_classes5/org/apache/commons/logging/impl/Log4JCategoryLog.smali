.class public final Lorg/apache/commons/logging/impl/Log4JCategoryLog;
.super Ljava/lang/Object;
.source "Log4JCategoryLog.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;


# static fields
.field private static final FQCN:Ljava/lang/String;

.field static synthetic class$org$apache$commons$logging$impl$Log4JCategoryLog:Ljava/lang/Class;


# instance fields
.field private category:Lorg/apache/log4j/Category;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    sget-object v0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->class$org$apache$commons$logging$impl$Log4JCategoryLog:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.logging.impl.Log4JCategoryLog"

    invoke-static {v0}, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->class$org$apache$commons$logging$impl$Log4JCategoryLog:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->FQCN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    .line 100
    invoke-static {p1}, Lorg/apache/log4j/Category;->getInstance(Ljava/lang/String;)Lorg/apache/log4j/Category;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Category;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 80
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 4

    .line 135
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 4

    .line 182
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->ERROR:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->ERROR:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .locals 4

    .line 198
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->FATAL:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 206
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->FATAL:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .locals 4

    .line 150
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->INFO:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 158
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->INFO:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    invoke-virtual {v0}, Lorg/apache/log4j/Category;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .line 222
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    sget-object v1, Lorg/apache/log4j/Priority;->ERROR:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 2

    .line 230
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    sget-object v1, Lorg/apache/log4j/Priority;->FATAL:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    invoke-virtual {v0}, Lorg/apache/log4j/Category;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    invoke-virtual {v0}, Lorg/apache/log4j/Category;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .line 254
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    sget-object v1, Lorg/apache/log4j/Priority;->WARN:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 4

    .line 118
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 127
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 4

    .line 166
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->WARN:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 174
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->category:Lorg/apache/log4j/Category;

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JCategoryLog;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->WARN:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
