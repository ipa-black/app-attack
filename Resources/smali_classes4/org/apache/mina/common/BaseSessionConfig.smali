.class public abstract Lorg/apache/mina/common/BaseSessionConfig;
.super Ljava/lang/Object;
.source "BaseSessionConfig.java"

# interfaces
.implements Lorg/apache/mina/common/SessionConfig;


# instance fields
.field private idleTimeForBoth:I

.field private idleTimeForRead:I

.field private idleTimeForWrite:I

.field private writeTimeout:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdleTime(Lorg/apache/mina/common/IdleStatus;)I
    .locals 3

    .line 46
    sget-object v0, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    if-ne p1, v0, :cond_0

    .line 47
    iget p1, p0, Lorg/apache/mina/common/BaseSessionConfig;->idleTimeForBoth:I

    return p1

    .line 49
    :cond_0
    sget-object v0, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    if-ne p1, v0, :cond_1

    .line 50
    iget p1, p0, Lorg/apache/mina/common/BaseSessionConfig;->idleTimeForRead:I

    return p1

    .line 52
    :cond_1
    sget-object v0, Lorg/apache/mina/common/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/common/IdleStatus;

    if-ne p1, v0, :cond_2

    .line 53
    iget p1, p0, Lorg/apache/mina/common/BaseSessionConfig;->idleTimeForWrite:I

    return p1

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unknown idle status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIdleTimeInMillis(Lorg/apache/mina/common/IdleStatus;)J
    .locals 4

    .line 60
    invoke-virtual {p0, p1}, Lorg/apache/mina/common/BaseSessionConfig;->getIdleTime(Lorg/apache/mina/common/IdleStatus;)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getWriteTimeout()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/apache/mina/common/BaseSessionConfig;->writeTimeout:I

    return v0
.end method

.method public getWriteTimeoutInMillis()J
    .locals 4

    .line 87
    iget v0, p0, Lorg/apache/mina/common/BaseSessionConfig;->writeTimeout:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public setIdleTime(Lorg/apache/mina/common/IdleStatus;I)V
    .locals 2

    if-ltz p2, :cond_3

    .line 69
    sget-object v0, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    if-ne p1, v0, :cond_0

    .line 70
    iput p2, p0, Lorg/apache/mina/common/BaseSessionConfig;->idleTimeForBoth:I

    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    if-ne p1, v0, :cond_1

    .line 72
    iput p2, p0, Lorg/apache/mina/common/BaseSessionConfig;->idleTimeForRead:I

    goto :goto_0

    .line 73
    :cond_1
    sget-object v0, Lorg/apache/mina/common/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/common/IdleStatus;

    if-ne p1, v0, :cond_2

    .line 74
    iput p2, p0, Lorg/apache/mina/common/BaseSessionConfig;->idleTimeForWrite:I

    :goto_0
    return-void

    .line 76
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown idle status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Illegal idle time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWriteTimeout(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 95
    iput p1, p0, Lorg/apache/mina/common/BaseSessionConfig;->writeTimeout:I

    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Illegal write timeout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
