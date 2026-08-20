.class public Lorg/apache/commons/lang/time/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# instance fields
.field private startTime:J

.field private stopTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 88
    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    .line 92
    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 5

    .line 180
    iget-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 181
    iget-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 184
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    :goto_0
    sub-long/2addr v0, v2

    return-wide v0

    .line 186
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 125
    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    .line 126
    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    return-void
.end method

.method public resume()V
    .locals 6

    .line 167
    iget-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    const-wide/16 v0, -0x1

    .line 168
    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    return-void
.end method

.method public split()V
    .locals 2

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 106
    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    return-void
.end method

.method public stop()V
    .locals 2

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    return-void
.end method

.method public suspend()V
    .locals 2

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 198
    invoke-virtual {p0}, Lorg/apache/commons/lang/time/StopWatch;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatISO(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsplit()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 147
    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    return-void
.end method
