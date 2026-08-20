.class public final Lcom/facebook/ads/redexgen/X/UV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GV;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/UW;
    }
.end annotation


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/Gb;

.field public A03:Lcom/facebook/ads/redexgen/X/Hj;

.field public A04:Ljava/io/File;

.field public A05:Ljava/io/FileOutputStream;

.field public A06:Ljava/io/OutputStream;

.field public final A07:I

.field public final A08:J

.field public final A09:Lcom/facebook/ads/redexgen/X/Gx;

.field public final A0A:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gx;J)V
    .locals 6

    .line 57285
    const/16 v4, 0x5000

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/UV;-><init>(Lcom/facebook/ads/redexgen/X/Gx;JIZ)V

    .line 57286
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gx;JIZ)V
    .locals 1

    .line 57287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57288
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Gx;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A09:Lcom/facebook/ads/redexgen/X/Gx;

    .line 57289
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/UV;->A08:J

    .line 57290
    iput p4, p0, Lcom/facebook/ads/redexgen/X/UV;->A07:I

    .line 57291
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/UV;->A0A:Z

    .line 57292
    return-void
.end method

.method private A00()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A06:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 57294
    return-void

    .line 57295
    :cond_0
    const/4 v4, 0x0

    .line 57296
    .local v1, "success":Z
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 57297
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A0A:Z

    if-eqz v0, :cond_1

    .line 57298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A05:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57299
    :cond_1
    const/4 v2, 0x1

    .line 57300
    .end local v1    # "success":Z
    .local v0, "success":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A06:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A0X(Ljava/io/Closeable;)V

    .line 57301
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/UV;->A06:Ljava/io/OutputStream;

    .line 57302
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Ljava/io/File;

    .line 57303
    .local v1, "fileToCommit":Ljava/io/File;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Ljava/io/File;

    .line 57304
    if-eqz v2, :cond_2

    .line 57305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A09:Lcom/facebook/ads/redexgen/X/Gx;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Gx;->A47(Ljava/io/File;)V

    .line 57306
    .end local v1    # "fileToCommit":Ljava/io/File;
    :goto_0
    return-void

    .line 57307
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 57308
    .end local v0    # "success":Z
    .local v1, "success":Z
    :catchall_0
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A06:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A0X(Ljava/io/Closeable;)V

    .line 57309
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/UV;->A06:Ljava/io/OutputStream;

    .line 57310
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Ljava/io/File;

    .line 57311
    .local v3, "fileToCommit":Ljava/io/File;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Ljava/io/File;

    .line 57312
    if-eqz v4, :cond_3

    .line 57313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A09:Lcom/facebook/ads/redexgen/X/Gx;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Gx;->A47(Ljava/io/File;)V

    .line 57314
    .end local v3    # "fileToCommit":Ljava/io/File;
    :goto_1
    throw v2

    .line 57315
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private A01()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A02:Lcom/facebook/ads/redexgen/X/Gb;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/Gb;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 57317
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/UV;->A08:J

    .line 57318
    .local v6, "maxLength":J
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/UV;->A09:Lcom/facebook/ads/redexgen/X/Gx;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A02:Lcom/facebook/ads/redexgen/X/Gb;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Gb;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A02:Lcom/facebook/ads/redexgen/X/Gb;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Gb;->A01:J

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:J

    add-long/2addr v4, v0

    .line 57319
    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Gx;->AFN(Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Ljava/io/File;

    .line 57320
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A05:Ljava/io/FileOutputStream;

    .line 57321
    iget v2, p0, Lcom/facebook/ads/redexgen/X/UV;->A07:I

    if-lez v2, :cond_1

    .line 57322
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A03:Lcom/facebook/ads/redexgen/X/Hj;

    if-nez v1, :cond_0

    .line 57323
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A05:Ljava/io/FileOutputStream;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hj;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Hj;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A03:Lcom/facebook/ads/redexgen/X/Hj;

    .line 57324
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A03:Lcom/facebook/ads/redexgen/X/Hj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A06:Ljava/io/OutputStream;

    .line 57325
    :goto_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A01:J

    .line 57326
    return-void

    .line 57327
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A05:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hj;->A00(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 57328
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A05:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A06:Ljava/io/OutputStream;

    goto :goto_2

    .line 57329
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A02:Lcom/facebook/ads/redexgen/X/Gb;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Gb;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:J

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A08:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_0
.end method


# virtual methods
.method public final ADH(Lcom/facebook/ads/redexgen/X/Gb;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/UW;
        }
    .end annotation

    .line 57330
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/Gb;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 57331
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gb;->A02(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A02:Lcom/facebook/ads/redexgen/X/Gb;

    .line 57333
    return-void

    .line 57334
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UV;->A02:Lcom/facebook/ads/redexgen/X/Gb;

    .line 57335
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:J

    .line 57336
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UV;->A01()V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57337
    :catch_0
    move-exception v1

    .line 57338
    .local v0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/UW;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/UW;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 57339
    :goto_0
    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/UW;
        }
    .end annotation

    .line 57340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A02:Lcom/facebook/ads/redexgen/X/Gb;

    if-nez v0, :cond_0

    .line 57341
    return-void

    .line 57342
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UV;->A00()V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57343
    :catch_0
    move-exception v1

    .line 57344
    .local v0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/UW;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/UW;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 57345
    :goto_0
    return-void
.end method

.method public final write([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/UW;
        }
    .end annotation

    .line 57346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A02:Lcom/facebook/ads/redexgen/X/Gb;

    if-nez v0, :cond_0

    .line 57347
    return-void

    .line 57348
    :cond_0
    const/4 v6, 0x0

    .line 57349
    .local v0, "bytesWritten":I
    :goto_0
    if-ge v6, p3, :cond_2

    .line 57350
    :try_start_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UV;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A08:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    .line 57351
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UV;->A00()V

    .line 57352
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UV;->A01()V

    .line 57353
    :cond_1
    sub-int v0, p3, v6

    int-to-long v4, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A08:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UV;->A01:J

    sub-long/2addr v0, v2

    .line 57354
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v4, v0

    .line 57355
    .local v2, "bytesToWrite":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A06:Ljava/io/OutputStream;

    add-int v0, p2, v6

    invoke-virtual {v1, p1, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 57356
    add-int/2addr v6, v4

    .line 57357
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UV;->A01:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/UV;->A01:J

    .line 57358
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:J

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57359
    .end local v0    # "bytesWritten":I
    :catch_0
    move-exception v1

    .line 57360
    .local v0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/UW;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/UW;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 57361
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    return-void
.end method
