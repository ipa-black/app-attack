.class public final Lcom/facebook/ads/redexgen/X/9Z;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/9u;

.field public final A04:Lcom/facebook/ads/redexgen/X/ER;

.field public final A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

.field public final A06:Lcom/facebook/ads/redexgen/X/GN;

.field public final A07:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A08:Z

.field public volatile A09:J

.field public volatile A0A:J


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9u;JLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V
    .locals 12

    .line 20816
    const/4 v0, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/ER;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/ER;-><init>(I)V

    const/4 v2, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/9Z;-><init>(Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/ER;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V

    .line 20817
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/ER;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20819
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    .line 20820
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9Z;->A07:Ljava/lang/Object;

    .line 20821
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    .line 20822
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/9Z;->A02:J

    .line 20823
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/9Z;->A01:J

    .line 20824
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J

    .line 20825
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/9Z;->A09:J

    .line 20826
    iput p8, p0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    .line 20827
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/9Z;->A08:Z

    .line 20828
    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/9Z;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    .line 20829
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/9Z;->A06:Lcom/facebook/ads/redexgen/X/GN;

    .line 20830
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/9Z;Lcom/facebook/ads/redexgen/X/9Z;)V
    .locals 2

    .line 20831
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J

    .line 20832
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A09:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/9Z;->A09:J

    .line 20833
    return-void
.end method


# virtual methods
.method public final A01(I)Lcom/facebook/ads/redexgen/X/9Z;
    .locals 13

    .line 20834
    new-instance v1, Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9Z;->A07:Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    .line 20835
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ER;->A00(I)Lcom/facebook/ads/redexgen/X/ER;

    move-result-object v4

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/9Z;->A02:J

    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/9Z;->A01:J

    iget v9, p0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/9Z;->A08:Z

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/9Z;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/9Z;->A06:Lcom/facebook/ads/redexgen/X/GN;

    invoke-direct/range {v1 .. v12}, Lcom/facebook/ads/redexgen/X/9Z;-><init>(Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/ER;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V

    .line 20836
    .local v0, "playbackInfo":Lcom/facebook/ads/redexgen/X/9Z;
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/9Z;->A00(Lcom/facebook/ads/redexgen/X/9Z;Lcom/facebook/ads/redexgen/X/9Z;)V

    .line 20837
    return-object v1
.end method

.method public final A02(I)Lcom/facebook/ads/redexgen/X/9Z;
    .locals 12

    .line 20838
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9Z;->A07:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/9Z;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/9Z;->A01:J

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/9Z;->A08:Z

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/9Z;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/9Z;->A06:Lcom/facebook/ads/redexgen/X/GN;

    move v8, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/9Z;-><init>(Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/ER;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V

    .line 20839
    .local v0, "playbackInfo":Lcom/facebook/ads/redexgen/X/9Z;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/9Z;->A00(Lcom/facebook/ads/redexgen/X/9Z;Lcom/facebook/ads/redexgen/X/9Z;)V

    .line 20840
    return-object v0
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9Z;
    .locals 12

    .line 20841
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/9Z;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/9Z;->A01:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/9Z;->A08:Z

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/9Z;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/9Z;->A06:Lcom/facebook/ads/redexgen/X/GN;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/9Z;-><init>(Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/ER;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V

    .line 20842
    .local v0, "playbackInfo":Lcom/facebook/ads/redexgen/X/9Z;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/9Z;->A00(Lcom/facebook/ads/redexgen/X/9Z;Lcom/facebook/ads/redexgen/X/9Z;)V

    .line 20843
    return-object v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9Z;
    .locals 14

    .line 20844
    move-wide/from16 v8, p4

    move-object v1, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/9Z;->A07:Ljava/lang/Object;

    .line 20845
    move-object v5, p1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget v10, v1, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    iget-boolean v11, v1, Lcom/facebook/ads/redexgen/X/9Z;->A08:Z

    iget-object v12, v1, Lcom/facebook/ads/redexgen/X/9Z;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v13, v1, Lcom/facebook/ads/redexgen/X/9Z;->A06:Lcom/facebook/ads/redexgen/X/GN;

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v13}, Lcom/facebook/ads/redexgen/X/9Z;-><init>(Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/ER;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V

    .line 20846
    return-object v2

    .line 20847
    :cond_0
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public final A05(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)Lcom/facebook/ads/redexgen/X/9Z;
    .locals 12

    .line 20848
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9Z;->A07:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/9Z;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/9Z;->A01:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/9Z;->A08:Z

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/9Z;-><init>(Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/ER;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V

    .line 20849
    .local v0, "playbackInfo":Lcom/facebook/ads/redexgen/X/9Z;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/9Z;->A00(Lcom/facebook/ads/redexgen/X/9Z;Lcom/facebook/ads/redexgen/X/9Z;)V

    .line 20850
    return-object v0
.end method

.method public final A06(Z)Lcom/facebook/ads/redexgen/X/9Z;
    .locals 12

    .line 20851
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9Z;->A07:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/9Z;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/9Z;->A01:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/9Z;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/9Z;->A06:Lcom/facebook/ads/redexgen/X/GN;

    move v9, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/9Z;-><init>(Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/ER;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V

    .line 20852
    .local v0, "playbackInfo":Lcom/facebook/ads/redexgen/X/9Z;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/9Z;->A00(Lcom/facebook/ads/redexgen/X/9Z;Lcom/facebook/ads/redexgen/X/9Z;)V

    .line 20853
    return-object v0
.end method
