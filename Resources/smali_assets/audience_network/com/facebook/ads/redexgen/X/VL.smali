.class public final Lcom/facebook/ads/redexgen/X/VL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/D9;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ho;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/Hb;

.field public final A02:Lcom/facebook/ads/redexgen/X/Hc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58705
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:Lcom/facebook/ads/redexgen/X/Hc;

    .line 58706
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hb;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Lcom/facebook/ads/redexgen/X/Hb;

    .line 58707
    return-void
.end method


# virtual methods
.method public final A4k(Lcom/facebook/ads/redexgen/X/Cx;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/DA;
        }
    .end annotation

    .line 58708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:Lcom/facebook/ads/redexgen/X/Ho;

    if-eqz v0, :cond_0

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/Cx;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:Lcom/facebook/ads/redexgen/X/Ho;

    .line 58709
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ho;->A05()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 58710
    :cond_0
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Wg;->A00:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ho;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ho;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:Lcom/facebook/ads/redexgen/X/Ho;

    .line 58711
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:Lcom/facebook/ads/redexgen/X/Ho;

    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/Wg;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Cx;->A00:J

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/Ho;->A06(J)J

    .line 58712
    :cond_1
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Wg;->A01:Ljava/nio/ByteBuffer;

    .line 58713
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 58714
    .local v1, "data":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 58715
    .local v2, "size":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0b([BI)V

    .line 58716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A0C([BI)V

    .line 58717
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 58718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    int-to-long v1, v0

    .line 58719
    .local v5, "ptsAdjustment":J
    const/16 v3, 0x20

    shl-long/2addr v1, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    int-to-long v5, v0

    or-long/2addr v1, v5

    .line 58720
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x14

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 58721
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v7

    .line 58722
    .local v3, "spliceCommandLength":I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v6

    .line 58723
    .local v7, "spliceCommandType":I
    const/4 v0, 0x0

    .line 58724
    .local p0, "command":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/scte35/SpliceCommand;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:Lcom/facebook/ads/redexgen/X/Hc;

    const/16 v3, 0xe

    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 58725
    if-eqz v6, :cond_7

    const/16 v3, 0xff

    if-eq v6, v3, :cond_6

    const/4 v3, 0x4

    if-eq v6, v3, :cond_5

    const/4 v3, 0x5

    if-eq v6, v3, :cond_4

    const/4 v3, 0x6

    if-eq v6, v3, :cond_3

    .line 58726
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_2

    new-array v1, v2, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;-><init>([Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;)V

    :goto_1
    return-object v0

    :cond_2
    new-array v1, v4, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    aput-object v0, v1, v2

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;-><init>([Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;)V

    goto :goto_1

    .line 58727
    :cond_3
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:Lcom/facebook/ads/redexgen/X/Ho;

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/scte35/TimeSignalCommand;->A01(Lcom/facebook/ads/redexgen/X/Hc;JLcom/facebook/ads/redexgen/X/Ho;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/scte35/TimeSignalCommand;

    move-result-object v0

    .line 58728
    goto :goto_0

    .line 58729
    :cond_4
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:Lcom/facebook/ads/redexgen/X/Ho;

    .line 58730
    invoke-static {v3, v1, v2, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/scte35/SpliceInsertCommand;->A00(Lcom/facebook/ads/redexgen/X/Hc;JLcom/facebook/ads/redexgen/X/Ho;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/scte35/SpliceInsertCommand;

    move-result-object v0

    .line 58731
    goto :goto_0

    .line 58732
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-static {v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/scte35/SpliceScheduleCommand;->A00(Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/scte35/SpliceScheduleCommand;

    move-result-object v0

    .line 58733
    goto :goto_0

    .line 58734
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-static {v0, v7, v1, v2}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/scte35/PrivateCommand;->A00(Lcom/facebook/ads/redexgen/X/Hc;IJ)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/scte35/PrivateCommand;

    move-result-object v0

    .line 58735
    goto :goto_0

    .line 58736
    :cond_7
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/scte35/SpliceNullCommand;

    invoke-direct {v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/scte35/SpliceNullCommand;-><init>()V

    .line 58737
    goto :goto_0
.end method
