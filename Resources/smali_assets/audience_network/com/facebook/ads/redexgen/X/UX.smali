.class public final Lcom/facebook/ads/redexgen/X/UX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GX;


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/GV;

.field public final A03:Lcom/facebook/ads/redexgen/X/GX;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 57364
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "X6WlBdbGeBIUy9RcgyD1kPyvMH5gl65h"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mWixtdhRvEEOtO49Z6LrUITCnd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "19dVuEeyHaOsnSLi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Fh0FDziHvuuc46M8RjDn"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "TMNOdV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BntQd7XboiQ5Pp5LCDj1cbVKSXS32D1x"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NrlP0Z8V9f9J6rKzzcCufZh8yiDjfbRh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "BOidXQkRBMfwkg7VYmAkrOpgeHcKVKv0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UX;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GX;Lcom/facebook/ads/redexgen/X/GV;)V
    .locals 1

    .line 57365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57366
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UX;->A03:Lcom/facebook/ads/redexgen/X/GX;

    .line 57367
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GV;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UX;->A02:Lcom/facebook/ads/redexgen/X/GV;

    .line 57368
    return-void
.end method


# virtual methods
.method public final A7w()Landroid/net/Uri;
    .locals 1

    .line 57369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UX;->A03:Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GX;->A7w()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final ADF(Lcom/facebook/ads/redexgen/X/Gb;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57370
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/UX;->A03:Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GX;->ADF(Lcom/facebook/ads/redexgen/X/Gb;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/UX;->A00:J

    .line 57371
    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/UX;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    .line 57372
    return-wide v1

    .line 57373
    :cond_0
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Gb;->A02:J

    const-wide/16 v4, -0x1

    cmp-long v0, v1, v4

    if-nez v0, :cond_1

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/UX;->A00:J

    cmp-long v0, v1, v4

    if-eqz v0, :cond_1

    .line 57374
    new-instance v4, Lcom/facebook/ads/redexgen/X/Gb;

    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/Gb;->A04:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/facebook/ads/redexgen/X/Gb;->A01:J

    iget-wide v8, p1, Lcom/facebook/ads/redexgen/X/Gb;->A03:J

    iget-wide v10, v3, Lcom/facebook/ads/redexgen/X/UX;->A00:J

    iget-object v12, p1, Lcom/facebook/ads/redexgen/X/Gb;->A05:Ljava/lang/String;

    iget v13, p1, Lcom/facebook/ads/redexgen/X/Gb;->A00:I

    invoke-direct/range {v4 .. v13}, Lcom/facebook/ads/redexgen/X/Gb;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    move-object p1, v4

    .line 57375
    .end local p4
    .local v1, "dataSpec":Lcom/facebook/ads/redexgen/X/Gb;
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/UX;->A01:Z

    .line 57376
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/UX;->A02:Lcom/facebook/ads/redexgen/X/GV;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GV;->ADH(Lcom/facebook/ads/redexgen/X/Gb;)V

    .line 57377
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/UX;->A00:J

    return-wide v0
.end method

.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57378
    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UX;->A03:Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GX;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57379
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UX;->A01:Z

    if-eqz v0, :cond_0

    .line 57380
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/UX;->A01:Z

    .line 57381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UX;->A02:Lcom/facebook/ads/redexgen/X/GV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GV;->close()V

    .line 57382
    :cond_0
    return-void

    .line 57383
    :catchall_0
    move-exception v4

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/UX;->A01:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/UX;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/UX;->A04:[Ljava/lang/String;

    const-string v1, "CXpRjqYaQVmivrsYVOmY1oz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 57384
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/UX;->A01:Z

    .line 57385
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UX;->A02:Lcom/facebook/ads/redexgen/X/GV;

    sget-object v1, Lcom/facebook/ads/redexgen/X/UX;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/UX;->A04:[Ljava/lang/String;

    const-string v1, "FmRI3fMemMJaQGBcEYhbAky7hUfnuUR1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/GV;->close()V

    .line 57386
    :cond_1
    throw v4

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57387
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/UX;->A00:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 57388
    const/4 v0, -0x1

    return v0

    .line 57389
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UX;->A03:Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/GX;->read([BII)I

    move-result v5

    .line 57390
    .local v0, "bytesRead":I
    if-lez v5, :cond_1

    .line 57391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UX;->A02:Lcom/facebook/ads/redexgen/X/GV;

    invoke-interface {v0, p1, p2, v5}, Lcom/facebook/ads/redexgen/X/GV;->write([BII)V

    .line 57392
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/UX;->A00:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 57393
    int-to-long v0, v5

    sub-long/2addr v3, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/UX;->A00:J

    .line 57394
    :cond_1
    return v5
.end method
