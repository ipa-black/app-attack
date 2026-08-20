.class public abstract Lorg/apache/mina/common/BaseSession;
.super Ljava/lang/Object;
.source "BaseSession.java"

# interfaces
.implements Lorg/apache/mina/common/Session;


# instance fields
.field private final attributes:Ljava/util/Map;

.field private idleForBoth:Z

.field private idleForRead:Z

.field private idleForWrite:Z

.field private lastReadTime:J

.field private lastWriteTime:J

.field private readBytes:J

.field private writtenBytes:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/common/BaseSession;->attributes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Lorg/apache/mina/common/BaseSession;->close(Z)V

    return-void
.end method

.method public getAttachment()Ljava/lang/Object;
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/apache/mina/common/BaseSession;->attributes:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/mina/common/BaseSession;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeKeys()Ljava/util/Set;
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/apache/mina/common/BaseSession;->attributes:Ljava/util/Map;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/common/BaseSession;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastIoTime()J
    .locals 4

    .line 127
    iget-wide v0, p0, Lorg/apache/mina/common/BaseSession;->lastReadTime:J

    iget-wide v2, p0, Lorg/apache/mina/common/BaseSession;->lastWriteTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastReadTime()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lorg/apache/mina/common/BaseSession;->lastReadTime:J

    return-wide v0
.end method

.method public getLastWriteTime()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lorg/apache/mina/common/BaseSession;->lastWriteTime:J

    return-wide v0
.end method

.method public getReadBytes()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lorg/apache/mina/common/BaseSession;->readBytes:J

    return-wide v0
.end method

.method public getWrittenBytes()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lorg/apache/mina/common/BaseSession;->writtenBytes:J

    return-wide v0
.end method

.method public increaseReadBytes(I)V
    .locals 4

    .line 115
    iget-wide v0, p0, Lorg/apache/mina/common/BaseSession;->readBytes:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/mina/common/BaseSession;->readBytes:J

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/mina/common/BaseSession;->lastReadTime:J

    return-void
.end method

.method public increaseWrittenBytes(I)V
    .locals 4

    .line 121
    iget-wide v0, p0, Lorg/apache/mina/common/BaseSession;->writtenBytes:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/mina/common/BaseSession;->writtenBytes:J

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/mina/common/BaseSession;->lastWriteTime:J

    return-void
.end method

.method public isIdle(Lorg/apache/mina/common/IdleStatus;)Z
    .locals 3

    .line 142
    sget-object v0, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    if-ne p1, v0, :cond_0

    .line 143
    iget-boolean p1, p0, Lorg/apache/mina/common/BaseSession;->idleForBoth:Z

    return p1

    .line 145
    :cond_0
    sget-object v0, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    if-ne p1, v0, :cond_1

    .line 146
    iget-boolean p1, p0, Lorg/apache/mina/common/BaseSession;->idleForRead:Z

    return p1

    .line 148
    :cond_1
    sget-object v0, Lorg/apache/mina/common/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/common/IdleStatus;

    if-ne p1, v0, :cond_2

    .line 149
    iget-boolean p1, p0, Lorg/apache/mina/common/BaseSession;->idleForWrite:Z

    return p1

    .line 151
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

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/apache/mina/common/BaseSession;->attributes:Ljava/util/Map;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/common/BaseSession;->attributes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 93
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAttachment(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 69
    iget-object v0, p0, Lorg/apache/mina/common/BaseSession;->attributes:Ljava/util/Map;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/common/BaseSession;->attributes:Ljava/util/Map;

    const-string v2, ""

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/apache/mina/common/BaseSession;->attributes:Ljava/util/Map;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/common/BaseSession;->attributes:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setIdle(Lorg/apache/mina/common/IdleStatus;Z)V
    .locals 2

    .line 156
    sget-object v0, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    if-ne p1, v0, :cond_0

    .line 157
    iput-boolean p2, p0, Lorg/apache/mina/common/BaseSession;->idleForBoth:Z

    goto :goto_0

    .line 158
    :cond_0
    sget-object v0, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    if-ne p1, v0, :cond_1

    .line 159
    iput-boolean p2, p0, Lorg/apache/mina/common/BaseSession;->idleForRead:Z

    goto :goto_0

    .line 160
    :cond_1
    sget-object v0, Lorg/apache/mina/common/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/common/IdleStatus;

    if-ne p1, v0, :cond_2

    .line 161
    iput-boolean p2, p0, Lorg/apache/mina/common/BaseSession;->idleForWrite:Z

    :goto_0
    return-void

    .line 163
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
.end method
