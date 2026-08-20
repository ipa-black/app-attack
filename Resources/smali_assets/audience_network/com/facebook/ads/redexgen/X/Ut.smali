.class public final Lcom/facebook/ads/redexgen/X/Ut;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final A00:F

.field public final A01:F

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:J

.field public final A06:Lcom/facebook/ads/redexgen/X/GS;

.field public final A07:Lcom/facebook/ads/redexgen/X/HG;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GS;)V
    .locals 10

    .line 58066
    sget-object v9, Lcom/facebook/ads/redexgen/X/HG;->A00:Lcom/facebook/ads/redexgen/X/HG;

    const/16 v2, 0x2710

    const/16 v3, 0x61a8

    const/16 v4, 0x61a8

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f400000    # 0.75f

    const-wide/16 v7, 0x7d0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/Ut;-><init>(Lcom/facebook/ads/redexgen/X/GS;IIIFFJLcom/facebook/ads/redexgen/X/HG;)V

    .line 58067
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GS;IIIFFJLcom/facebook/ads/redexgen/X/HG;)V
    .locals 0

    .line 58068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58069
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ut;->A06:Lcom/facebook/ads/redexgen/X/GS;

    .line 58070
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ut;->A03:I

    .line 58071
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ut;->A02:I

    .line 58072
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Ut;->A04:I

    .line 58073
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Ut;->A00:F

    .line 58074
    iput p6, p0, Lcom/facebook/ads/redexgen/X/Ut;->A01:F

    .line 58075
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/Ut;->A05:J

    .line 58076
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/Ut;->A07:Lcom/facebook/ads/redexgen/X/HG;

    .line 58077
    return-void
.end method

.method private final varargs A00(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[I)Lcom/facebook/ads/redexgen/X/BD;
    .locals 17

    .line 58078
    move-object/from16 v1, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/BD;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/Ut;->A06:Lcom/facebook/ads/redexgen/X/GS;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ut;->A03:I

    int-to-long v6, v0

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ut;->A02:I

    int-to-long v8, v0

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ut;->A04:I

    int-to-long v10, v0

    iget v12, v1, Lcom/facebook/ads/redexgen/X/Ut;->A00:F

    iget v13, v1, Lcom/facebook/ads/redexgen/X/Ut;->A01:F

    iget-wide v14, v1, Lcom/facebook/ads/redexgen/X/Ut;->A05:J

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Ut;->A07:Lcom/facebook/ads/redexgen/X/HG;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v16}, Lcom/facebook/ads/redexgen/X/BD;-><init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[ILcom/facebook/ads/redexgen/X/GS;JJJFFJLcom/facebook/ads/redexgen/X/HG;)V

    return-object v2
.end method


# virtual methods
.method public final bridge synthetic A4X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[I)Lcom/facebook/ads/redexgen/X/GJ;
    .locals 1

    .line 58079
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ut;->A00(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[I)Lcom/facebook/ads/redexgen/X/BD;

    move-result-object v0

    return-object v0
.end method
