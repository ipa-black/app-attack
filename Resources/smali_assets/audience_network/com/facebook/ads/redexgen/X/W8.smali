.class public final Lcom/facebook/ads/redexgen/X/W8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BV;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/C8;,
        Lcom/facebook/ads/redexgen/X/C7;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/FragmentedMp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0X:[B

.field public static A0Y:[Ljava/lang/String;

.field public static final A0Z:Lcom/facebook/ads/redexgen/X/BY;

.field public static final A0a:I

.field public static final A0b:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public static final A0c:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:J

.field public A0B:J

.field public A0C:Lcom/facebook/ads/redexgen/X/BX;

.field public A0D:Lcom/facebook/ads/redexgen/X/C8;

.field public A0E:Lcom/facebook/ads/redexgen/X/Hc;

.field public A0F:Z

.field public A0G:Z

.field public A0H:[Lcom/facebook/ads/redexgen/X/Bh;

.field public A0I:[Lcom/facebook/ads/redexgen/X/Bh;

.field public final A0J:I

.field public final A0K:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/C8;",
            ">;"
        }
    .end annotation
.end field

.field public final A0L:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0M:Lcom/facebook/ads/redexgen/X/Bh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0N:Lcom/facebook/ads/redexgen/X/CH;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0O:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A0P:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A0R:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A0S:Lcom/facebook/ads/redexgen/X/Ho;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0T:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/WE;",
            ">;"
        }
    .end annotation
.end field

.field public final A0U:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/C7;",
            ">;"
        }
    .end annotation
.end field

.field public final A0V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final A0W:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 61640
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XdJWu"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FUlE3E4RGCFuY0n1jkLa4sDNStY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LTfWg4MeBgD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ea2mTe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5aN4xnjUR54"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JRDUjTwIRED0cdRjG5ryaKaac6vLzQ8c"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "s80pf3iUB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VFz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/W8;->A0D()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/W9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/W9;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/W8;->A0Z:Lcom/facebook/ads/redexgen/X/BY;

    .line 61641
    const/16 v2, 0x2aa

    const/4 v1, 0x4

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/W8;->A0a:I

    .line 61642
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/W8;->A0c:[B

    .line 61643
    const/4 v3, 0x0

    const/16 v2, 0x298

    const/16 v1, 0x12

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A02(Ljava/lang/String;Ljava/lang/String;J)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/W8;->A0b:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 61644
    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 61645
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/W8;-><init>(I)V

    .line 61646
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 61647
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/W8;-><init>(ILcom/facebook/ads/redexgen/X/Ho;)V

    .line 61648
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Ho;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/Ho;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61649
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/W8;-><init>(ILcom/facebook/ads/redexgen/X/Ho;Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)V

    .line 61650
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Ho;Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)V
    .locals 6
    .param p2    # Lcom/facebook/ads/redexgen/X/Ho;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/CH;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61651
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 61652
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/W8;-><init>(ILcom/facebook/ads/redexgen/X/Ho;Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;Ljava/util/List;)V

    .line 61653
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Ho;Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;Ljava/util/List;)V
    .locals 7
    .param p2    # Lcom/facebook/ads/redexgen/X/Ho;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/CH;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/Ho;",
            "Lcom/facebook/ads/redexgen/X/CH;",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;",
            ">;)V"
        }
    .end annotation

    .line 61654
    .local p5, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/W8;-><init>(ILcom/facebook/ads/redexgen/X/Ho;Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Bh;)V

    .line 61655
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Ho;Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Bh;)V
    .locals 3
    .param p2    # Lcom/facebook/ads/redexgen/X/Ho;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/CH;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/ads/redexgen/X/Bh;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/Ho;",
            "Lcom/facebook/ads/redexgen/X/CH;",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Bh;",
            ")V"
        }
    .end annotation

    .line 61656
    .local p5, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61657
    if-eqz p3, :cond_0

    const/16 v0, 0x8

    :goto_0
    or-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0J:I

    .line 61658
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/W8;->A0S:Lcom/facebook/ads/redexgen/X/Ho;

    .line 61659
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/W8;->A0N:Lcom/facebook/ads/redexgen/X/CH;

    .line 61660
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/W8;->A0L:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    .line 61661
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0V:Ljava/util/List;

    .line 61662
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/W8;->A0M:Lcom/facebook/ads/redexgen/X/Bh;

    .line 61663
    const/16 v2, 0x10

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0O:Lcom/facebook/ads/redexgen/X/Hc;

    .line 61664
    sget-object v1, Lcom/facebook/ads/redexgen/X/HY;->A03:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0R:Lcom/facebook/ads/redexgen/X/Hc;

    .line 61665
    const/4 v1, 0x5

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0Q:Lcom/facebook/ads/redexgen/X/Hc;

    .line 61666
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0P:Lcom/facebook/ads/redexgen/X/Hc;

    .line 61667
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0W:[B

    .line 61668
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0T:Ljava/util/ArrayDeque;

    .line 61669
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0U:Ljava/util/ArrayDeque;

    .line 61670
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    .line 61671
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A08:J

    .line 61672
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0A:J

    .line 61673
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0B:J

    .line 61674
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W8;->A0B()V

    .line 61675
    return-void

    .line 61676
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/C8;IJILcom/facebook/ads/redexgen/X/Hc;I)I
    .locals 28

    .line 61677
    move/from16 v5, p6

    move-wide/from16 v0, p2

    const/16 v3, 0x8

    move-object/from16 p6, p5

    move-object/from16 v2, p6

    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 61678
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v2

    .line 61679
    .local v1, "fullAtom":I
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Bw;->A00(I)I

    move-result v8

    .line 61680
    .local v3, "atomFlags":I
    move-object/from16 v2, p0

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/CH;

    .line 61681
    .local v4, "track":Lcom/facebook/ads/redexgen/X/CH;
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    .line 61682
    .local v5, "fragment":Lcom/facebook/ads/redexgen/X/CJ;
    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/CJ;->A07:Lcom/facebook/ads/redexgen/X/C2;

    .line 61683
    .local v6, "defaultSampleValues":Lcom/facebook/ads/redexgen/X/C2;
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/CJ;->A0E:[I

    invoke-virtual/range {p6 .. p6}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v2

    aput v2, v3, p1

    .line 61684
    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/CJ;->A0G:[J

    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/CJ;->A05:J

    aput-wide v2, v9, p1

    .line 61685
    and-int/lit8 v2, v8, 0x1

    if-eqz v2, :cond_0

    .line 61686
    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/CJ;->A0G:[J

    aget-wide v9, v11, p1

    invoke-virtual/range {p6 .. p6}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v9, v2

    aput-wide v9, v11, p1

    .line 61687
    :cond_0
    and-int/lit8 v2, v8, 0x4

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    const/16 v27, 0x1

    .line 61688
    .local v7, "firstSampleFlagsPresent":Z
    :goto_0
    iget v2, v7, Lcom/facebook/ads/redexgen/X/C2;->A01:I

    move/from16 v26, v2

    .line 61689
    .local v10, "firstSampleFlags":I
    if-eqz v27, :cond_1

    .line 61690
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v26

    .line 61691
    :cond_1
    and-int/lit16 v2, v8, 0x100

    if-eqz v2, :cond_f

    const/16 v25, 0x1

    .line 61692
    .local v11, "sampleDurationsPresent":Z
    :goto_1
    and-int/lit16 v2, v8, 0x200

    if-eqz v2, :cond_e

    const/16 v24, 0x1

    .line 61693
    .local v12, "sampleSizesPresent":Z
    :goto_2
    and-int/lit16 v2, v8, 0x400

    if-eqz v2, :cond_d

    const/16 v23, 0x1

    .line 61694
    .local v13, "sampleFlagsPresent":Z
    :goto_3
    and-int/lit16 v2, v8, 0x800

    if-eqz v2, :cond_c

    const/16 v22, 0x1

    .line 61695
    .local v14, "sampleCompositionTimeOffsetsPresent":Z
    :goto_4
    const-wide/16 v20, 0x0

    .line 61696
    .local v15, "edtsOffset":J
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/CH;->A08:[J

    if-eqz v2, :cond_2

    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/CH;->A08:[J

    array-length v2, v2

    if-ne v2, v3, :cond_2

    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/CH;->A08:[J

    const/4 v3, 0x0

    aget-wide v10, v2, v3

    const-wide/16 v8, 0x0

    cmp-long v2, v10, v8

    if-nez v2, :cond_2

    .line 61697
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/CH;->A09:[J

    aget-wide v8, v2, v3

    const-wide/16 v10, 0x3e8

    .end local v10    # "firstSampleFlags":I
    .local v24, "firstSampleFlags":I
    iget-wide v12, v6, Lcom/facebook/ads/redexgen/X/CH;->A06:J

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/Hs;->A0F(JJJ)J

    move-result-wide v20

    .line 61698
    .end local v10
    .restart local v24    # "firstSampleFlags":I
    :cond_2
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/CJ;->A0D:[I

    move-object/from16 v19, v2

    .line 61699
    .local v9, "sampleSizeTable":[I
    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/CJ;->A0C:[I

    .line 61700
    .local v10, "sampleCompositionTimeOffsetTable":[I
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/CJ;->A0F:[J

    move-object/from16 v18, v2

    .line 61701
    .local v8, "sampleDecodingTimeTable":[J
    iget-object v14, v4, Lcom/facebook/ads/redexgen/X/CJ;->A0I:[Z

    .line 61702
    .local v0, "sampleIsSyncFrameTable":[Z
    .end local v1    # "fullAtom":I
    .local v19, "fullAtom":I
    iget v3, v6, Lcom/facebook/ads/redexgen/X/CH;->A03:I

    const/4 v2, 0x2

    if-ne v3, v2, :cond_b

    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_b

    const/16 v17, 0x1

    .line 61703
    .local v1, "workaroundEveryVideoFrameIsSyncFrame":Z
    :goto_5
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/CJ;->A0E:[I

    aget v2, v2, p1

    add-int v10, v5, v2

    .line 61704
    .local v2, "trackRunEnd":I
    .end local v0    # "sampleIsSyncFrameTable":[Z
    .end local v1    # "workaroundEveryVideoFrameIsSyncFrame":Z
    .local v20, "sampleIsSyncFrameTable":[Z
    .local v21, "workaroundEveryVideoFrameIsSyncFrame":Z
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/CH;->A06:J

    .line 61705
    .local v0, "timescale":J
    if-lez p1, :cond_3

    .end local v3    # "atomFlags":I
    .end local v4    # "track":Lcom/facebook/ads/redexgen/X/CH;
    .local v22, "atomFlags":I
    .local v23, "track":Lcom/facebook/ads/redexgen/X/CH;
    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/CJ;->A06:J

    .line 61706
    .local v3, "i":I
    .local p3, "cumulativeTime":J
    :cond_3
    :goto_6
    if-ge v5, v10, :cond_12

    .line 61707
    if-eqz v25, :cond_a

    invoke-virtual/range {p6 .. p6}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v13

    .line 61708
    .local v4, "sampleDuration":I
    :goto_7
    if-eqz v24, :cond_9

    invoke-virtual/range {p6 .. p6}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v12

    .line 61709
    .local v11, "sampleSize":I
    :goto_8
    if-nez v5, :cond_7

    if-eqz v27, :cond_7

    .line 61710
    move/from16 v6, v26

    .line 61711
    .local v7, "sampleFlags":I
    :goto_9
    if-eqz v22, :cond_6

    .line 61712
    .end local v6    # "defaultSampleValues":Lcom/facebook/ads/redexgen/X/C2;
    .local p7, "defaultSampleValues":Lcom/facebook/ads/redexgen/X/C2;
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v8

    .line 61713
    .local v6, "sampleOffset":I
    .end local v12    # "sampleSizesPresent":Z
    .end local v13    # "sampleFlagsPresent":Z
    .local p8, "sampleSizesPresent":Z
    .local p9, "sampleFlagsPresent":Z
    int-to-long v8, v8

    const-wide/16 v15, 0x3e8

    mul-long/2addr v8, v15

    div-long/2addr v8, v2

    long-to-int v15, v8

    aput v15, v11, v5

    .line 61714
    .end local v6    # "sampleOffset":I
    :goto_a
    const-wide/16 p2, 0x3e8

    .line 61715
    move-wide/from16 p0, v0

    move-wide/from16 p4, v2

    invoke-static/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Hs;->A0F(JJJ)J

    move-result-wide v8

    sub-long v8, v8, v20

    aput-wide v8, v18, v5

    .line 61716
    aput v12, v19, v5

    .line 61717
    shr-int/lit8 v6, v6, 0x10

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_5

    if-eqz v17, :cond_4

    if-nez v5, :cond_5

    :cond_4
    const/4 v6, 0x1

    :goto_b
    aput-boolean v6, v14, v5

    .line 61718
    int-to-long v8, v13

    .end local p3    # "cumulativeTime":J
    .local v0, "cumulativeTime":J
    .local v25, "timescale":J
    add-long/2addr v0, v8

    .line 61719
    .end local v0    # "cumulativeTime":J
    .end local v4    # "sampleDuration":I
    .end local v7    # "sampleFlags":I
    .end local v11    # "sampleSize":I
    .restart local p3    # "cumulativeTime":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 61720
    :cond_5
    const/4 v6, 0x0

    goto :goto_b

    .line 61721
    .end local p7
    .end local p8
    .end local p9
    .local v6, "defaultSampleValues":Lcom/facebook/ads/redexgen/X/C2;
    .restart local v12    # "sampleSizesPresent":Z
    .restart local v13    # "sampleFlagsPresent":Z
    .end local v6    # "defaultSampleValues":Lcom/facebook/ads/redexgen/X/C2;
    .end local v12    # "sampleSizesPresent":Z
    .end local v13    # "sampleFlagsPresent":Z
    .restart local p7
    .restart local p8
    .restart local p9
    :cond_6
    const/4 v8, 0x0

    aput v8, v11, v5

    goto :goto_a

    .line 61722
    :cond_7
    if-eqz v23, :cond_8

    invoke-virtual/range {p6 .. p6}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v6

    goto :goto_9

    .end local v7
    .local p6, "firstSampleFlagsPresent":Z
    :cond_8
    iget v6, v7, Lcom/facebook/ads/redexgen/X/C2;->A01:I

    goto :goto_9

    .line 61723
    .end local v11
    .local p5, "sampleDurationsPresent":Z
    :cond_9
    iget v12, v7, Lcom/facebook/ads/redexgen/X/C2;->A03:I

    sget-object v8, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v8, v8, v6

    const/4 v6, 0x2

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v6, 0x43

    if-eq v8, v6, :cond_11

    sget-object v9, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v8, "dkwnFPd0"

    const/4 v6, 0x6

    aput-object v8, v9, v6

    goto :goto_8

    .line 61724
    :cond_a
    iget v13, v7, Lcom/facebook/ads/redexgen/X/C2;->A00:I

    goto :goto_7

    .line 61725
    :cond_b
    const/16 v17, 0x0

    goto :goto_5

    .line 61726
    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 61727
    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 61728
    :cond_e
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 61729
    :cond_f
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 61730
    :cond_10
    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61731
    .end local v25    # "timescale":J
    .end local p5    # "sampleDurationsPresent":Z
    .end local p6    # "firstSampleFlagsPresent":Z
    .end local p7
    .end local p8
    .end local p9
    .local v0, "timescale":J
    .restart local v6    # "defaultSampleValues":Lcom/facebook/ads/redexgen/X/C2;
    .local v7, "firstSampleFlagsPresent":Z
    .local v11, "sampleDurationsPresent":Z
    .restart local v12    # "sampleSizesPresent":Z
    .restart local v13    # "sampleFlagsPresent":Z
    .end local v3    # "i":I
    .end local p3    # "cumulativeTime":J
    .local v0, "cumulativeTime":J
    .restart local v25    # "timescale":J
    :cond_12
    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/CJ;->A06:J

    .line 61732
    return v10
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Hc;)J
    .locals 1

    .line 61733
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 61734
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v0

    .line 61735
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bw;->A01(I)I

    move-result v0

    .line 61736
    .local p0, "version":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0N()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Hc;)J
    .locals 2

    .line 61737
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 61738
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v0

    .line 61739
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bw;->A01(I)I

    move-result v1

    .line 61740
    .local v1, "version":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0N()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Hc;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hc;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/C2;",
            ">;"
        }
    .end annotation

    .line 61741
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 61742
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v1

    .line 61743
    .local v0, "trackId":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 61744
    .local v1, "defaultSampleDescriptionIndex":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v4

    .line 61745
    .local v2, "defaultSampleDuration":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v3

    .line 61746
    .local v3, "defaultSampleSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v2

    .line 61747
    .local v4, "defaultSampleFlags":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/C2;

    invoke-direct {v0, v5, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/C2;-><init>(IIII)V

    .line 61748
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Hc;J)Landroid/util/Pair;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hc;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/facebook/ads/redexgen/X/WZ;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 61749
    const/16 v0, 0x8

    move-object/from16 v5, p0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 61750
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v0

    .line 61751
    .local v1, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bw;->A01(I)I

    move-result v1

    .line 61752
    .local v2, "version":I
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 61753
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v19

    .line 61754
    .local v10, "timescale":J
    .local v4, "offset":J
    if-nez v1, :cond_0

    .line 61755
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v15

    .line 61756
    .local v6, "earliestPresentationTime":J
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v0

    add-long p1, p1, v0

    .line 61757
    .end local v4    # "offset":J
    .end local v6    # "earliestPresentationTime":J
    .local v12, "earliestPresentationTime":J
    .local v14, "offset":J
    :goto_0
    const-wide/32 v17, 0xf4240

    .line 61758
    invoke-static/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/Hs;->A0F(JJJ)J

    move-result-wide v13

    .line 61759
    .local v16, "earliestPresentationTimeUs":J
    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 61760
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v7

    .line 61761
    .local v8, "referenceCount":I
    new-array v6, v7, [I

    .line 61762
    .local v9, "sizes":[I
    new-array v8, v7, [J

    .line 61763
    .local v6, "offsets":[J
    new-array v4, v7, [J

    .line 61764
    .local v7, "durationsUs":[J
    new-array v3, v7, [J

    .line 61765
    .local v4, "timesUs":[J
    .local v18, "time":J
    .local p0, "timeUs":J
    const/4 v2, 0x0

    move-wide v11, v13

    .local v14, "i":I
    .local v18, "offset":J
    .local p0, "time":J
    .local p2, "timeUs":J
    :goto_1
    if-ge v2, v7, :cond_2

    .line 61766
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v1

    .line 61767
    .local v15, "firstInt":I
    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    .line 61768
    .local p4, "type":I
    if-nez v0, :cond_1

    .line 61769
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v9

    .line 61770
    .local p5, "referenceDuration":J
    const v0, 0x7fffffff

    and-int/2addr v0, v1

    aput v0, v6, v2

    .line 61771
    aput-wide p1, v8, v2

    .line 61772
    aput-wide v11, v3, v2

    .line 61773
    add-long/2addr v15, v9

    .line 61774
    const-wide/32 v17, 0xf4240

    .end local v4    # "timesUs":[J
    .local v3, "timesUs":[J
    .end local v6    # "offsets":[J
    .end local v7    # "durationsUs":[J
    .local v1, "offsets":[J
    .local v2, "durationsUs":[J
    .local p9, "fullAtom":I
    .local p10, "version":I
    .end local v8    # "referenceCount":I
    .end local v9    # "sizes":[I
    .local v12, "sizes":[I
    .local p7, "referenceCount":I
    .local p11, "earliestPresentationTime":J
    invoke-static/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/Hs;->A0F(JJJ)J

    move-result-wide v11

    .line 61775
    aget-wide v9, v3, v2

    sub-long v0, v11, v9

    aput-wide v0, v4, v2

    .line 61776
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 61777
    aget v0, v6, v2

    int-to-long v0, v0

    add-long p1, p1, v0

    .line 61778
    .end local v15    # "firstInt":I
    .end local p4
    .end local p5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 61779
    .end local v6
    :cond_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0N()J

    move-result-wide v15

    .line 61780
    .restart local v6    # "offsets":[J
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0N()J

    move-result-wide v0

    add-long p1, p1, v0

    goto :goto_0

    .line 61781
    .end local v3    # "timesUs":[J
    .end local p7
    .end local p9
    .end local p10
    .end local p11
    .local v1, "fullAtom":I
    .local v2, "version":I
    .restart local v4    # "timesUs":[J
    .restart local v6    # "offsets":[J
    .restart local v7    # "durationsUs":[J
    .restart local v8    # "referenceCount":I
    .restart local v9    # "sizes":[I
    .local v12, "earliestPresentationTime":J
    .restart local v15    # "firstInt":I
    .restart local p4
    .end local v4    # "timesUs":[J
    .restart local v3    # "timesUs":[J
    :cond_1
    const/16 v2, 0x245

    const/16 v1, 0x1c

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61782
    .end local v3    # "timesUs":[J
    .end local v15    # "firstInt":I
    .end local p4
    .restart local v4    # "timesUs":[J
    .end local v4    # "timesUs":[J
    .end local v6    # "offsets":[J
    .end local v7    # "durationsUs":[J
    .end local v9    # "sizes":[I
    .end local v14    # "i":I
    .local v1, "offsets":[J
    .local v2, "durationsUs":[J
    .restart local v3    # "timesUs":[J
    .local v12, "sizes":[I
    .restart local p9
    .restart local p10
    .restart local p11
    :cond_2
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/WZ;

    invoke-direct {v0, v6, v8, v4, v3}, Lcom/facebook/ads/redexgen/X/WZ;-><init>([I[J[J[J)V

    .line 61783
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Ljava/util/List;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/WD;",
            ">;)",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;"
        }
    .end annotation

    .line 61784
    .local p0, "leafChildren":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Atom$LeafAtom;>;"
    const/4 v4, 0x0

    .line 61785
    .local v0, "schemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    .line 61786
    .local v1, "leafChildrenSize":I
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v5, v6, :cond_4

    .line 61787
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/WD;

    .line 61788
    .local v3, "child":Lcom/facebook/ads/redexgen/X/WD;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0s:I

    if-ne v1, v0, :cond_2

    .line 61789
    if-nez v4, :cond_0

    .line 61790
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61791
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WD;->A00:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    .line 61792
    .local v4, "psshData":[B
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/CE;->A03([B)Ljava/util/UUID;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61793
    .local v5, "uuid":Ljava/util/UUID;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "tzO"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    .line 61794
    const/16 v2, 0x80

    const/16 v1, 0x16

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1b5

    const/16 v1, 0x2a

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61795
    .end local v3    # "child":Lcom/facebook/ads/redexgen/X/WD;
    .end local v4    # "psshData":[B
    .end local v5    # "uuid":Ljava/util/UUID;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 61796
    :cond_3
    const/16 v2, 0x2b8

    const/16 v1, 0x9

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    invoke-direct {v0, v3, v1, v7}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61797
    .end local v2    # "i":I
    :cond_4
    if-nez v4, :cond_5

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_5
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    invoke-direct {v0, v4}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;-><init>(Ljava/util/List;)V

    goto :goto_2
.end method

.method private A06(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/C2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/C2;",
            ">;I)",
            "Lcom/facebook/ads/redexgen/X/C2;"
        }
    .end annotation

    .line 61798
    .local p1, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/DefaultSampleValues;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 61799
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/C2;

    return-object v0

    .line 61800
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/C2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/C2;

    return-object v0
.end method

.method public static A07(Landroid/util/SparseArray;)Lcom/facebook/ads/redexgen/X/C8;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/C8;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/C8;"
        }
    .end annotation

    .line 61801
    .local v9, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/4 v9, 0x0

    .line 61802
    .local v0, "nextTrackBundle":Lcom/facebook/ads/redexgen/X/C8;
    const-wide v7, 0x7fffffffffffffffL

    .line 61803
    .local v1, "nextTrackRunOffset":J
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 61804
    .local v3, "trackBundlesSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 61805
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/C8;

    .line 61806
    .local v5, "trackBundle":Lcom/facebook/ads/redexgen/X/C8;
    iget v6, v3, Lcom/facebook/ads/redexgen/X/C8;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "VXm0n"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CJ;->A02:I

    if-ne v6, v0, :cond_1

    .line 61807
    .end local v5    # "trackBundle":Lcom/facebook/ads/redexgen/X/C8;
    .end local v7
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61808
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/CJ;->A0G:[J

    iget v0, v3, Lcom/facebook/ads/redexgen/X/C8;->A02:I

    aget-wide v1, v1, v0

    .line 61809
    .local v7, "trunOffset":J
    cmp-long v0, v1, v7

    if-gez v0, :cond_0

    .line 61810
    move-object v9, v3

    .line 61811
    move-wide v7, v1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61812
    .end local v4    # "i":I
    :cond_3
    return-object v9
.end method

.method public static A08(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/C8;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/C8;",
            ">;I)",
            "Lcom/facebook/ads/redexgen/X/C8;"
        }
    .end annotation

    .line 61813
    .local p0, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 61814
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/C8;

    return-object v0

    .line 61815
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/C8;

    return-object v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/Hc;Landroid/util/SparseArray;)Lcom/facebook/ads/redexgen/X/C8;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hc;",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/C8;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/C8;"
        }
    .end annotation

    .line 61816
    .local p4, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 61817
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v0

    .line 61818
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bw;->A00(I)I

    move-result v7

    .line 61819
    .local v1, "atomFlags":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v0

    .line 61820
    .local v2, "trackId":I
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A08(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/C8;

    move-result-object v6

    .line 61821
    .local v3, "trackBundle":Lcom/facebook/ads/redexgen/X/C8;
    if-nez v6, :cond_0

    .line 61822
    const/4 v0, 0x0

    return-object v0

    .line 61823
    :cond_0
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_1

    .line 61824
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0N()J

    move-result-wide v1

    .line 61825
    .local v4, "baseDataPosition":J
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/CJ;->A05:J

    .line 61826
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/CJ;->A04:J

    .line 61827
    .end local v4    # "baseDataPosition":J
    :cond_1
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/C8;->A04:Lcom/facebook/ads/redexgen/X/C2;

    .line 61828
    .local v4, "defaultSampleValues":Lcom/facebook/ads/redexgen/X/C2;
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_5

    .line 61829
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 61830
    .local v5, "defaultSampleDescriptionIndex":I
    :goto_0
    and-int/lit8 v0, v7, 0x8

    if-eqz v0, :cond_4

    .line 61831
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v4

    .line 61832
    .local v6, "defaultSampleDuration":I
    :goto_1
    and-int/lit8 v0, v7, 0x10

    if-eqz v0, :cond_3

    .line 61833
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v3

    .line 61834
    .local v7, "defaultSampleSize":I
    :goto_2
    and-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_2

    .line 61835
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v2

    .line 61836
    .local p0, "defaultSampleFlags":I
    :goto_3
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/C2;

    invoke-direct {v0, v5, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/C2;-><init>(IIII)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/CJ;->A07:Lcom/facebook/ads/redexgen/X/C2;

    .line 61837
    return-object v6

    .line 61838
    :cond_2
    iget v2, v1, Lcom/facebook/ads/redexgen/X/C2;->A01:I

    goto :goto_3

    .line 61839
    :cond_3
    iget v3, v1, Lcom/facebook/ads/redexgen/X/C2;->A03:I

    goto :goto_2

    .line 61840
    :cond_4
    iget v4, v1, Lcom/facebook/ads/redexgen/X/C2;->A00:I

    goto :goto_1

    .line 61841
    :cond_5
    iget v5, v1, Lcom/facebook/ads/redexgen/X/C2;->A02:I

    goto :goto_0
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0X:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x67

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0B()V
    .locals 1

    .line 61842
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A02:I

    .line 61843
    iput v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    .line 61844
    return-void
.end method

.method private A0C()V
    .locals 6

    .line 61845
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0I:[Lcom/facebook/ads/redexgen/X/Bh;

    if-nez v0, :cond_2

    .line 61846
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Bh;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0I:[Lcom/facebook/ads/redexgen/X/Bh;

    .line 61847
    const/4 v5, 0x0

    .line 61848
    .local v0, "emsgTrackOutputCount":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A0M:Lcom/facebook/ads/redexgen/X/Bh;

    if-eqz v2, :cond_0

    .line 61849
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W8;->A0I:[Lcom/facebook/ads/redexgen/X/Bh;

    add-int/lit8 v0, v5, 0x1

    .end local v0    # "emsgTrackOutputCount":I
    .local v3, "emsgTrackOutputCount":I
    aput-object v2, v1, v5

    move v5, v0

    .line 61850
    .end local v3    # "emsgTrackOutputCount":I
    .restart local v0    # "emsgTrackOutputCount":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0J:I

    const/4 v4, 0x4

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    .line 61851
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W8;->A0I:[Lcom/facebook/ads/redexgen/X/Bh;

    add-int/lit8 v2, v5, 0x1

    .end local v0    # "emsgTrackOutputCount":I
    .restart local v3    # "emsgTrackOutputCount":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/BX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    .line 61852
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v0

    aput-object v0, v3, v5

    move v5, v2

    .line 61853
    .end local v3    # "emsgTrackOutputCount":I
    .restart local v0    # "emsgTrackOutputCount":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0I:[Lcom/facebook/ads/redexgen/X/Bh;

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Bh;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0I:[Lcom/facebook/ads/redexgen/X/Bh;

    .line 61854
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/W8;->A0I:[Lcom/facebook/ads/redexgen/X/Bh;

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v4, v2

    .line 61855
    .local v4, "eventMessageTrackOutput":Lcom/facebook/ads/redexgen/X/Bh;
    sget-object v0, Lcom/facebook/ads/redexgen/X/W8;->A0b:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 61856
    .end local v4    # "eventMessageTrackOutput":Lcom/facebook/ads/redexgen/X/Bh;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61857
    .end local v0    # "emsgTrackOutputCount":I
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W8;->A0H:[Lcom/facebook/ads/redexgen/X/Bh;

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "8HQd7O"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    .line 61858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0V:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Bh;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0H:[Lcom/facebook/ads/redexgen/X/Bh;

    .line 61859
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0H:[Lcom/facebook/ads/redexgen/X/Bh;

    array-length v0, v0

    if-ge v3, v0, :cond_3

    .line 61860
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/BX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v3

    const/4 v0, 0x3

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v1

    .line 61861
    .local v1, "output":Lcom/facebook/ads/redexgen/X/Bh;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0V:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 61862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0H:[Lcom/facebook/ads/redexgen/X/Bh;

    aput-object v1, v0, v3

    .line 61863
    .end local v1    # "output":Lcom/facebook/ads/redexgen/X/Bh;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 61864
    .end local v0    # "i":I
    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0D()V
    .locals 1

    const/16 v0, 0x2c1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/W8;->A0X:[B

    return-void

    :array_0
    .array-data 1
        0x75t
        0x79t
        0x54t
        0x61t
        0x7at
        0x78t
        0x35t
        0x66t
        0x7ct
        0x6ft
        0x70t
        0x35t
        0x79t
        0x70t
        0x66t
        0x66t
        0x35t
        0x61t
        0x7dt
        0x74t
        0x7bt
        0x35t
        0x7dt
        0x70t
        0x74t
        0x71t
        0x70t
        0x67t
        0x35t
        0x79t
        0x70t
        0x7bt
        0x72t
        0x61t
        0x7dt
        0x35t
        0x3dt
        0x60t
        0x7bt
        0x66t
        0x60t
        0x65t
        0x65t
        0x7at
        0x67t
        0x61t
        0x70t
        0x71t
        0x3ct
        0x3bt
        0x72t
        0x59t
        0x43t
        0x45t
        0x4et
        0x17t
        0x54t
        0x58t
        0x42t
        0x59t
        0x43t
        0x17t
        0x5et
        0x59t
        0x17t
        0x44t
        0x55t
        0x50t
        0x47t
        0x17t
        0x16t
        0xat
        0x17t
        0x6t
        0x17t
        0x1ft
        0x42t
        0x59t
        0x44t
        0x42t
        0x47t
        0x47t
        0x58t
        0x45t
        0x43t
        0x52t
        0x53t
        0x1et
        0x19t
        0x77t
        0x5ct
        0x46t
        0x40t
        0x4bt
        0x12t
        0x51t
        0x5dt
        0x47t
        0x5ct
        0x46t
        0x12t
        0x5bt
        0x5ct
        0x12t
        0x41t
        0x55t
        0x42t
        0x56t
        0x12t
        0x13t
        0xft
        0x12t
        0x3t
        0x12t
        0x1at
        0x47t
        0x5ct
        0x41t
        0x47t
        0x42t
        0x42t
        0x5dt
        0x40t
        0x46t
        0x57t
        0x56t
        0x1bt
        0x1ct
        0x39t
        0xdt
        0x1et
        0x18t
        0x12t
        0x1at
        0x11t
        0xbt
        0x1at
        0x1bt
        0x32t
        0xft
        0x4bt
        0x3at
        0x7t
        0xbt
        0xdt
        0x1et
        0x1ct
        0xbt
        0x10t
        0xdt
        0x0t
        0x2et
        0x27t
        0x26t
        0x3bt
        0x20t
        0x27t
        0x2et
        0x69t
        0x27t
        0x2ct
        0x2et
        0x28t
        0x3dt
        0x20t
        0x3ft
        0x2ct
        0x69t
        0x26t
        0x2ft
        0x2ft
        0x3at
        0x2ct
        0x3dt
        0x69t
        0x3dt
        0x26t
        0x69t
        0x3at
        0x28t
        0x24t
        0x39t
        0x25t
        0x2ct
        0x69t
        0x2dt
        0x28t
        0x3dt
        0x28t
        0x67t
        0x33t
        0x1at
        0x1et
        0x19t
        0x5ft
        0x1et
        0xbt
        0x10t
        0x12t
        0x5ft
        0x1bt
        0x1at
        0x19t
        0x16t
        0x11t
        0x1at
        0xct
        0x5ft
        0x1at
        0x7t
        0xbt
        0x1at
        0x11t
        0x1bt
        0x1at
        0x1bt
        0x5ft
        0x1et
        0xbt
        0x10t
        0x12t
        0x5ft
        0xct
        0x16t
        0x5t
        0x1at
        0x5ft
        0x57t
        0xat
        0x11t
        0xct
        0xat
        0xft
        0xft
        0x10t
        0xdt
        0xbt
        0x1at
        0x1bt
        0x56t
        0x51t
        0x1et
        0x37t
        0x33t
        0x34t
        0x72t
        0x33t
        0x26t
        0x3dt
        0x3ft
        0x72t
        0x25t
        0x3bt
        0x26t
        0x3at
        0x72t
        0x3et
        0x37t
        0x3ct
        0x35t
        0x26t
        0x3at
        0x72t
        0x6ct
        0x72t
        0x60t
        0x63t
        0x66t
        0x65t
        0x66t
        0x6at
        0x61t
        0x64t
        0x66t
        0x65t
        0x72t
        0x7at
        0x27t
        0x3ct
        0x21t
        0x27t
        0x22t
        0x22t
        0x3dt
        0x20t
        0x26t
        0x37t
        0x36t
        0x7bt
        0x7ct
        0x3ft
        0x16t
        0x1dt
        0x14t
        0x7t
        0x1bt
        0x53t
        0x1et
        0x1at
        0x0t
        0x1et
        0x12t
        0x7t
        0x10t
        0x1bt
        0x49t
        0x53t
        0xft
        0x26t
        0x26t
        0x33t
        0x25t
        0x34t
        0x60t
        0x34t
        0x2ft
        0x60t
        0x25t
        0x2et
        0x23t
        0x32t
        0x39t
        0x30t
        0x34t
        0x29t
        0x2ft
        0x2et
        0x60t
        0x24t
        0x21t
        0x34t
        0x21t
        0x60t
        0x37t
        0x21t
        0x33t
        0x60t
        0x2et
        0x25t
        0x27t
        0x21t
        0x34t
        0x29t
        0x36t
        0x25t
        0x6et
        0x10t
        0x39t
        0x39t
        0x2ct
        0x3at
        0x2bt
        0x7ft
        0x2bt
        0x30t
        0x7ft
        0x3at
        0x31t
        0x3bt
        0x7ft
        0x30t
        0x39t
        0x7ft
        0x32t
        0x3bt
        0x3et
        0x2bt
        0x7ft
        0x28t
        0x3et
        0x2ct
        0x7ft
        0x31t
        0x3at
        0x38t
        0x3et
        0x2bt
        0x36t
        0x29t
        0x3at
        0x71t
        0x6at
        0x53t
        0x40t
        0x57t
        0x57t
        0x4ct
        0x41t
        0x4ct
        0x4bt
        0x42t
        0x5t
        0x71t
        0x57t
        0x44t
        0x46t
        0x4et
        0x60t
        0x4bt
        0x46t
        0x57t
        0x5ct
        0x55t
        0x51t
        0x4ct
        0x4at
        0x4bt
        0x67t
        0x4at
        0x5dt
        0x5t
        0x55t
        0x44t
        0x57t
        0x44t
        0x48t
        0x40t
        0x51t
        0x40t
        0x57t
        0x56t
        0x5t
        0x4ct
        0x56t
        0x5t
        0x50t
        0x4bt
        0x56t
        0x50t
        0x55t
        0x55t
        0x4at
        0x57t
        0x51t
        0x40t
        0x41t
        0xbt
        0xet
        0x36t
        0x34t
        0x2dt
        0x2dt
        0x38t
        0x39t
        0x7dt
        0x2dt
        0x2et
        0x2et
        0x35t
        0x7dt
        0x3ct
        0x29t
        0x32t
        0x30t
        0x7dt
        0x75t
        0x3bt
        0x3ct
        0x34t
        0x31t
        0x38t
        0x39t
        0x7dt
        0x29t
        0x32t
        0x7dt
        0x38t
        0x25t
        0x29t
        0x2ft
        0x3ct
        0x3et
        0x29t
        0x7dt
        0x28t
        0x28t
        0x34t
        0x39t
        0x74t
        0x36t
        0xet
        0xct
        0x15t
        0x15t
        0xct
        0xbt
        0x2t
        0x45t
        0x4t
        0x11t
        0xat
        0x8t
        0x45t
        0x12t
        0xct
        0x11t
        0xdt
        0x45t
        0x9t
        0x0t
        0xbt
        0x2t
        0x11t
        0xdt
        0x45t
        0x5bt
        0x45t
        0x57t
        0x54t
        0x51t
        0x52t
        0x51t
        0x5dt
        0x56t
        0x53t
        0x51t
        0x52t
        0x45t
        0x4dt
        0x10t
        0xbt
        0x16t
        0x10t
        0x15t
        0x15t
        0xat
        0x17t
        0x11t
        0x0t
        0x1t
        0x4ct
        0x4bt
        0x3et
        0x5t
        0xet
        0x13t
        0x1bt
        0xet
        0x8t
        0x1ft
        0xet
        0xft
        0x4bt
        0x6t
        0x4t
        0x4t
        0x1dt
        0x4bt
        0x9t
        0x4t
        0x13t
        0x45t
        0xdt
        0x36t
        0x3dt
        0x20t
        0x28t
        0x3dt
        0x3bt
        0x2ct
        0x3dt
        0x3ct
        0x78t
        0x2bt
        0x39t
        0x31t
        0x37t
        0x78t
        0x3dt
        0x36t
        0x2ct
        0x2at
        0x21t
        0x78t
        0x3bt
        0x37t
        0x2dt
        0x36t
        0x2ct
        0x62t
        0x78t
        0x4ct
        0x77t
        0x71t
        0x78t
        0x77t
        0x7dt
        0x75t
        0x7ct
        0x7dt
        0x39t
        0x70t
        0x77t
        0x7dt
        0x70t
        0x6bt
        0x7ct
        0x7at
        0x6dt
        0x39t
        0x6bt
        0x7ct
        0x7ft
        0x7ct
        0x6bt
        0x7ct
        0x77t
        0x7at
        0x7ct
        0x3at
        0xdt
        0x1et
        0x5t
        0xdt
        0xet
        0x0t
        0x9t
        0x4ct
        0x0t
        0x9t
        0x2t
        0xbt
        0x18t
        0x4t
        0x4ct
        0x8t
        0x9t
        0x1ft
        0xft
        0x1et
        0x5t
        0x1ct
        0x18t
        0x5t
        0x3t
        0x2t
        0x4ct
        0x5t
        0x2t
        0x4ct
        0x1ft
        0xbt
        0x1ct
        0x8t
        0x4ct
        0xat
        0x3t
        0x19t
        0x2t
        0x8t
        0x4ct
        0x44t
        0x19t
        0x2t
        0x1ft
        0x19t
        0x1ct
        0x1ct
        0x3t
        0x1et
        0x18t
        0x9t
        0x8t
        0x45t
        0x1ft
        0xet
        0xet
        0x12t
        0x17t
        0x1dt
        0x1ft
        0xat
        0x17t
        0x11t
        0x10t
        0x51t
        0x6t
        0x53t
        0x1bt
        0x13t
        0xdt
        0x19t
        0x3t
        0x15t
        0x19t
        0x17t
        0x17t
        0x8t
        0x5t
        0x4t
        0xet
        0x4et
        0x9t
        0x4t
        0x17t
        0x2t
        0x6t
        0x19t
        0x14t
        0x15t
        0x1ft
        0x5ft
        0x1dt
        0x0t
        0x44t
    .end array-data
.end method

.method private A0E(J)V
    .locals 13

    move-object v5, p0

    .line 61865
    :cond_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W8;->A0U:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 61866
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W8;->A0U:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/C7;

    .line 61867
    .local v1, "sampleInfo":Lcom/facebook/ads/redexgen/X/C7;
    iget v1, v5, Lcom/facebook/ads/redexgen/X/W8;->A03:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/C7;->A00:I

    sub-int/2addr v1, v0

    iput v1, v5, Lcom/facebook/ads/redexgen/X/W8;->A03:I

    .line 61868
    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/C7;->A01:J

    add-long v7, p1, v0

    .line 61869
    .local v2, "metadataTimeUs":J
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W8;->A0S:Lcom/facebook/ads/redexgen/X/Ho;

    if-eqz v0, :cond_1

    .line 61870
    invoke-virtual {v0, v7, v8}, Lcom/facebook/ads/redexgen/X/Ho;->A06(J)J

    move-result-wide v7

    .line 61871
    :cond_1
    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/W8;->A0I:[Lcom/facebook/ads/redexgen/X/Bh;

    array-length v2, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v6, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "ltl"

    const/4 v0, 0x7

    aput-object v1, v6, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v6, v3, v0

    .line 61872
    .local p1, "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/Bh;
    const/4 v9, 0x1

    iget v10, v4, Lcom/facebook/ads/redexgen/X/C7;->A00:I

    iget v11, v5, Lcom/facebook/ads/redexgen/X/W8;->A03:I

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 61873
    .end local p1    # "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/Bh;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61874
    :cond_3
    return-void
.end method

.method private A0F(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 61875
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WE;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/WE;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_0

    .line 61876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0I(Lcom/facebook/ads/redexgen/X/WE;)V

    goto :goto_0

    .line 61877
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W8;->A0B()V

    .line 61878
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/BW;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61879
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A07:J

    long-to-int v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    sub-int/2addr v2, v0

    .line 61880
    .local v1, "atomPayloadSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    if-eqz v0, :cond_0

    .line 61881
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/16 v0, 0x8

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/BW;->readFully([BII)V

    .line 61882
    iget v1, p0, Lcom/facebook/ads/redexgen/X/W8;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    new-instance v2, Lcom/facebook/ads/redexgen/X/WD;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WD;-><init>(ILcom/facebook/ads/redexgen/X/Hc;)V

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/W8;->A0O(Lcom/facebook/ads/redexgen/X/WD;J)V

    .line 61883
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/W8;->A0F(J)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61884
    :cond_0
    invoke-interface {p1, v2}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    goto :goto_0

    .line 61885
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "jmSEpbOdW733bHBoDHkBty1cmj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void
.end method

.method private A0H(Lcom/facebook/ads/redexgen/X/BW;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61886
    const/4 v2, 0x0

    .line 61887
    .local v0, "nextTrackBundle":Lcom/facebook/ads/redexgen/X/C8;
    const-wide v3, 0x7fffffffffffffffL

    .line 61888
    .local v1, "nextDataOffset":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 61889
    .local v3, "trackBundlesSize":I
    const/4 v7, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 61890
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/C8;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    .line 61891
    .local v5, "trackFragment":Lcom/facebook/ads/redexgen/X/CJ;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/CJ;->A0B:Z

    if-eqz v0, :cond_0

    iget-wide v5, v1, Lcom/facebook/ads/redexgen/X/CJ;->A04:J

    cmp-long v0, v5, v3

    if-gez v0, :cond_0

    .line 61892
    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/CJ;->A04:J

    .line 61893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/C8;

    .line 61894
    .end local v5    # "trackFragment":Lcom/facebook/ads/redexgen/X/CJ;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 61895
    .end local v4    # "i":I
    :cond_1
    if-nez v2, :cond_2

    .line 61896
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A02:I

    .line 61897
    return-void

    .line 61898
    :cond_2
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v0

    sub-long/2addr v3, v0

    long-to-int v0, v3

    .line 61899
    .local v5, "bytesToSkip":I
    if-ltz v0, :cond_3

    .line 61900
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 61901
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/CJ;->A04(Lcom/facebook/ads/redexgen/X/BW;)V

    .line 61902
    return-void

    .line 61903
    :cond_3
    const/16 v2, 0x133

    const/16 v1, 0x27

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/WE;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 61904
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0k:I

    if-ne v1, v0, :cond_1

    .line 61905
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W8;->A0K(Lcom/facebook/ads/redexgen/X/WE;)V

    .line 61906
    :cond_0
    :goto_0
    return-void

    .line 61907
    :cond_1
    iget v4, p1, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    sget v3, Lcom/facebook/ads/redexgen/X/Bw;->A0j:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "QeKmRdkmErMZReeQj8"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_3

    .line 61908
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W8;->A0J(Lcom/facebook/ads/redexgen/X/WE;)V

    goto :goto_0

    .line 61909
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/WE;

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "g8UpS1NyodMZ5eBXtPatKQwsoR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/WE;->A08(Lcom/facebook/ads/redexgen/X/WE;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "mkv5is6F5Mu6y6USr0b4mkDGodGLaqlp"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/WE;->A08(Lcom/facebook/ads/redexgen/X/WE;)V

    goto :goto_0
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/WE;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 61911
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/W8;->A0J:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0W:[B

    invoke-static {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0L(Lcom/facebook/ads/redexgen/X/WE;Landroid/util/SparseArray;I[B)V

    .line 61912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0L:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 61913
    .local v0, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;
    :goto_0
    if-eqz v3, :cond_2

    .line 61914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 61915
    .local v1, "trackCount":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 61916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/C8;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/C8;->A06(Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)V

    .line 61917
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61918
    :cond_0
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/WE;->A02:Ljava/util/List;

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "YTpzURZBrt0"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "jDJUPBNch9x"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/W8;->A05(Ljava/util/List;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    move-result-object v3

    goto :goto_0

    .line 61919
    .end local v1    # "trackCount":I
    .end local v2    # "i":I
    :cond_2
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/W8;->A0A:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v4

    if-eqz v0, :cond_4

    .line 61920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 61921
    .restart local v1    # "trackCount":I
    const/4 v3, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v3, v6, :cond_3

    .line 61922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/C8;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0A:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/C8;->A05(J)V

    .line 61923
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 61924
    .end local v2    # "i":I
    :cond_3
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/W8;->A0A:J

    .line 61925
    .end local v1    # "trackCount":I
    :cond_4
    return-void
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/WE;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 61926
    move-object v5, p0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W8;->A0N:Lcom/facebook/ads/redexgen/X/CH;

    if-nez v0, :cond_3

    const/4 v3, 0x1

    :goto_0
    const/16 v2, 0x214

    const/16 v1, 0x14

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/HD;->A06(ZLjava/lang/Object;)V

    .line 61927
    iget-object v11, v5, Lcom/facebook/ads/redexgen/X/W8;->A0L:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    if-eqz v11, :cond_2

    .line 61928
    .local v9, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;
    :goto_1
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0n:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A06(I)Lcom/facebook/ads/redexgen/X/WE;

    move-result-object v7

    .line 61929
    .local v2, "mvex":Lcom/facebook/ads/redexgen/X/WE;
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 61930
    .local v12, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/DefaultSampleValues;>;"
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 61931
    .local v5, "duration":J
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/WE;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 61932
    .local v13, "mvexChildrenSize":I
    const/4 v3, 0x0

    .end local v5    # "duration":J
    .local v7, "i":I
    .local p0, "duration":J
    :goto_2
    if-ge v3, v6, :cond_4

    .line 61933
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/WE;->A02:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/WD;

    .line 61934
    .local v5, "atom":Lcom/facebook/ads/redexgen/X/WD;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1N:I

    if-ne v1, v0, :cond_1

    .line 61935
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WD;->A00:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W8;->A03(Lcom/facebook/ads/redexgen/X/Hc;)Landroid/util/Pair;

    move-result-object v2

    .line 61936
    .local v6, "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/DefaultSampleValues;>;"
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/C2;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61937
    .end local v6    # "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/DefaultSampleValues;>;"
    .end local v5    # "atom":Lcom/facebook/ads/redexgen/X/WD;
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 61938
    :cond_1
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0g:I

    if-ne v1, v0, :cond_0

    .line 61939
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WD;->A00:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W8;->A01(Lcom/facebook/ads/redexgen/X/Hc;)J

    move-result-wide v9

    goto :goto_3

    .line 61940
    :cond_2
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/WE;->A02:Ljava/util/List;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W8;->A05(Ljava/util/List;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    move-result-object v11

    goto :goto_1

    .line 61941
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 61942
    .end local v7    # "i":I
    :cond_4
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 61943
    .local v11, "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Track;>;"
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/WE;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 61944
    .local v10, "moovContainerChildrenSize":I
    const/4 v2, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v2, v6, :cond_7

    .line 61945
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/WE;->A01:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/WE;

    .line 61946
    .local v8, "atom":Lcom/facebook/ads/redexgen/X/WE;
    iget v1, v7, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1M:I

    if-ne v1, v0, :cond_5

    .line 61947
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0o:I

    .line 61948
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A07(I)Lcom/facebook/ads/redexgen/X/WD;

    move-result-object v8

    iget v0, v5, Lcom/facebook/ads/redexgen/X/W8;->A0J:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    const/4 v12, 0x1

    :goto_5
    const/4 v13, 0x0

    .line 61949
    .end local v7    # "i":I
    .end local v8    # "atom":Lcom/facebook/ads/redexgen/X/WE;
    .local p4, "i":I
    .local p5, "atom":Lcom/facebook/ads/redexgen/X/WE;
    .end local v10    # "moovContainerChildrenSize":I
    .local p6, "moovContainerChildrenSize":I
    .end local v11    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Track;>;"
    .local v3, "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Track;>;"
    invoke-static/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/C1;->A0C(Lcom/facebook/ads/redexgen/X/WE;Lcom/facebook/ads/redexgen/X/WD;JLcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ZZ)Lcom/facebook/ads/redexgen/X/CH;

    move-result-object v1

    .line 61950
    .local v5, "track":Lcom/facebook/ads/redexgen/X/CH;
    if-eqz v1, :cond_5

    .line 61951
    iget v0, v1, Lcom/facebook/ads/redexgen/X/CH;->A00:I

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61952
    .end local v7
    .end local v8
    .end local v10
    .end local v11
    .restart local v3    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Track;>;"
    .restart local p4
    .restart local p6
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .end local p4
    .restart local v7    # "i":I
    goto :goto_4

    .line 61953
    :cond_6
    const/4 v12, 0x0

    goto :goto_5

    .line 61954
    .end local v3    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Track;>;"
    .end local p6
    .restart local v10    # "moovContainerChildrenSize":I
    .restart local v11    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Track;>;"
    .end local v7    # "i":I
    .end local v10    # "moovContainerChildrenSize":I
    .end local v11    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Track;>;"
    .restart local v3    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Track;>;"
    .restart local p6
    :cond_7
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 61955
    .local v5, "trackCount":I
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 61956
    const/4 v9, 0x0

    .local v4, "i":I
    :goto_6
    if-ge v9, v8, :cond_a

    .line 61957
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/redexgen/X/CH;

    .line 61958
    .local v6, "track":Lcom/facebook/ads/redexgen/X/CH;
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/BX;

    iget v0, v10, Lcom/facebook/ads/redexgen/X/CH;->A03:I

    invoke-interface {v1, v9, v0}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/C8;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/C8;-><init>(Lcom/facebook/ads/redexgen/X/Bh;)V

    .line 61959
    .local v7, "trackBundle":Lcom/facebook/ads/redexgen/X/C8;
    iget v0, v10, Lcom/facebook/ads/redexgen/X/CH;->A00:I

    invoke-direct {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/W8;->A06(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/C2;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/C2;)V

    .line 61960
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    iget v0, v10, Lcom/facebook/ads/redexgen/X/CH;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61961
    iget-wide v6, v5, Lcom/facebook/ads/redexgen/X/W8;->A08:J

    .end local v2    # "mvex":Lcom/facebook/ads/redexgen/X/WE;
    .local v8, "mvex":Lcom/facebook/ads/redexgen/X/WE;
    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/CH;->A04:J

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/facebook/ads/redexgen/X/W8;->A08:J

    .line 61962
    .end local v6    # "track":Lcom/facebook/ads/redexgen/X/CH;
    .end local v7    # "trackBundle":Lcom/facebook/ads/redexgen/X/C8;
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 61963
    .end local v8    # "mvex":Lcom/facebook/ads/redexgen/X/WE;
    .restart local v2    # "mvex":Lcom/facebook/ads/redexgen/X/WE;
    .end local v2    # "mvex":Lcom/facebook/ads/redexgen/X/WE;
    .restart local v8    # "mvex":Lcom/facebook/ads/redexgen/X/WE;
    :cond_8
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ne v0, v8, :cond_9

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 61964
    const/4 v6, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v6, v8, :cond_b

    .line 61965
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/CH;

    .line 61966
    .local v2, "track":Lcom/facebook/ads/redexgen/X/CH;
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/CH;->A00:I

    .line 61967
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/C8;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/CH;->A00:I

    .line 61968
    invoke-direct {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/W8;->A06(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/C2;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/C2;)V

    .line 61969
    .end local v2    # "track":Lcom/facebook/ads/redexgen/X/CH;
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 61970
    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    .line 61971
    .end local v8    # "mvex":Lcom/facebook/ads/redexgen/X/WE;
    .restart local v2    # "track":Lcom/facebook/ads/redexgen/X/CH;
    .end local v2    # "track":Lcom/facebook/ads/redexgen/X/CH;
    .end local v4    # "i":I
    .restart local v8    # "mvex":Lcom/facebook/ads/redexgen/X/WE;
    :cond_a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W8;->A0C()V

    .line 61972
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/BX;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BX;->A5G()V

    .line 61973
    .end local v1    # "i":I
    :cond_b
    return-void
.end method

.method public static A0L(Lcom/facebook/ads/redexgen/X/WE;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/WE;",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/C8;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 61974
    .local p1, "trackBundleArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 61975
    .local v0, "moofContainerChildrenSize":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 61976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A01:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/WE;

    .line 61977
    .local v2, "child":Lcom/facebook/ads/redexgen/X/WE;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1L:I

    if-ne v1, v0, :cond_0

    .line 61978
    invoke-static {v2, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/W8;->A0M(Lcom/facebook/ads/redexgen/X/WE;Landroid/util/SparseArray;I[B)V

    .line 61979
    .end local v2    # "child":Lcom/facebook/ads/redexgen/X/WE;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61980
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static A0M(Lcom/facebook/ads/redexgen/X/WE;Landroid/util/SparseArray;I[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/WE;",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/C8;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 61981
    .local p12, "trackBundleArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1J:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/WE;->A07(I)Lcom/facebook/ads/redexgen/X/WD;

    move-result-object v0

    .line 61982
    .local v2, "tfhd":Lcom/facebook/ads/redexgen/X/WD;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/WD;->A00:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/W8;->A09(Lcom/facebook/ads/redexgen/X/Hc;Landroid/util/SparseArray;)Lcom/facebook/ads/redexgen/X/C8;

    move-result-object v3

    .line 61983
    .local v3, "trackBundle":Lcom/facebook/ads/redexgen/X/C8;
    if-nez v3, :cond_0

    .line 61984
    return-void

    .line 61985
    :cond_0
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    .line 61986
    .local v5, "fragment":Lcom/facebook/ads/redexgen/X/CJ;
    iget-wide v1, v5, Lcom/facebook/ads/redexgen/X/CJ;->A06:J

    .line 61987
    .local v6, "decodeTime":J
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/C8;->A04()V

    .line 61988
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1I:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/WE;->A07(I)Lcom/facebook/ads/redexgen/X/WD;

    move-result-object v0

    .line 61989
    .local p1, "tfdtAtom":Lcom/facebook/ads/redexgen/X/WD;
    if-eqz v0, :cond_1

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1

    .line 61990
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1I:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/WE;->A07(I)Lcom/facebook/ads/redexgen/X/WD;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/WD;->A00:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W8;->A02(Lcom/facebook/ads/redexgen/X/Hc;)J

    move-result-wide v1

    .line 61991
    :cond_1
    invoke-static {p0, v3, v1, v2, p2}, Lcom/facebook/ads/redexgen/X/W8;->A0N(Lcom/facebook/ads/redexgen/X/WE;Lcom/facebook/ads/redexgen/X/C8;JI)V

    .line 61992
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/CH;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/CJ;->A07:Lcom/facebook/ads/redexgen/X/C2;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/C2;->A02:I

    .line 61993
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/CH;->A00(I)Lcom/facebook/ads/redexgen/X/CI;

    move-result-object v3

    .line 61994
    .local p2, "encryptionBox":Lcom/facebook/ads/redexgen/X/CI;
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0v:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/WE;->A07(I)Lcom/facebook/ads/redexgen/X/WD;

    move-result-object v0

    .line 61995
    .local p3, "saiz":Lcom/facebook/ads/redexgen/X/WD;
    if-eqz v0, :cond_2

    .line 61996
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/WD;->A00:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-static {v3, v0, v5}, Lcom/facebook/ads/redexgen/X/W8;->A0P(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Hc;Lcom/facebook/ads/redexgen/X/CJ;)V

    .line 61997
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0u:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/WE;->A07(I)Lcom/facebook/ads/redexgen/X/WD;

    move-result-object v0

    .line 61998
    .local p4, "saio":Lcom/facebook/ads/redexgen/X/WD;
    if-eqz v0, :cond_3

    .line 61999
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/WD;->A00:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/W8;->A0S(Lcom/facebook/ads/redexgen/X/Hc;Lcom/facebook/ads/redexgen/X/CJ;)V

    .line 62000
    :cond_3
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A11:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/WE;->A07(I)Lcom/facebook/ads/redexgen/X/WD;

    move-result-object v0

    .line 62001
    .local p5, "senc":Lcom/facebook/ads/redexgen/X/WD;
    if-eqz v0, :cond_4

    .line 62002
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/WD;->A00:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/W8;->A0T(Lcom/facebook/ads/redexgen/X/Hc;Lcom/facebook/ads/redexgen/X/CJ;)V

    .line 62003
    :cond_4
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0y:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/WE;->A07(I)Lcom/facebook/ads/redexgen/X/WD;

    move-result-object v1

    .line 62004
    .local p6, "sbgp":Lcom/facebook/ads/redexgen/X/WD;
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A12:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/WE;->A07(I)Lcom/facebook/ads/redexgen/X/WD;

    move-result-object v0

    .line 62005
    .local p7, "sgpd":Lcom/facebook/ads/redexgen/X/WD;
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 62006
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/WD;->A00:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/WD;->A00:Lcom/facebook/ads/redexgen/X/Hc;

    .line 62007
    if-eqz v3, :cond_8

    .end local v2    # "tfhd":Lcom/facebook/ads/redexgen/X/WD;
    .local p9, "tfhd":Lcom/facebook/ads/redexgen/X/WD;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/CI;->A02:Ljava/lang/String;

    .line 62008
    :goto_0
    invoke-static {v2, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/W8;->A0V(Lcom/facebook/ads/redexgen/X/Hc;Lcom/facebook/ads/redexgen/X/Hc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/CJ;)V

    .line 62009
    .end local v2
    .restart local p9
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 62010
    .local v1, "leafChildrenSize":I
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v4, v6, :cond_9

    .line 62011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A02:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "89j"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/WD;

    .line 62012
    .local p8, "atom":Lcom/facebook/ads/redexgen/X/WD;
    iget v1, v3, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    .end local v1    # "leafChildrenSize":I
    .local p10, "leafChildrenSize":I
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1R:I

    if-ne v1, v0, :cond_7

    .line 62013
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/WD;->A00:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-static {v0, v5, p3}, Lcom/facebook/ads/redexgen/X/W8;->A0U(Lcom/facebook/ads/redexgen/X/Hc;Lcom/facebook/ads/redexgen/X/CJ;[B)V

    .line 62014
    .end local p8
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 62015
    .end local p9
    .restart local v2    # "i":I
    .end local v2    # "i":I
    .restart local p9
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 62016
    .end local v2
    .end local p10
    .restart local v1    # "leafChildrenSize":I
    :cond_9
    return-void
.end method

.method public static A0N(Lcom/facebook/ads/redexgen/X/WE;Lcom/facebook/ads/redexgen/X/C8;JI)V
    .locals 13

    .line 62017
    const/4 v7, 0x0

    .line 62018
    .local v0, "trunCount":I
    const/4 v6, 0x0

    .line 62019
    .local v1, "totalSampleCount":I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/WE;->A02:Ljava/util/List;

    .line 62020
    .local v9, "leafChildren":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Atom$LeafAtom;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 62021
    .local v10, "leafChildrenSize":I
    const/4 v3, 0x0

    .end local v0    # "trunCount":I
    .end local v1    # "totalSampleCount":I
    .local v2, "i":I
    .local v11, "trunCount":I
    .local v12, "totalSampleCount":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 62022
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/WD;

    .line 62023
    .local v0, "atom":Lcom/facebook/ads/redexgen/X/WD;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1O:I

    if-ne v1, v0, :cond_0

    .line 62024
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/WD;->A00:Lcom/facebook/ads/redexgen/X/Hc;

    .line 62025
    .local v1, "trunData":Lcom/facebook/ads/redexgen/X/Hc;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62026
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v0

    .line 62027
    .local v3, "trunSampleCount":I
    if-lez v0, :cond_0

    .line 62028
    add-int/2addr v6, v0

    .line 62029
    add-int/lit8 v7, v7, 0x1

    .line 62030
    .end local v0    # "atom":Lcom/facebook/ads/redexgen/X/WD;
    .end local v1    # "trunData":Lcom/facebook/ads/redexgen/X/Hc;
    .end local v3    # "trunSampleCount":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62031
    .end local v2    # "i":I
    :cond_1
    const/4 v0, 0x0

    move-object v8, p1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/C8;->A02:I

    .line 62032
    iput v0, v8, Lcom/facebook/ads/redexgen/X/C8;->A00:I

    .line 62033
    iput v0, v8, Lcom/facebook/ads/redexgen/X/C8;->A01:I

    .line 62034
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    invoke-virtual {v0, v7, v6}, Lcom/facebook/ads/redexgen/X/CJ;->A03(II)V

    .line 62035
    const/4 v9, 0x0

    .line 62036
    .local v0, "trunIndex":I
    const/4 p1, 0x0

    .line 62037
    .local v1, "trunStartPosition":I
    const/4 v3, 0x0

    .end local v0    # "trunIndex":I
    .local v1, "trunIndex":I
    .local p0, "i":I
    .local p1, "trunStartPosition":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 62038
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/WD;

    .line 62039
    .local p2, "trun":Lcom/facebook/ads/redexgen/X/WD;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1O:I

    if-ne v1, v0, :cond_2

    .line 62040
    add-int/lit8 v0, v9, 0x1

    .end local v1    # "trunIndex":I
    .local p3, "trunIndex":I
    iget-object p0, v2, Lcom/facebook/ads/redexgen/X/WD;->A00:Lcom/facebook/ads/redexgen/X/Hc;

    .line 62041
    move-wide v10, p2

    move/from16 v12, p4

    invoke-static/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/W8;->A00(Lcom/facebook/ads/redexgen/X/C8;IJILcom/facebook/ads/redexgen/X/Hc;I)I

    move-result p1

    move v9, v0

    .line 62042
    .end local p2    # "trun":Lcom/facebook/ads/redexgen/X/WD;
    .end local p3    # "trunIndex":I
    .restart local v1    # "trunIndex":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62043
    .end local p0    # "i":I
    :cond_3
    return-void
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/WD;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 62044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WE;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/WE;->A09(Lcom/facebook/ads/redexgen/X/WD;)V

    .line 62046
    :cond_0
    :goto_0
    return-void

    .line 62047
    :cond_1
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A13:I

    if-ne v1, v0, :cond_2

    .line 62048
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/WD;->A00:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-static {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/W8;->A04(Lcom/facebook/ads/redexgen/X/Hc;J)Landroid/util/Pair;

    move-result-object v2

    .line 62049
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/ChunkIndex;>;"
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0B:J

    .line 62050
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/BX;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Be;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AEd(Lcom/facebook/ads/redexgen/X/Be;)V

    .line 62051
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0F:Z

    .end local v0    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/ChunkIndex;>;"
    goto :goto_0

    .line 62052
    :cond_2
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0Q:I

    if-ne v1, v0, :cond_0

    .line 62053
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/WD;->A00:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0Q(Lcom/facebook/ads/redexgen/X/Hc;)V

    goto :goto_0
.end method

.method public static A0P(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Hc;Lcom/facebook/ads/redexgen/X/CJ;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 62054
    iget p0, p0, Lcom/facebook/ads/redexgen/X/CI;->A00:I

    .line 62055
    .local v0, "vectorSize":I
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62056
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v0

    .line 62057
    .local v2, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bw;->A00(I)I

    move-result v0

    .line 62058
    .local v3, "flags":I
    and-int/lit8 v0, v0, 0x1

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 62059
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 62060
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v2

    .line 62061
    .local v1, "defaultSampleInfoSize":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v4

    .line 62062
    .local v4, "sampleCount":I
    iget v0, p2, Lcom/facebook/ads/redexgen/X/CJ;->A00:I

    if-ne v4, v0, :cond_6

    .line 62063
    const/4 v3, 0x0

    .line 62064
    .local p0, "totalSize":I
    const/4 v1, 0x0

    if-nez v2, :cond_2

    .line 62065
    iget-object v2, p2, Lcom/facebook/ads/redexgen/X/CJ;->A0H:[Z

    .line 62066
    .local p2, "sampleHasSubsampleEncryptionTable":[Z
    const/4 v1, 0x0

    .local p3, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 62067
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    .line 62068
    .local p4, "sampleInfoSize":I
    add-int/2addr v3, v0

    .line 62069
    if-le v0, p0, :cond_1

    const/4 v0, 0x1

    :goto_1
    aput-boolean v0, v2, v1

    .line 62070
    .end local p4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62071
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 62072
    :cond_2
    if-le v2, p0, :cond_4

    .line 62073
    .local v5, "subsampleEncryption":Z
    :goto_2
    mul-int/2addr v2, v4

    add-int/2addr v3, v2

    .line 62074
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/CJ;->A0H:[Z

    invoke-static {v0, v1, v4, v5}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 62075
    .end local v5    # "subsampleEncryption":Z
    :cond_3
    invoke-virtual {p2, v3}, Lcom/facebook/ads/redexgen/X/CJ;->A02(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_5

    .line 62076
    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "tC3WLCXP6DZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "0Zxl8CEli3D"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void

    .line 62077
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62078
    .end local p0    # "totalSize":I
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x122

    const/16 v1, 0x11

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/facebook/ads/redexgen/X/CJ;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0Q(Lcom/facebook/ads/redexgen/X/Hc;)V
    .locals 17

    .line 62079
    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0I:[Lcom/facebook/ads/redexgen/X/Bh;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 62080
    .end local v10
    .end local v11
    .end local v13
    :cond_0
    return-void

    .line 62081
    :cond_1
    const/16 v7, 0xc

    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62082
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v10

    .line 62083
    .local v10, "sampleSize":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Hc;->A0Q()Ljava/lang/String;

    .line 62084
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Hc;->A0Q()Ljava/lang/String;

    .line 62085
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v15

    .line 62086
    .local v11, "timescale":J
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v11

    const-wide/32 v13, 0xf4240

    invoke-static/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/Hs;->A0F(JJJ)J

    move-result-wide v2

    .line 62087
    .local v13, "presentationTimeDeltaUs":J
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/W8;->A0I:[Lcom/facebook/ads/redexgen/X/Bh;

    array-length v5, v6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v0, v6, v1

    .line 62088
    .local v7, "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/Bh;
    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62089
    invoke-interface {v0, v8, v10}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 62090
    .end local v7    # "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/Bh;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62091
    :cond_2
    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/W8;->A0B:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v7, v5

    if-eqz v0, :cond_4

    .line 62092
    add-long/2addr v7, v2

    .line 62093
    .local v2, "sampleTimeUs":J
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0S:Lcom/facebook/ads/redexgen/X/Ho;

    if-eqz v0, :cond_3

    .line 62094
    invoke-virtual {v0, v7, v8}, Lcom/facebook/ads/redexgen/X/Ho;->A06(J)J

    move-result-wide v7

    .line 62095
    .end local v2    # "sampleTimeUs":J
    .local v15, "sampleTimeUs":J
    :cond_3
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/W8;->A0I:[Lcom/facebook/ads/redexgen/X/Bh;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v6, v2, v0

    .line 62096
    .local p0, "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/Bh;
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 62097
    .end local p0    # "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/Bh;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62098
    :cond_4
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/W8;->A0U:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/C7;

    invoke-direct {v0, v2, v3, v10}, Lcom/facebook/ads/redexgen/X/C7;-><init>(JI)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 62099
    iget v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A03:I

    add-int/2addr v0, v10

    iput v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A03:I

    .line 62100
    :cond_5
    return-void
.end method

.method public static A0R(Lcom/facebook/ads/redexgen/X/Hc;ILcom/facebook/ads/redexgen/X/CJ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 62101
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62102
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v0

    .line 62103
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bw;->A00(I)I

    move-result v1

    .line 62104
    .local v1, "flags":I
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_2

    .line 62105
    and-int/lit8 v0, v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 62106
    .local v2, "subsampleEncryption":Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result p1

    .line 62107
    .local p1, "sampleCount":I
    iget v0, p2, Lcom/facebook/ads/redexgen/X/CJ;->A00:I

    if-ne p1, v0, :cond_1

    .line 62108
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/CJ;->A0H:[Z

    invoke-static {v0, v2, p1, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 62109
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/CJ;->A02(I)V

    .line 62110
    invoke-virtual {p2, p0}, Lcom/facebook/ads/redexgen/X/CJ;->A05(Lcom/facebook/ads/redexgen/X/Hc;)V

    .line 62111
    return-void

    .line 62112
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 62113
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x122

    const/16 v1, 0x11

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/facebook/ads/redexgen/X/CJ;->A00:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62114
    .end local v2    # "subsampleEncryption":Z
    .end local p1    # "sampleCount":I
    :cond_2
    const/16 v2, 0x17d

    const/16 v1, 0x38

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0S(Lcom/facebook/ads/redexgen/X/Hc;Lcom/facebook/ads/redexgen/X/CJ;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 62115
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62116
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v2

    .line 62117
    .local v1, "fullAtom":I
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Bw;->A00(I)I

    move-result v0

    .line 62118
    .local v2, "flags":I
    and-int/lit8 v1, v0, 0x1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 62119
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 62120
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v4

    .line 62121
    .local v0, "entryCount":I
    if-ne v4, v0, :cond_2

    .line 62122
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(I)I

    move-result v0

    .line 62123
    .local v3, "version":I
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/CJ;->A04:J

    .line 62124
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v0

    :goto_0
    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/facebook/ads/redexgen/X/CJ;->A04:J

    .line 62125
    return-void

    .line 62126
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0N()J

    move-result-wide v0

    goto :goto_0

    .line 62127
    .end local v3    # "version":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x228

    const/16 v1, 0x1d

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0T(Lcom/facebook/ads/redexgen/X/Hc;Lcom/facebook/ads/redexgen/X/CJ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 62128
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/W8;->A0R(Lcom/facebook/ads/redexgen/X/Hc;ILcom/facebook/ads/redexgen/X/CJ;)V

    .line 62129
    return-void
.end method

.method public static A0U(Lcom/facebook/ads/redexgen/X/Hc;Lcom/facebook/ads/redexgen/X/CJ;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 62130
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62131
    const/16 v1, 0x10

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 62132
    sget-object v0, Lcom/facebook/ads/redexgen/X/W8;->A0c:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62133
    return-void

    .line 62134
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/W8;->A0R(Lcom/facebook/ads/redexgen/X/Hc;ILcom/facebook/ads/redexgen/X/CJ;)V

    .line 62135
    return-void
.end method

.method public static A0V(Lcom/facebook/ads/redexgen/X/Hc;Lcom/facebook/ads/redexgen/X/Hc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/CJ;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 62136
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62137
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v2

    .line 62138
    .local v4, "sbgpFullAtom":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/W8;->A0a:I

    if-eq v1, v0, :cond_0

    .line 62139
    return-void

    .line 62140
    :cond_0
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(I)I

    move-result v0

    const/4 v4, 0x4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 62141
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 62142
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 62143
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62144
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v3

    .line 62145
    .local v3, "sgpdFullAtom":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/W8;->A0a:I

    if-eq v1, v0, :cond_2

    .line 62146
    return-void

    .line 62147
    :cond_2
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Bw;->A01(I)I

    move-result v1

    .line 62148
    .local v5, "sgpdVersion":I
    if-ne v1, v2, :cond_5

    .line 62149
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-eqz v0, :cond_9

    .line 62150
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v5

    const-wide/16 v3, 0x1

    cmp-long v0, v5, v3

    if-nez v0, :cond_8

    .line 62151
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 62152
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v1

    .line 62153
    .local v8, "patternByte":I
    and-int/lit16 v0, v1, 0xf0

    shr-int/lit8 v7, v0, 0x4

    .line 62154
    .local v6, "cryptByteBlock":I
    and-int/lit8 v8, v1, 0xf

    .line 62155
    .local p0, "skipByteBlock":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_4

    const/4 v3, 0x1

    .line 62156
    .local p9, "isProtected":Z
    :goto_1
    if-nez v3, :cond_6

    .line 62157
    return-void

    .line 62158
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 62159
    :cond_5
    const/4 v0, 0x2

    if-lt v1, v0, :cond_3

    .line 62160
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    goto :goto_0

    .line 62161
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v5

    .line 62162
    .local p10, "perSampleIvSize":I
    const/16 v0, 0x10

    new-array v6, v0, [B

    .line 62163
    .local p6, "keyId":[B
    array-length v0, v6

    invoke-virtual {p1, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 62164
    const/4 p0, 0x0

    .line 62165
    .local p1, "constantIv":[B
    if-eqz v3, :cond_7

    if-nez v5, :cond_7

    .line 62166
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    .line 62167
    .local p3, "constantIvSize":I
    new-array p0, v0, [B

    .line 62168
    invoke-virtual {p1, p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 62169
    .end local p1    # "constantIv":[B
    .local p11, "constantIv":[B
    :cond_7
    iput-boolean v2, p3, Lcom/facebook/ads/redexgen/X/CJ;->A0A:Z

    .line 62170
    new-instance v2, Lcom/facebook/ads/redexgen/X/CI;

    .end local p6
    .local p12, "keyId":[B
    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/CI;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v2, p3, Lcom/facebook/ads/redexgen/X/CJ;->A08:Lcom/facebook/ads/redexgen/X/CI;

    .line 62171
    return-void

    .line 62172
    .end local v6    # "cryptByteBlock":I
    .end local v8    # "patternByte":I
    .end local p0    # "skipByteBlock":I
    .end local p9
    .end local p10
    .end local p11
    .end local p12
    :cond_8
    const/16 v2, 0x59

    const/16 v1, 0x27

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62173
    :cond_9
    const/16 v2, 0x261

    const/16 v1, 0x37

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62174
    .end local v3    # "sgpdFullAtom":I
    .end local v5    # "sgpdVersion":I
    :cond_a
    const/16 v2, 0x32

    const/16 v1, 0x27

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0W(I)Z
    .locals 1

    .line 62175
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0k:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1M:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0e:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0i:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A17:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0j:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1L:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0n:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0O:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0X(I)Z
    .locals 4

    .line 62176
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0W:I

    if-eq p0, v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0d:I

    if-eq p0, v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0o:I

    if-eq p0, v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A13:I

    if-eq p0, v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1B:I

    if-eq p0, v0, :cond_2

    sget v3, Lcom/facebook/ads/redexgen/X/Bw;->A1I:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "0bfDB"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1J:I

    if-eq p0, v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1K:I

    if-eq p0, v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1N:I

    if-eq p0, v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1O:I

    if-eq p0, v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0s:I

    if-eq p0, v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0v:I

    if-eq p0, v0, :cond_2

    sget v3, Lcom/facebook/ads/redexgen/X/Bw;->A0u:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "GM1eDi9JpLsxcWxFcWWsCjSZthCJdr4f"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A11:I

    if-eq p0, v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1R:I

    if-eq p0, v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0y:I

    if-eq p0, v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A12:I

    if-eq p0, v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0P:I

    if-eq p0, v0, :cond_2

    sget v3, Lcom/facebook/ads/redexgen/X/Bw;->A0g:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "Eu3"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0Q:I

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0Y(Lcom/facebook/ads/redexgen/X/BW;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62177
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 62178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0O:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-interface {p1, v0, v5, v6, v4}, Lcom/facebook/ads/redexgen/X/BW;->ADu([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62179
    return v5

    .line 62180
    :cond_0
    iput v6, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    .line 62181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0O:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0O:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A07:J

    .line 62183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0O:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A01:I

    .line 62184
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A07:J

    const-wide/16 v7, 0x1

    cmp-long v2, v0, v7

    if-nez v2, :cond_5

    .line 62185
    const/16 v1, 0x8

    .line 62186
    .local v0, "headerBytesRemaining":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0O:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-interface {p1, v0, v6, v1}, Lcom/facebook/ads/redexgen/X/BW;->readFully([BII)V

    .line 62187
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_c

    .line 62188
    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "6cAY2NAyMtL9j2hMAwiIzwyy"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0O:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0N()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A07:J

    .line 62189
    .end local v0    # "headerBytesRemaining":I
    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A07:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    sget-object v7, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "YhN2vmsMCgc"

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const-string v1, "GXPkMa8ctqb"

    const/4 v0, 0x4

    aput-object v1, v7, v0

    int-to-long v0, v8

    cmp-long v7, v2, v0

    if-ltz v7, :cond_a

    .line 62190
    :goto_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    int-to-long v0, v0

    sub-long/2addr v2, v0

    .line 62191
    .local v4, "atomPosition":J
    iget v1, p0, Lcom/facebook/ads/redexgen/X/W8;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0j:I

    if-ne v1, v0, :cond_8

    .line 62192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 62193
    .local v0, "trackCount":I
    const/4 v8, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v8, v9, :cond_8

    .line 62194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/C8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    .line 62195
    .local v7, "fragment":Lcom/facebook/ads/redexgen/X/CJ;
    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/CJ;->A03:J

    .line 62196
    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/CJ;->A04:J

    .line 62197
    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/CJ;->A05:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3

    .line 62198
    .end local v7    # "fragment":Lcom/facebook/ads/redexgen/X/CJ;
    sget-object v7, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "tKeeSnEBB5V"

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const-string v1, "1ppH9MP2kpM"

    const/4 v0, 0x4

    aput-object v1, v7, v0

    add-int/lit8 v8, v8, 0x0

    goto :goto_2

    .end local v7
    :cond_3
    sget-object v7, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "GrBVN"

    const/4 v0, 0x0

    aput-object v1, v7, v0

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    sget-object v7, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "I3p"

    const/4 v0, 0x7

    aput-object v1, v7, v0

    int-to-long v0, v8

    cmp-long v7, v2, v0

    if-ltz v7, :cond_a

    goto :goto_1

    .line 62199
    :cond_5
    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-nez v2, :cond_2

    .line 62200
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A70()J

    move-result-wide v2

    .line 62201
    .local v4, "endPosition":J
    const-wide/16 v7, -0x1

    cmp-long v0, v2, v7

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 62202
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W8;->A0T:Ljava/util/ArrayDeque;

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "9SBPW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WE;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/WE;->A00:J

    .line 62203
    :cond_6
    :goto_3
    cmp-long v0, v2, v7

    if-eqz v0, :cond_2

    .line 62204
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A07:J

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WE;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/WE;->A00:J

    goto :goto_3

    .line 62205
    .end local v0    # "trackCount":I
    .end local v6    # "i":I
    :cond_8
    iget v1, p0, Lcom/facebook/ads/redexgen/X/W8;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0c:I

    const/4 v9, 0x0

    if-ne v1, v0, :cond_f

    .line 62206
    iput-object v9, p0, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    .line 62207
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A07:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A09:J

    .line 62208
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0F:Z

    if-nez v0, :cond_9

    .line 62209
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/BX;

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/W8;->A08:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/WU;

    invoke-direct {v0, v5, v6, v2, v3}, Lcom/facebook/ads/redexgen/X/WU;-><init>(JJ)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AEd(Lcom/facebook/ads/redexgen/X/Be;)V

    .line 62210
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/W8;->A0F:Z

    .line 62211
    :cond_9
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A02:I

    .line 62212
    return v4

    .line 62213
    .end local v4    # "endPosition":J
    :cond_a
    const/4 v2, 0x2

    const/16 v1, 0x30

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62214
    :cond_b
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W8;->A0X(I)Z

    move-result v0

    const-wide/32 v7, 0x7fffffff

    if-eqz v0, :cond_e

    .line 62215
    iget v3, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "6Yw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v3, v6, :cond_12

    .line 62216
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A07:J

    cmp-long v0, v2, v7

    if-gtz v0, :cond_11

    .line 62217
    long-to-int v1, v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    .line 62218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0O:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-static {v1, v5, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62219
    iput v4, p0, Lcom/facebook/ads/redexgen/X/W8;->A02:I

    goto :goto_4

    .line 62220
    :cond_e
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/W8;->A07:J

    cmp-long v0, v1, v7

    if-gtz v0, :cond_13

    .line 62221
    iput-object v9, p0, Lcom/facebook/ads/redexgen/X/W8;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    .line 62222
    iput v4, p0, Lcom/facebook/ads/redexgen/X/W8;->A02:I

    goto :goto_4

    .line 62223
    :cond_f
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W8;->A0W(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 62224
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v5

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A07:J

    add-long/2addr v5, v0

    const-wide/16 v0, 0x8

    sub-long/2addr v5, v0

    .line 62225
    .local v0, "endPosition":J
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W8;->A0T:Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/W8;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/WE;

    invoke-direct {v0, v1, v5, v6}, Lcom/facebook/ads/redexgen/X/WE;-><init>(IJ)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 62226
    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/W8;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A00:I

    int-to-long v1, v0

    cmp-long v0, v7, v1

    if-nez v0, :cond_10

    .line 62227
    invoke-direct {p0, v5, v6}, Lcom/facebook/ads/redexgen/X/W8;->A0F(J)V

    .line 62228
    :goto_4
    return v4

    .line 62229
    :cond_10
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W8;->A0B()V

    goto :goto_4

    .line 62230
    :cond_11
    const/16 v2, 0xf1

    const/16 v1, 0x31

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62231
    :cond_12
    const/16 v2, 0xbe

    const/16 v1, 0x33

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62232
    :cond_13
    const/16 v2, 0x1df

    const/16 v1, 0x35

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0Z(Lcom/facebook/ads/redexgen/X/BW;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62233
    move-object/from16 v4, p0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A02:I

    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v14, 0x4

    const/4 v13, 0x1

    const/4 v12, 0x0

    move-object/from16 v9, p1

    if-ne v0, v2, :cond_8

    .line 62234
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    if-nez v0, :cond_3

    .line 62235
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W8;->A07(Landroid/util/SparseArray;)Lcom/facebook/ads/redexgen/X/C8;

    move-result-object v6

    .line 62236
    .local v2, "currentTrackBundle":Lcom/facebook/ads/redexgen/X/C8;
    if-nez v6, :cond_1

    .line 62237
    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/W8;->A09:J

    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v0

    sub-long/2addr v2, v0

    long-to-int v0, v2

    .line 62238
    .local v4, "bytesToSkip":I
    if-ltz v0, :cond_0

    .line 62239
    invoke-interface {v9, v0}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 62240
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/W8;->A0B()V

    .line 62241
    return v12

    .line 62242
    :cond_0
    const/16 v2, 0x15a

    const/16 v1, 0x23

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62243
    .end local v4    # "bytesToSkip":I
    :cond_1
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/CJ;->A0G:[J

    iget v0, v6, Lcom/facebook/ads/redexgen/X/C8;->A02:I

    aget-wide v0, v1, v0

    .line 62244
    .local v9, "nextDataPosition":J
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v7

    sub-long/2addr v0, v7

    long-to-int v5, v0

    .line 62245
    .local v8, "bytesToSkip":I
    if-gez v5, :cond_2

    .line 62246
    const/16 v5, 0x80

    const/16 v1, 0x16

    const/16 v0, 0x18

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v7

    const/16 v5, 0x96

    const/16 v1, 0x28

    const/16 v0, 0x2e

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62247
    const/4 v5, 0x0

    .line 62248
    :cond_2
    invoke-interface {v9, v5}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_5

    .line 62249
    sget-object v5, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "TF0FBE"

    const/4 v0, 0x3

    aput-object v1, v5, v0

    iput-object v6, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    .line 62250
    .end local v2    # "currentTrackBundle":Lcom/facebook/ads/redexgen/X/C8;
    .end local v8    # "bytesToSkip":I
    .end local v9    # "nextDataPosition":J
    :cond_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/CJ;->A0D:[I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/C8;->A01:I

    aget v0, v1, v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A06:I

    .line 62251
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/C8;->A01:I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/C8;->A03:I

    if-ge v1, v0, :cond_6

    .line 62252
    iget v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A06:I

    invoke-interface {v9, v0}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 62253
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/C8;->A02(Lcom/facebook/ads/redexgen/X/C8;)V

    .line 62254
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/C8;->A08()Z

    move-result v0

    if-nez v0, :cond_4

    .line 62255
    iput-object v3, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    .line 62256
    :cond_4
    iput v2, v4, Lcom/facebook/ads/redexgen/X/W8;->A02:I

    .line 62257
    return v13

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62258
    :cond_6
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/CH;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CH;->A02:I

    if-ne v0, v13, :cond_7

    .line 62259
    iget v1, v4, Lcom/facebook/ads/redexgen/X/W8;->A06:I

    const/16 v0, 0x8

    sub-int/2addr v1, v0

    iput v1, v4, Lcom/facebook/ads/redexgen/X/W8;->A06:I

    .line 62260
    invoke-interface {v9, v0}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 62261
    :cond_7
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/C8;->A03()I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A04:I

    .line 62262
    iget v1, v4, Lcom/facebook/ads/redexgen/X/W8;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A04:I

    add-int/2addr v1, v0

    iput v1, v4, Lcom/facebook/ads/redexgen/X/W8;->A06:I

    .line 62263
    iput v14, v4, Lcom/facebook/ads/redexgen/X/W8;->A02:I

    .line 62264
    iput v12, v4, Lcom/facebook/ads/redexgen/X/W8;->A05:I

    .line 62265
    :cond_8
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    .line 62266
    .local v2, "fragment":Lcom/facebook/ads/redexgen/X/CJ;
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_e

    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "Pqi"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/CH;

    .line 62267
    .local v8, "track":Lcom/facebook/ads/redexgen/X/CH;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    .line 62268
    .local v9, "output":Lcom/facebook/ads/redexgen/X/Bh;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    iget v8, v0, Lcom/facebook/ads/redexgen/X/C8;->A01:I

    .line 62269
    .local v15, "sampleIndex":I
    invoke-virtual {v6, v8}, Lcom/facebook/ads/redexgen/X/CJ;->A00(I)J

    move-result-wide v1

    const-wide/16 v10, 0x3e8

    mul-long/2addr v1, v10

    .line 62270
    .local v10, "sampleTimeUs":J
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0S:Lcom/facebook/ads/redexgen/X/Ho;

    if-eqz v0, :cond_9

    .line 62271
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ho;->A06(J)J

    move-result-wide v1

    .line 62272
    .end local v10    # "sampleTimeUs":J
    .local v13, "sampleTimeUs":J
    :cond_9
    iget v0, v5, Lcom/facebook/ads/redexgen/X/CH;->A01:I

    if-eqz v0, :cond_f

    .line 62273
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0Q:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    .line 62274
    .local v10, "nalPrefixData":[B
    aput-byte v12, v11, v12

    .line 62275
    aput-byte v12, v11, v13

    .line 62276
    const/4 v0, 0x2

    aput-byte v12, v11, v0

    .line 62277
    iget v10, v5, Lcom/facebook/ads/redexgen/X/CH;->A01:I

    add-int/2addr v10, v13

    .line 62278
    .local v11, "nalUnitPrefixLength":I
    iget v0, v5, Lcom/facebook/ads/redexgen/X/CH;->A01:I

    rsub-int/lit8 v17, v0, 0x4

    .line 62279
    .local v12, "nalUnitLengthFieldLengthDiff":I
    :goto_1
    iget v3, v4, Lcom/facebook/ads/redexgen/X/W8;->A04:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A06:I

    if-ge v3, v0, :cond_10

    .line 62280
    iget v15, v4, Lcom/facebook/ads/redexgen/X/W8;->A05:I

    sget-object v3, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x5

    move v3, v3

    move v0, v0

    if-eq v3, v0, :cond_b

    sget-object v16, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v3, "oY9Cfc6NZLH"

    const/4 v0, 0x2

    aput-object v3, v16, v0

    const-string v3, "IHvoiGll8tT"

    const/4 v0, 0x4

    aput-object v3, v16, v0

    if-nez v15, :cond_c

    .line 62281
    :goto_2
    move/from16 v0, v17

    invoke-interface {v9, v11, v0, v10}, Lcom/facebook/ads/redexgen/X/BW;->readFully([BII)V

    .line 62282
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0Q:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v12}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62283
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0Q:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v0

    sub-int/2addr v0, v13

    iput v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A05:I

    .line 62284
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0R:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v12}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62285
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0R:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-interface {v7, v0, v14}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 62286
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0Q:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-interface {v7, v0, v13}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 62287
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0H:[Lcom/facebook/ads/redexgen/X/Bh;

    array-length v0, v0

    if-lez v0, :cond_a

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/CH;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v3, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    aget-byte v0, v11, v14

    .line 62288
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/HY;->A0C(Ljava/lang/String;B)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0G:Z

    .line 62289
    iget v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A04:I

    add-int/lit8 v0, v0, 0x5

    iput v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A04:I

    .line 62290
    iget v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A06:I

    add-int v0, v0, v17

    iput v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A06:I

    goto :goto_1

    .line 62291
    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    :cond_b
    if-nez v15, :cond_c

    goto :goto_2

    .line 62292
    :cond_c
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0G:Z

    if-eqz v0, :cond_d

    .line 62293
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0P:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v15}, Lcom/facebook/ads/redexgen/X/Hc;->A0W(I)V

    .line 62294
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0P:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    iget v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A05:I

    invoke-interface {v9, v3, v12, v0}, Lcom/facebook/ads/redexgen/X/BW;->readFully([BII)V

    .line 62295
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/W8;->A0P:Lcom/facebook/ads/redexgen/X/Hc;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A05:I

    invoke-interface {v7, v3, v0}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 62296
    iget v3, v4, Lcom/facebook/ads/redexgen/X/W8;->A05:I

    .line 62297
    .local v3, "writtenBytes":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0P:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0P:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v0

    invoke-static {v12, v0}, Lcom/facebook/ads/redexgen/X/HY;->A02([BI)I

    move-result v15

    .line 62298
    .local v4, "unescapedLength":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0P:Lcom/facebook/ads/redexgen/X/Hc;

    move-object/from16 v16, v0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/CH;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v14, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    const/16 v13, 0x2ae

    const/16 v12, 0xa

    const/4 v0, 0x6

    invoke-static {v13, v12, v0}, Lcom/facebook/ads/redexgen/X/W8;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62299
    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/W8;->A0P:Lcom/facebook/ads/redexgen/X/Hc;

    move v0, v15

    invoke-virtual {v12, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0X(I)V

    .line 62300
    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/W8;->A0P:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0H:[Lcom/facebook/ads/redexgen/X/Bh;

    invoke-static {v1, v2, v12, v0}, Lcom/facebook/ads/redexgen/X/Fb;->A03(JLcom/facebook/ads/redexgen/X/Hc;[Lcom/facebook/ads/redexgen/X/Bh;)V

    .line 62301
    .end local v4    # "unescapedLength":I
    .restart local v3    # "writtenBytes":I
    :goto_4
    iget v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A04:I

    add-int/2addr v0, v3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A04:I

    .line 62302
    iget v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A05:I

    sub-int/2addr v0, v3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A05:I

    .line 62303
    .end local v3    # "writtenBytes":I
    const/4 v14, 0x4

    const/4 v13, 0x1

    const/4 v12, 0x0

    goto/16 :goto_1

    .line 62304
    .end local v3
    :cond_d
    const/4 v0, 0x0

    invoke-interface {v7, v9, v15, v0}, Lcom/facebook/ads/redexgen/X/Bh;->AEW(Lcom/facebook/ads/redexgen/X/BW;IZ)I

    move-result v3

    goto :goto_4

    :cond_e
    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "M6XHB"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/CH;

    .line 62305
    .local v8, "track":Lcom/facebook/ads/redexgen/X/CH;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    .line 62306
    .local v9, "output":Lcom/facebook/ads/redexgen/X/Bh;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    iget v8, v0, Lcom/facebook/ads/redexgen/X/C8;->A01:I

    .line 62307
    .local v15, "sampleIndex":I
    invoke-virtual {v6, v8}, Lcom/facebook/ads/redexgen/X/CJ;->A00(I)J

    move-result-wide v1

    const-wide/16 v10, 0x3e8

    mul-long/2addr v1, v10

    .line 62308
    .local v10, "sampleTimeUs":J
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0S:Lcom/facebook/ads/redexgen/X/Ho;

    if-eqz v0, :cond_9

    goto/16 :goto_0

    .line 62309
    :cond_f
    :goto_5
    iget v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A04:I

    iget v3, v4, Lcom/facebook/ads/redexgen/X/W8;->A06:I

    if-ge v0, v3, :cond_10

    .line 62310
    sub-int/2addr v3, v0

    const/4 v0, 0x0

    invoke-interface {v7, v9, v3, v0}, Lcom/facebook/ads/redexgen/X/Bh;->AEW(Lcom/facebook/ads/redexgen/X/BW;IZ)I

    move-result v3

    .line 62311
    .local v4, "writtenBytes":I
    iget v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A04:I

    add-int/2addr v0, v3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A04:I

    .line 62312
    .end local v4    # "writtenBytes":I
    goto :goto_5

    .line 62313
    :cond_10
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/CJ;->A0I:[Z

    aget-boolean v10, v0, v8

    .line 62314
    .local v3, "sampleFlags":I
    const/4 v3, 0x0

    .line 62315
    .local v4, "cryptoData":Lcom/facebook/ads/redexgen/X/Bg;
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/CJ;->A0A:Z

    if-eqz v0, :cond_11

    .line 62316
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v10, v0

    .line 62317
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/CJ;->A08:Lcom/facebook/ads/redexgen/X/CI;

    if-eqz v0, :cond_13

    .line 62318
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/CJ;->A08:Lcom/facebook/ads/redexgen/X/CI;

    .line 62319
    .local v5, "encryptionBox":Lcom/facebook/ads/redexgen/X/CI;
    :goto_6
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/CI;->A01:Lcom/facebook/ads/redexgen/X/Bg;

    .line 62320
    .end local v5    # "encryptionBox":Lcom/facebook/ads/redexgen/X/CI;
    :cond_11
    iget v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A06:I

    const/4 v12, 0x0

    move-wide v5, v1

    .end local v13    # "sampleTimeUs":J
    .local v17, "sampleTimeUs":J
    .end local v15    # "sampleIndex":I
    .local v5, "sampleIndex":I
    move-wide v8, v1

    move v11, v0

    move-object v13, v3

    move-object v7, v7

    invoke-interface/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 62321
    .end local v17    # "sampleTimeUs":J
    .local v10, "sampleTimeUs":J
    invoke-direct {v4, v5, v6}, Lcom/facebook/ads/redexgen/X/W8;->A0E(J)V

    .line 62322
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/C8;->A08()Z

    move-result v0

    if-nez v0, :cond_12

    .line 62323
    const/4 v0, 0x0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A0D:Lcom/facebook/ads/redexgen/X/C8;

    .line 62324
    :cond_12
    const/4 v0, 0x3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/W8;->A02:I

    .line 62325
    const/4 v0, 0x1

    return v0

    .line 62326
    :cond_13
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/CJ;->A07:Lcom/facebook/ads/redexgen/X/C2;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/C2;->A02:I

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/CH;->A00(I)Lcom/facebook/ads/redexgen/X/CI;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public final A8V(Lcom/facebook/ads/redexgen/X/BX;)V
    .locals 4

    .line 62327
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/BX;

    .line 62328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0N:Lcom/facebook/ads/redexgen/X/CH;

    if-eqz v0, :cond_0

    .line 62329
    iget v0, v0, Lcom/facebook/ads/redexgen/X/CH;->A03:I

    const/4 v3, 0x0

    invoke-interface {p1, v3, v0}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/C8;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/C8;-><init>(Lcom/facebook/ads/redexgen/X/Bh;)V

    .line 62330
    .local v0, "bundle":Lcom/facebook/ads/redexgen/X/C8;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W8;->A0N:Lcom/facebook/ads/redexgen/X/CH;

    new-instance v0, Lcom/facebook/ads/redexgen/X/C2;

    invoke-direct {v0, v3, v3, v3, v3}, Lcom/facebook/ads/redexgen/X/C2;-><init>(IIII)V

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/C2;)V

    .line 62331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62332
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W8;->A0C()V

    .line 62333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0C:Lcom/facebook/ads/redexgen/X/BX;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BX;->A5G()V

    .line 62334
    .end local v0    # "bundle":Lcom/facebook/ads/redexgen/X/C8;
    :cond_0
    return-void
.end method

.method public final ADp(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62335
    :cond_0
    :goto_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/W8;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/W8;->A0Y:[Ljava/lang/String;

    const-string v1, "Adcvl3OLLWBEEjCvRjB7l1tHvWvuGk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    if-eq v3, v0, :cond_2

    const/4 v0, 0x2

    if-eq v3, v0, :cond_1

    .line 62336
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W8;->A0Z(Lcom/facebook/ads/redexgen/X/BW;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62337
    const/4 v0, 0x0

    return v0

    .line 62338
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W8;->A0H(Lcom/facebook/ads/redexgen/X/BW;)V

    .line 62339
    goto :goto_0

    .line 62340
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W8;->A0G(Lcom/facebook/ads/redexgen/X/BW;)V

    .line 62341
    goto :goto_0

    .line 62342
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W8;->A0Y(Lcom/facebook/ads/redexgen/X/BW;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62343
    const/4 v0, -0x1

    return v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEc(JJ)V
    .locals 3

    .line 62344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 62345
    .local v0, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 62346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/C8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/C8;->A04()V

    .line 62347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62348
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0U:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 62349
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A03:I

    .line 62350
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/W8;->A0A:J

    .line 62351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W8;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 62352
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W8;->A0B()V

    .line 62353
    return-void
.end method

.method public final AFL(Lcom/facebook/ads/redexgen/X/BW;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62354
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/CF;->A03(Lcom/facebook/ads/redexgen/X/BW;)Z

    move-result v0

    return v0
.end method
