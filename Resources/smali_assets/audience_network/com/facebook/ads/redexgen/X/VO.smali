.class public final Lcom/facebook/ads/redexgen/X/VO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/D9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/DM;,
        Lcom/facebook/ads/redexgen/X/DL;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:I

.field public static final A04:Lcom/facebook/ads/redexgen/X/DL;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/DL;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 58738
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mDpfQ0Mg1qMGU0sRUyB4w0yHI9AflFxL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HrWFAZbBmLlJHBGWXoy88PVYdiXTIEfW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZQEIpFlmPj9dChjEJf3cuXBCToBvQGIn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RQPpjxLwn1F2LqLyPS6YhTLdMSPVP9VK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XPMzSAYF2Koz19PEH34p5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "swwfqTWHhic8XQtgs9vSQ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6JbQXNgGm6Rlu9UTMBxnLLi5Rd7F6qFb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jePmV9Iz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VO;->A0L()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/VP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VP;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/VO;->A04:Lcom/facebook/ads/redexgen/X/DL;

    .line 58739
    const/16 v2, 0xa6

    const/4 v1, 0x3

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/VO;->A03:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58740
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VO;-><init>(Lcom/facebook/ads/redexgen/X/DL;)V

    .line 58741
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DL;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/DL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58743
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VO;->A00:Lcom/facebook/ads/redexgen/X/DL;

    .line 58744
    return-void
.end method

.method public static A00(I)I
    .locals 1

    .line 58745
    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 58746
    :cond_0
    const/4 v0, 0x1

    .line 58747
    :goto_0
    return v0

    .line 58748
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Hc;I)I
    .locals 7

    .line 58749
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    .line 58750
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result p0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, p0, 0x1

    if-ge v0, p1, :cond_2

    .line 58751
    aget-byte v1, v5, p0

    const/16 v0, 0xff

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    add-int/lit8 v0, p0, 0x1

    aget-byte v0, v5, v0

    if-nez v0, :cond_0

    .line 58752
    add-int/lit8 v6, p0, 0x2

    add-int/lit8 v4, p0, 0x1

    sub-int v0, p1, p0

    add-int/lit8 v3, v0, -0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const-string v1, "GmDFLtMXmPbGQOJzrAUGcq8JFdShu0kr"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v5, v6, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58753
    add-int/lit8 p1, p1, -0x1

    .line 58754
    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58755
    .end local v1    # "i":I
    :cond_2
    return p1
.end method

.method public static A02([BI)I
    .locals 1

    .line 58756
    .local v0, "i":I
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 58757
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    .line 58758
    return p1

    .line 58759
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 58760
    .end local v0    # "i":I
    :cond_1
    array-length v0, p0

    return v0
.end method

.method public static A03([BII)I
    .locals 2

    .line 58761
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/VO;->A02([BI)I

    move-result v1

    .line 58762
    .local v0, "terminationPos":I
    if-eqz p2, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 58763
    :cond_0
    return v1

    .line 58764
    :cond_1
    :goto_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_3

    .line 58765
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_2

    .line 58766
    return v1

    .line 58767
    :cond_2
    add-int/lit8 v0, v1, 0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/VO;->A02([BI)I

    move-result v1

    goto :goto_0

    .line 58768
    :cond_3
    array-length v0, p0

    return v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Hc;II)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ApicFrame;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 58769
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v7

    .line 58770
    .local v0, "encoding":I
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/VO;->A0H(I)Ljava/lang/String;

    move-result-object v6

    .line 58771
    .local v1, "charset":Ljava/lang/String;
    add-int/lit8 v0, p1, -0x1

    new-array v5, v0, [B

    .line 58772
    .local v2, "data":[B
    add-int/lit8 v0, p1, -0x1

    const/4 p1, 0x0

    invoke-virtual {p0, v5, p1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 58773
    const/16 v2, 0x1ca

    const/4 v1, 0x6

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 58774
    const/4 v3, 0x2

    .line 58775
    .local v6, "mimeTypeEndIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, p1, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58776
    .local v3, "mimeType":Ljava/lang/String;
    const/16 v4, 0x1da

    const/16 v1, 0x9

    const/16 v0, 0x3a

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58777
    const/16 v2, 0x1d0

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v2

    .line 58778
    .end local v4
    .restart local v3    # "mimeType":Ljava/lang/String;
    :cond_0
    :goto_0
    add-int/lit8 v0, v3, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 p0, v0, 0xff

    .line 58779
    .local v4, "pictureType":I
    add-int/lit8 v1, v3, 0x2

    .line 58780
    .local v5, "descriptionStartIndex":I
    invoke-static {v5, v1, v7}, Lcom/facebook/ads/redexgen/X/VO;->A03([BII)I

    move-result v4

    .line 58781
    .local v7, "descriptionEndIndex":I
    sub-int v0, v4, v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5, v1, v0, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 58782
    .local p0, "description":Ljava/lang/String;
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/VO;->A00(I)I

    move-result v1

    add-int/2addr v1, v4

    .line 58783
    .local p1, "pictureDataStartIndex":I
    array-length v0, v5

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0N([BII)[B

    move-result-object v1

    .line 58784
    .local p2, "pictureData":[B
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ApicFrame;

    invoke-direct {v0, v2, v3, p0, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v0

    .line 58785
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v6    # "mimeTypeEndIndex":I
    :cond_1
    invoke-static {v5, p1}, Lcom/facebook/ads/redexgen/X/VO;->A02([BI)I

    move-result v3

    .line 58786
    .restart local v6    # "mimeTypeEndIndex":I
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, p1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58787
    .local v4, "mimeType":Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 58788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v4    # "mimeType":Ljava/lang/String;
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Hc;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/BinaryFrame;
    .locals 2

    .line 58789
    new-array v1, p1, [B

    .line 58790
    .local v0, "frame":[B
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 58791
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/BinaryFrame;

    invoke-direct {v0, p2, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Hc;IIZILcom/facebook/ads/redexgen/X/DL;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ChapterFrame;
    .locals 14
    .param p5    # Lcom/facebook/ads/redexgen/X/DL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 58792
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v2

    .line 58793
    .local v1, "framePosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/VO;->A02([BI)I

    move-result v6

    .line 58794
    .local v2, "chapterIdEndIndex":I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    sub-int v4, v6, v2

    const/16 v3, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5, v2, v4, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 58795
    .local v4, "chapterId":Ljava/lang/String;
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 58796
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v8

    .line 58797
    .local v12, "startTime":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v9

    .line 58798
    .local v13, "endTime":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v10

    .line 58799
    .local v5, "startOffset":J
    const-wide v3, 0xffffffffL

    cmp-long v0, v10, v3

    if-nez v0, :cond_0

    .line 58800
    const-wide/16 v10, -0x1

    .line 58801
    .end local v5    # "startOffset":J
    .local p0, "startOffset":J
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v12

    .line 58802
    .local v5, "endOffset":J
    cmp-long v0, v12, v3

    if-nez v0, :cond_1

    .line 58803
    const-wide/16 v12, -0x1

    .line 58804
    .end local v5    # "endOffset":J
    .local p2, "endOffset":J
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58805
    .local v11, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;>;"
    add-int/2addr v2, p1

    .line 58806
    .local v9, "limit":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v0

    if-ge v0, v2, :cond_3

    .line 58807
    move/from16 v5, p2

    move/from16 v4, p3

    move/from16 v3, p4

    move-object/from16 v0, p5

    invoke-static {v5, p0, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0B(ILcom/facebook/ads/redexgen/X/Hc;ZILcom/facebook/ads/redexgen/X/DL;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;

    move-result-object v0

    .line 58808
    .local v3, "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    if-eqz v0, :cond_2

    .line 58809
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58810
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array p0, v0, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;

    .line 58811
    .local v5, "subFrameArray":[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 58812
    new-instance v6, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ChapterFrame;

    .end local v5    # "subFrameArray":[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    .local p5, "subFrameArray":[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    .end local v9    # "limit":I
    .local p6, "limit":I
    .end local v11    # "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;>;"
    .local p7, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;>;"
    invoke-direct/range {v6 .. v14}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;)V

    return-object v6
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/Hc;IIZILcom/facebook/ads/redexgen/X/DL;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ChapterTocFrame;
    .locals 13
    .param p5    # Lcom/facebook/ads/redexgen/X/DL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 58813
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v4

    .line 58814
    .local v1, "framePosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/VO;->A02([BI)I

    move-result v6

    .line 58815
    .local v2, "elementIdEndIndex":I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    sub-int v3, v6, v4

    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5, v4, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 58816
    .local v4, "elementId":Ljava/lang/String;
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 58817
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v1

    .line 58818
    .local v9, "ctocFlags":I
    and-int/lit8 v0, v1, 0x2

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    .line 58819
    .local v5, "isRoot":Z
    :goto_0
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_0

    const/4 v11, 0x1

    .line 58820
    .local v6, "isOrdered":Z
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v6

    .line 58821
    .local v10, "childCount":I
    new-array v12, v6, [Ljava/lang/String;

    .line 58822
    .local v11, "children":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 58823
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v8

    .line 58824
    .local v8, "startIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-static {v0, v8}, Lcom/facebook/ads/redexgen/X/VO;->A02([BI)I

    move-result v3

    .line 58825
    .local v12, "endIndex":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    sub-int v1, v3, v8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v8, v1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v0, v12, v5

    .line 58826
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 58827
    .end local v8    # "startIndex":I
    .end local v12    # "endIndex":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 58828
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 58829
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58830
    .local v12, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;>;"
    add-int/2addr v4, p1

    .line 58831
    .local p0, "limit":I
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v0

    if-ge v0, v4, :cond_5

    .line 58832
    sget-object v2, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const-string v1, "YQsr0udxa6AlS4ZOrNFlw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "dBU8ocTiI6WLc8wZTOIXb"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    move/from16 v2, p3

    move/from16 v1, p4

    move-object/from16 v0, p5

    invoke-static {p2, p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0B(ILcom/facebook/ads/redexgen/X/Hc;ZILcom/facebook/ads/redexgen/X/DL;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;

    move-result-object v0

    .line 58833
    .local v3, "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    if-eqz v0, :cond_3

    .line 58834
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 58835
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array p0, v0, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;

    .line 58836
    .local v3, "subFrameArray":[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 58837
    new-instance v8, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ChapterTocFrame;

    .end local v3    # "subFrameArray":[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    .local p4, "subFrameArray":[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;)V

    return-object v8
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/Hc;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/CommentFrame;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 58838
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 58839
    const/4 v0, 0x0

    return-object v0

    .line 58840
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v6

    .line 58841
    .local v0, "encoding":I
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/VO;->A0H(I)Ljava/lang/String;

    move-result-object v5

    .line 58842
    .local v1, "charset":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 58843
    .local v3, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 58844
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 58845
    .local v2, "language":Ljava/lang/String;
    add-int/lit8 v0, p1, -0x4

    new-array v3, v0, [B

    .line 58846
    add-int/lit8 v0, p1, -0x4

    invoke-virtual {p0, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 58847
    invoke-static {v3, v1, v6}, Lcom/facebook/ads/redexgen/X/VO;->A03([BII)I

    move-result v0

    .line 58848
    .local v5, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 58849
    .local v4, "description":Ljava/lang/String;
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/VO;->A00(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 58850
    .local v6, "textStartIndex":I
    invoke-static {v3, v1, v6}, Lcom/facebook/ads/redexgen/X/VO;->A03([BII)I

    move-result v0

    .line 58851
    .local p0, "textEndIndex":I
    invoke-static {v3, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/VO;->A0K([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58852
    .local p1, "text":Ljava/lang/String;
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/CommentFrame;

    invoke-direct {v0, v4, v2, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/Hc;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/GeobFrame;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 58853
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v6

    .line 58854
    .local v0, "encoding":I
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/VO;->A0H(I)Ljava/lang/String;

    move-result-object v7

    .line 58855
    .local v1, "charset":Ljava/lang/String;
    add-int/lit8 v0, p1, -0x1

    new-array v5, v0, [B

    .line 58856
    .local v2, "data":[B
    add-int/lit8 v0, p1, -0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 58857
    invoke-static {v5, v8}, Lcom/facebook/ads/redexgen/X/VO;->A02([BI)I

    move-result v3

    .line 58858
    .local v3, "mimeTypeEndIndex":I
    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5, v8, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 58859
    .local v4, "mimeType":Ljava/lang/String;
    add-int/lit8 v1, v3, 0x1

    .line 58860
    .local v5, "filenameStartIndex":I
    invoke-static {v5, v1, v6}, Lcom/facebook/ads/redexgen/X/VO;->A03([BII)I

    move-result v0

    .line 58861
    .local v6, "filenameEndIndex":I
    invoke-static {v5, v1, v0, v7}, Lcom/facebook/ads/redexgen/X/VO;->A0K([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58862
    .local v7, "filename":Ljava/lang/String;
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/VO;->A00(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 58863
    .local v8, "descriptionStartIndex":I
    invoke-static {v5, v1, v6}, Lcom/facebook/ads/redexgen/X/VO;->A03([BII)I

    move-result v0

    .line 58864
    .local p0, "descriptionEndIndex":I
    invoke-static {v5, v1, v0, v7}, Lcom/facebook/ads/redexgen/X/VO;->A0K([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58865
    .local p1, "description":Ljava/lang/String;
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/VO;->A00(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 58866
    .local p2, "objectDataStartIndex":I
    array-length v0, v5

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0N([BII)[B

    move-result-object v1

    .line 58867
    .local p3, "objectData":[B
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/GeobFrame;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/DM;
    .locals 9

    .line 58868
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v3

    const/4 v8, 0x0

    const/16 v2, 0xb3

    const/16 v1, 0xa

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0xa

    if-ge v3, v0, :cond_0

    .line 58869
    const/16 v2, 0x1a

    const/16 v1, 0x1f

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58870
    return-object v8

    .line 58871
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0G()I

    move-result v4

    .line 58872
    .local v0, "id":I
    sget v0, Lcom/facebook/ads/redexgen/X/VO;->A03:I

    if-eq v4, v0, :cond_1

    .line 58873
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x178

    const/16 v1, 0x30

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58874
    return-object v8

    .line 58875
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v4

    .line 58876
    .local v3, "majorVersion":I
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 58877
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v6

    .line 58878
    .local v5, "flags":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0D()I

    move-result v2

    .line 58879
    .local v6, "framesSize":I
    const/4 v0, 0x2

    const/4 v5, 0x4

    if-ne v4, v0, :cond_3

    .line 58880
    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 58881
    .local v7, "isCompressed":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 58882
    const/16 v2, 0xbd

    const/16 v1, 0x44

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58883
    return-object v8

    .line 58884
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 58885
    :cond_3
    const/4 v0, 0x3

    if-ne v4, v0, :cond_7

    .line 58886
    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 58887
    .local v1, "hasExtendedHeader":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 58888
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v0

    .line 58889
    .local v2, "extendedHeaderSize":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 58890
    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v2, v0

    .line 58891
    :cond_4
    :goto_2
    if-ge v4, v5, :cond_5

    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_5

    .line 58892
    .local v1, "isUnsynchronized":Z
    :goto_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/DM;

    invoke-direct {v0, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/DM;-><init>(IZI)V

    return-object v0

    .line 58893
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 58894
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 58895
    :cond_7
    if-ne v4, v5, :cond_b

    .line 58896
    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 58897
    .restart local v1    # "isUnsynchronized":Z
    :goto_4
    if-eqz v0, :cond_8

    .line 58898
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0D()I

    move-result v1

    .line 58899
    .restart local v2    # "extendedHeaderSize":I
    add-int/lit8 v0, v1, -0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 58900
    sub-int/2addr v2, v1

    .line 58901
    .end local v2    # "extendedHeaderSize":I
    :cond_8
    and-int/lit8 v0, v6, 0x10

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 58902
    .local v2, "hasFooter":Z
    :goto_5
    if-eqz v0, :cond_4

    .line 58903
    add-int/lit8 v2, v2, -0xa

    goto :goto_2

    .line 58904
    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    .line 58905
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 58906
    .end local v1    # "isUnsynchronized":Z
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x101

    const/16 v1, 0x2e

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58907
    return-object v8
.end method

.method public static A0B(ILcom/facebook/ads/redexgen/X/Hc;ZILcom/facebook/ads/redexgen/X/DL;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    .locals 23
    .param p4    # Lcom/facebook/ads/redexgen/X/DL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58908
    move-object/from16 v12, p1

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v11

    .line 58909
    .local v9, "frameId0":I
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v10

    .line 58910
    .local v10, "frameId1":I
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v9

    .line 58911
    .local v11, "frameId2":I
    const/4 v0, 0x3

    move/from16 v13, p0

    if-lt v13, v0, :cond_4

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v8

    .line 58912
    .local v13, "frameId3":I
    :goto_0
    const/4 v1, 0x4

    move/from16 p2, p2

    if-ne v13, v1, :cond_2

    .line 58913
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v2

    .line 58914
    .local v1, "frameSize":I
    if-nez p2, :cond_1

    .line 58915
    and-int/lit16 v7, v2, 0xff

    shr-int/lit8 v1, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v7, v1

    shr-int/lit8 v1, v2, 0x10

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v7, v1

    shr-int/lit8 v1, v2, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v7, v1

    .line 58916
    .local v15, "frameSize":I
    :goto_1
    if-lt v13, v0, :cond_0

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v1

    .line 58917
    .local v6, "flags":I
    :goto_2
    const/16 v18, 0x0

    if-nez v11, :cond_5

    if-nez v10, :cond_5

    if-nez v9, :cond_5

    if-nez v8, :cond_5

    if-nez v7, :cond_5

    if-nez v1, :cond_5

    .line 58918
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 58919
    return-object v18

    .line 58920
    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    .line 58921
    :cond_1
    move v7, v2

    goto :goto_1

    .line 58922
    .end local v1    # "frameSize":I
    :cond_2
    if-ne v13, v0, :cond_3

    .line 58923
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v7

    .restart local v1    # "frameSize":I
    goto :goto_1

    .line 58924
    .end local v1    # "frameSize":I
    :cond_3
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/Hc;->A0G()I

    move-result v7

    goto :goto_1

    .line 58925
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 58926
    :cond_5
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v6

    add-int/2addr v6, v7

    .line 58927
    .local v5, "nextFramePosition":I
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v14

    const/16 v4, 0xb3

    const/16 v3, 0xa

    const/16 v2, 0x13

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v5

    if-le v6, v14, :cond_6

    .line 58928
    const/16 v2, 0x81

    const/16 v1, 0x25

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58929
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 58930
    return-object v18

    .line 58931
    :cond_6
    move-object/from16 v19, p4

    if-eqz v19, :cond_7

    .line 58932
    move/from16 v20, v13

    .end local v5    # "nextFramePosition":I
    .local v14, "nextFramePosition":I
    .end local v6    # "flags":I
    .local v12, "flags":I
    move/from16 p0, v9

    move/from16 p1, v8

    move/from16 v21, v11

    move/from16 v22, v10

    invoke-interface/range {v19 .. v24}, Lcom/facebook/ads/redexgen/X/DL;->A5I(IIIII)Z

    move-result v2

    if-nez v2, :cond_7

    .line 58933
    invoke-virtual {v12, v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 58934
    return-object v18

    .line 58935
    .end local v5
    .end local v6
    .restart local v12    # "flags":I
    .restart local v14    # "nextFramePosition":I
    :cond_7
    const/16 v16, 0x0

    .line 58936
    .local v1, "isCompressed":Z
    const/4 v15, 0x0

    .line 58937
    .local v2, "isEncrypted":Z
    const/4 v14, 0x0

    .line 58938
    .local v3, "isUnsynchronized":Z
    const/4 v4, 0x0

    .line 58939
    .local v4, "hasDataLength":Z
    const/16 v17, 0x0

    .line 58940
    .local v5, "hasGroupIdentifier":Z
    const/4 v3, 0x1

    if-ne v13, v0, :cond_d

    .line 58941
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_c

    const/4 v4, 0x1

    .line 58942
    :goto_3
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_b

    const/4 v15, 0x1

    .line 58943
    :goto_4
    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_a

    const/16 v17, 0x1

    .line 58944
    :goto_5
    move/from16 v16, v4

    .line 58945
    .end local v1    # "isCompressed":Z
    .end local v2    # "isEncrypted":Z
    .end local v3    # "isUnsynchronized":Z
    .end local v4    # "hasDataLength":Z
    .end local v5    # "hasGroupIdentifier":Z
    .local v17, "isCompressed":Z
    .local v19, "isEncrypted":Z
    .local v20, "hasGroupIdentifier":Z
    .local v21, "isUnsynchronized":Z
    .local v22, "hasDataLength":Z
    :cond_8
    :goto_6
    if-nez v16, :cond_9

    if-eqz v15, :cond_13

    .line 58946
    :cond_9
    const/16 v2, 0x12f

    const/16 v1, 0x32

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58947
    invoke-virtual {v12, v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 58948
    return-object v18

    .line 58949
    :cond_a
    const/16 v17, 0x0

    goto :goto_5

    .line 58950
    :cond_b
    const/4 v15, 0x0

    goto :goto_4

    .line 58951
    :cond_c
    const/4 v4, 0x0

    goto :goto_3

    .line 58952
    :cond_d
    const/4 v0, 0x4

    if-ne v13, v0, :cond_8

    .line 58953
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_12

    const/16 v17, 0x1

    .line 58954
    :goto_7
    and-int/lit8 v14, v1, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x9

    if-eq v2, v0, :cond_23

    sget-object v4, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const-string v2, "HxLFBObUGoObUPku8sA9h7LrWEHKW34t"

    const/4 v0, 0x1

    aput-object v2, v4, v0

    if-eqz v14, :cond_11

    const/16 v16, 0x1

    .line 58955
    :goto_8
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_10

    const/4 v15, 0x1

    .line 58956
    :goto_9
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_f

    const/4 v14, 0x1

    .line 58957
    :goto_a
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_e

    const/4 v4, 0x1

    :goto_b
    sget-object v1, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_21

    sget-object v2, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const-string v1, "76YFuh7tw8gcxzUEh5emTmdExIUmXPMQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    goto :goto_6

    :cond_e
    const/4 v4, 0x0

    goto :goto_b

    .line 58958
    :cond_f
    const/4 v14, 0x0

    goto :goto_a

    .line 58959
    :cond_10
    const/4 v15, 0x0

    goto :goto_9

    .line 58960
    :cond_11
    const/16 v16, 0x0

    goto :goto_8

    .line 58961
    :cond_12
    const/16 v17, 0x0

    goto :goto_7

    .line 58962
    :cond_13
    if-eqz v17, :cond_14

    .line 58963
    add-int/lit8 v7, v7, -0x1

    .line 58964
    invoke-virtual {v12, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 58965
    :cond_14
    if-eqz v4, :cond_15

    .line 58966
    add-int/lit8 v7, v7, -0x4

    .line 58967
    const/4 v0, 0x4

    invoke-virtual {v12, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 58968
    :cond_15
    if-eqz v14, :cond_16

    .line 58969
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/VO;->A01(Lcom/facebook/ads/redexgen/X/Hc;I)I

    move-result v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_23

    sget-object v2, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const-string v1, "dIhvSLGJl8O3rcL7YTqEi54kkSJTpWBQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "OHSHzbSYn697ho2omEP1pyKPk3tXqgth"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 58970
    :cond_16
    const/16 v14, 0x54

    const/4 v4, 0x2

    const/16 v1, 0x58

    if-ne v11, v14, :cond_18

    if-ne v10, v1, :cond_18

    if-ne v9, v1, :cond_18

    if-eq v13, v4, :cond_17

    if-ne v8, v1, :cond_18

    .line 58971
    :cond_17
    :try_start_0
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/VO;->A0D(Lcom/facebook/ads/redexgen/X/Hc;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/TextInformationFrame;

    move-result-object v4

    .local v0, "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 58972
    .end local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    :cond_18
    if-ne v11, v14, :cond_19

    .line 58973
    invoke-static {v13, v11, v10, v9, v8}, Lcom/facebook/ads/redexgen/X/VO;->A0J(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 58974
    .local v0, "id":Ljava/lang/String;
    invoke-static {v12, v7, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0E(Lcom/facebook/ads/redexgen/X/Hc;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/TextInformationFrame;

    move-result-object v4

    .line 58975
    .local v0, "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    goto/16 :goto_d

    :cond_19
    const/16 v0, 0x57

    if-ne v11, v0, :cond_1b

    if-ne v10, v1, :cond_1b

    if-ne v9, v1, :cond_1b

    if-eq v13, v4, :cond_1a

    if-ne v8, v1, :cond_1b

    .line 58976
    :cond_1a
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/VO;->A0F(Lcom/facebook/ads/redexgen/X/Hc;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/UrlLinkFrame;

    move-result-object v4

    .restart local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 58977
    .end local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    :cond_1b
    const/16 v0, 0x57

    if-ne v11, v0, :cond_1c

    .line 58978
    invoke-static {v13, v11, v10, v9, v8}, Lcom/facebook/ads/redexgen/X/VO;->A0J(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 58979
    .local v0, "id":Ljava/lang/String;
    invoke-static {v12, v7, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0G(Lcom/facebook/ads/redexgen/X/Hc;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/UrlLinkFrame;

    move-result-object v4

    .line 58980
    .local v0, "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .end local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    :cond_1c
    const/16 v0, 0x49

    const/16 v3, 0x50

    if-ne v11, v3, :cond_1d

    const/16 v1, 0x52

    if-ne v10, v1, :cond_1d

    if-ne v9, v0, :cond_1d

    const/16 v1, 0x56

    if-ne v8, v1, :cond_1d

    .line 58981
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/VO;->A0C(Lcom/facebook/ads/redexgen/X/Hc;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/PrivFrame;

    move-result-object v4

    .restart local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 58982
    .end local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    :cond_1d
    const/16 v1, 0x47

    const/16 v2, 0x4f

    if-ne v11, v1, :cond_1f

    const/16 v1, 0x45

    if-ne v10, v1, :cond_1f

    if-ne v9, v2, :cond_1f

    const/16 v1, 0x42

    if-eq v8, v1, :cond_1e

    if-ne v13, v4, :cond_1f

    .line 58983
    :cond_1e
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/VO;->A09(Lcom/facebook/ads/redexgen/X/Hc;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/GeobFrame;

    move-result-object v4

    .restart local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 58984
    .end local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    :cond_1f
    const/16 v1, 0x43

    if-ne v13, v4, :cond_20

    if-ne v11, v3, :cond_22

    if-ne v10, v0, :cond_22

    if-ne v9, v1, :cond_22

    goto :goto_c

    :cond_20
    const/16 v15, 0x41

    if-ne v11, v15, :cond_22

    if-ne v10, v3, :cond_22

    if-ne v9, v0, :cond_22

    if-ne v8, v1, :cond_22

    .line 58985
    :goto_c
    invoke-static {v12, v7, v13}, Lcom/facebook/ads/redexgen/X/VO;->A04(Lcom/facebook/ads/redexgen/X/Hc;II)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ApicFrame;

    move-result-object v4

    .restart local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    goto/16 :goto_d
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58986
    .end local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    :cond_22
    if-ne v11, v1, :cond_26

    if-ne v10, v2, :cond_26

    const/16 v17, 0x4d

    sget-object v16, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v15, v16, v0

    const/4 v0, 0x5

    aget-object v0, v16, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v15, v0, :cond_24

    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_24
    sget-object v16, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const-string v15, "XurFqz0ym5jqNnDtpyM0dKfpjr6GTNw3"

    const/4 v0, 0x1

    aput-object v15, v16, v0

    move/from16 v0, v17

    if-ne v9, v0, :cond_26

    const/16 v0, 0x4d

    if-eq v8, v0, :cond_25

    if-ne v13, v4, :cond_26

    .line 58987
    :cond_25
    :try_start_1
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/VO;->A08(Lcom/facebook/ads/redexgen/X/Hc;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/CommentFrame;

    move-result-object v4

    .restart local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    goto :goto_d

    .line 58988
    .end local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    :cond_26
    move/from16 p3, p3

    if-ne v11, v1, :cond_28

    const/16 v0, 0x48

    if-ne v10, v0, :cond_28
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v15, 0x41

    sget-object v16, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v4, v16, v0

    const/4 v0, 0x5

    aget-object v0, v16, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v4, v0, :cond_27

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_27
    sget-object v16, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const-string v4, "aGadhG5"

    const/4 v0, 0x7

    aput-object v4, v16, v0

    if-ne v9, v15, :cond_28

    if-ne v8, v3, :cond_28

    .line 58989
    :try_start_2
    move-object/from16 v22, v12

    move/from16 p1, v13

    move/from16 p0, v7

    move-object/from16 p4, v19

    invoke-static/range {v22 .. v27}, Lcom/facebook/ads/redexgen/X/VO;->A06(Lcom/facebook/ads/redexgen/X/Hc;IIZILcom/facebook/ads/redexgen/X/DL;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ChapterFrame;

    move-result-object v4

    .restart local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    goto :goto_d

    .line 58990
    .end local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    :cond_28
    if-ne v11, v1, :cond_29

    if-ne v10, v14, :cond_29

    if-ne v9, v2, :cond_29

    if-ne v8, v1, :cond_29

    .line 58991
    move-object/from16 v22, v12

    move/from16 p1, v13

    move/from16 p0, v7

    move-object/from16 p4, v19

    invoke-static/range {v22 .. v27}, Lcom/facebook/ads/redexgen/X/VO;->A07(Lcom/facebook/ads/redexgen/X/Hc;IIZILcom/facebook/ads/redexgen/X/DL;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ChapterTocFrame;

    move-result-object v4

    .restart local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    goto :goto_d

    .line 58992
    .end local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    :cond_29
    invoke-static {v13, v11, v10, v9, v8}, Lcom/facebook/ads/redexgen/X/VO;->A0J(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 58993
    .local v0, "id":Ljava/lang/String;
    invoke-static {v12, v7, v0}, Lcom/facebook/ads/redexgen/X/VO;->A05(Lcom/facebook/ads/redexgen/X/Hc;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/BinaryFrame;

    move-result-object v4

    .line 58994
    .local v0, "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    :goto_d
    if-nez v4, :cond_2a

    .line 58995
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x1b

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58996
    invoke-static {v13, v11, v10, v9, v8}, Lcom/facebook/ads/redexgen/X/VO;->A0J(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/16 v1, 0xc

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58997
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58998
    .restart local v0    # "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    :cond_2a
    invoke-virtual {v12, v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 58999
    return-object v4

    .line 59000
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :catch_0
    :try_start_3
    const/16 v2, 0x1a8

    const/16 v1, 0x1e

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59001
    invoke-virtual {v12, v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59002
    return-object v18

    .line 59003
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v0

    .end local v0
    invoke-virtual {v12, v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59004
    throw v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/Hc;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/PrivFrame;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 59005
    new-array v5, p1, [B

    .line 59006
    .local v0, "data":[B
    const/4 v4, 0x0

    invoke-virtual {p0, v5, v4, p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 59007
    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/VO;->A02([BI)I

    move-result v3

    .line 59008
    .local v2, "ownerEndIndex":I
    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5, v4, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 59009
    .local v1, "owner":Ljava/lang/String;
    add-int/lit8 v1, v3, 0x1

    .line 59010
    .local v3, "privateDataStartIndex":I
    array-length v0, v5

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0N([BII)[B

    move-result-object v1

    .line 59011
    .local v4, "privateData":[B
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/PrivFrame;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/Hc;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/TextInformationFrame;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 59012
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 59013
    const/4 v0, 0x0

    return-object v0

    .line 59014
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v5

    .line 59015
    .local v0, "encoding":I
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/VO;->A0H(I)Ljava/lang/String;

    move-result-object v3

    .line 59016
    .local v1, "charset":Ljava/lang/String;
    add-int/lit8 v0, p1, -0x1

    new-array v2, v0, [B

    .line 59017
    .local v2, "data":[B
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 59018
    invoke-static {v2, v1, v5}, Lcom/facebook/ads/redexgen/X/VO;->A03([BII)I

    move-result v0

    .line 59019
    .local v3, "descriptionEndIndex":I
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 59020
    .local v4, "description":Ljava/lang/String;
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/VO;->A00(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 59021
    .local v5, "valueStartIndex":I
    invoke-static {v2, v1, v5}, Lcom/facebook/ads/redexgen/X/VO;->A03([BII)I

    move-result v0

    .line 59022
    .local p0, "valueEndIndex":I
    invoke-static {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/VO;->A0K([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59023
    .local p1, "value":Ljava/lang/String;
    const/16 v2, 0x161

    const/4 v1, 0x4

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/TextInformationFrame;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/Hc;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/TextInformationFrame;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 59024
    const/4 v5, 0x0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 59025
    return-object v5

    .line 59026
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v1

    .line 59027
    .local v1, "encoding":I
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/VO;->A0H(I)Ljava/lang/String;

    move-result-object v4

    .line 59028
    .local v2, "charset":Ljava/lang/String;
    add-int/lit8 v0, p1, -0x1

    new-array v3, v0, [B

    .line 59029
    .local v3, "data":[B
    add-int/lit8 v0, p1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 59030
    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/VO;->A03([BII)I

    move-result v0

    .line 59031
    .local v4, "valueEndIndex":I
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 59032
    .local v5, "value":Ljava/lang/String;
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/TextInformationFrame;

    invoke-direct {v0, p2, v5, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/Hc;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/UrlLinkFrame;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 59033
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 59034
    const/4 v0, 0x0

    return-object v0

    .line 59035
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v3

    .line 59036
    .local v0, "encoding":I
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/VO;->A0H(I)Ljava/lang/String;

    move-result-object v2

    .line 59037
    .local v1, "charset":Ljava/lang/String;
    add-int/lit8 v0, p1, -0x1

    new-array v6, v0, [B

    .line 59038
    .local v2, "data":[B
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 59039
    invoke-static {v6, v1, v3}, Lcom/facebook/ads/redexgen/X/VO;->A03([BII)I

    move-result v0

    .line 59040
    .local v3, "descriptionEndIndex":I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6, v1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 59041
    .local v4, "description":Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/VO;->A00(I)I

    move-result v4

    add-int/2addr v4, v0

    .line 59042
    .local v5, "urlStartIndex":I
    invoke-static {v6, v4}, Lcom/facebook/ads/redexgen/X/VO;->A02([BI)I

    move-result v3

    .line 59043
    .local v6, "urlEndIndex":I
    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0K([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59044
    .local p0, "url":Ljava/lang/String;
    const/16 v2, 0x1c6

    const/4 v1, 0x4

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/UrlLinkFrame;

    invoke-direct {v0, v1, v5, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/Hc;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/UrlLinkFrame;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 59045
    new-array v5, p1, [B

    .line 59046
    .local v0, "data":[B
    const/4 v4, 0x0

    invoke-virtual {p0, v5, v4, p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 59047
    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/VO;->A02([BI)I

    move-result v3

    .line 59048
    .local v2, "urlEndIndex":I
    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5, v4, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 59049
    .local v1, "url":Ljava/lang/String;
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/UrlLinkFrame;

    invoke-direct {v0, p2, v1, v2}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A0H(I)Ljava/lang/String;
    .locals 5

    .line 59050
    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v4

    if-eqz p0, :cond_4

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const-string v1, "UCWBICnCAN9SKv4K838ju49qC0q78ZKM"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "3COoRrioJ7cuwfF8fyFL8X2a6WS2sOUX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 59051
    return-object v4

    .line 59052
    :cond_0
    const/16 v2, 0x173

    const/4 v1, 0x5

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59053
    :cond_1
    const/16 v2, 0x16b

    const/16 v1, 0x8

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59054
    :cond_2
    const/16 v2, 0x165

    const/4 v1, 0x6

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59055
    :cond_4
    return-object v4
.end method

.method public static A0I(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VO;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0J(IIIII)Ljava/lang/String;
    .locals 7

    .line 59056
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 59057
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59058
    :goto_0
    return-object v0

    .line 59059
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v2, 0x6

    const/16 v1, 0x8

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static A0K([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 59060
    if-le p2, p1, :cond_0

    array-length v0, p0

    if-le p2, v0, :cond_2

    .line 59061
    :cond_0
    const/4 p2, 0x0

    sget-object p1, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object p0, p1, v0

    const/4 v0, 0x5

    aget-object v0, p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p0, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object p1, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const-string p0, "r4Qi0WBzOYfLLA4UC9s9DAK76ksjAQPp"

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "c5jPrSHyFK7RFs6Pjjym9ojkSMFCl1O5"

    const/4 v0, 0x6

    aput-object p0, p1, v0

    const/4 p0, 0x0

    const/16 v0, 0x79

    invoke-static {p2, p0, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59062
    :cond_2
    sub-int/2addr p2, p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public static A0L()V
    .locals 1

    const/16 v0, 0x1e3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VO;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x4et
        0x8t
        0x4et
        0x8t
        0x4et
        0x8t
        0x2ct
        0x6at
        0x2ct
        0x6at
        0x2ct
        0x6at
        0x2ct
        0x6at
        0x59t
        0x55t
        0x13t
        0x7t
        0x14t
        0x18t
        0x10t
        0x26t
        0x1ct
        0xft
        0x10t
        0x48t
        0x5bt
        0x7et
        0x6bt
        0x7et
        0x3ft
        0x6bt
        0x70t
        0x70t
        0x3ft
        0x6ct
        0x77t
        0x70t
        0x6dt
        0x6bt
        0x3ft
        0x6bt
        0x70t
        0x3ft
        0x7dt
        0x7at
        0x3ft
        0x7et
        0x71t
        0x3ft
        0x56t
        0x5bt
        0x2ct
        0x3ft
        0x6bt
        0x7et
        0x78t
        0x16t
        0x31t
        0x39t
        0x3ct
        0x35t
        0x34t
        0x70t
        0x24t
        0x3ft
        0x70t
        0x34t
        0x35t
        0x33t
        0x3ft
        0x34t
        0x35t
        0x70t
        0x36t
        0x22t
        0x31t
        0x3dt
        0x35t
        0x6at
        0x70t
        0x39t
        0x34t
        0x6dt
        0x77t
        0x50t
        0x58t
        0x5dt
        0x54t
        0x55t
        0x11t
        0x45t
        0x5et
        0x11t
        0x47t
        0x50t
        0x5dt
        0x58t
        0x55t
        0x50t
        0x45t
        0x54t
        0x11t
        0x78t
        0x75t
        0x2t
        0x11t
        0x45t
        0x50t
        0x56t
        0x11t
        0x46t
        0x58t
        0x45t
        0x59t
        0x11t
        0x5ct
        0x50t
        0x5bt
        0x5et
        0x43t
        0x67t
        0x54t
        0x43t
        0x42t
        0x58t
        0x5et
        0x5ft
        0xct
        0x4t
        0x30t
        0x23t
        0x2ft
        0x27t
        0x62t
        0x31t
        0x2bt
        0x38t
        0x27t
        0x62t
        0x27t
        0x3at
        0x21t
        0x27t
        0x27t
        0x26t
        0x31t
        0x62t
        0x30t
        0x27t
        0x2ft
        0x23t
        0x2bt
        0x2ct
        0x2bt
        0x2ct
        0x25t
        0x62t
        0x36t
        0x23t
        0x25t
        0x62t
        0x26t
        0x23t
        0x36t
        0x23t
        0x47t
        0x4at
        0x3dt
        0x6bt
        0x71t
        0x6dt
        0xft
        0x1at
        0x1at
        0x17t
        0x1bt
        0xft
        0x13t
        0x58t
        0x75t
        0x22t
        0x55t
        0x74t
        0x72t
        0x7et
        0x75t
        0x74t
        0x63t
        0x61t
        0x59t
        0x5bt
        0x42t
        0x42t
        0x57t
        0x56t
        0x12t
        0x7bt
        0x76t
        0x1t
        0x12t
        0x46t
        0x53t
        0x55t
        0x12t
        0x45t
        0x5bt
        0x46t
        0x5at
        0x12t
        0x5ft
        0x53t
        0x58t
        0x5dt
        0x40t
        0x64t
        0x57t
        0x40t
        0x41t
        0x5bt
        0x5dt
        0x5ct
        0xft
        0x0t
        0x12t
        0x53t
        0x5ct
        0x56t
        0x12t
        0x47t
        0x5ct
        0x56t
        0x57t
        0x54t
        0x5bt
        0x5ct
        0x57t
        0x56t
        0x12t
        0x51t
        0x5dt
        0x5ft
        0x42t
        0x40t
        0x57t
        0x41t
        0x41t
        0x5bt
        0x5dt
        0x5ct
        0x12t
        0x41t
        0x51t
        0x5at
        0x57t
        0x5ft
        0x57t
        0x74t
        0x4ct
        0x4et
        0x57t
        0x57t
        0x42t
        0x43t
        0x7t
        0x6et
        0x63t
        0x14t
        0x7t
        0x53t
        0x46t
        0x40t
        0x7t
        0x50t
        0x4et
        0x53t
        0x4ft
        0x7t
        0x52t
        0x49t
        0x54t
        0x52t
        0x57t
        0x57t
        0x48t
        0x55t
        0x53t
        0x42t
        0x43t
        0x7t
        0x4at
        0x46t
        0x4dt
        0x48t
        0x55t
        0x71t
        0x42t
        0x55t
        0x54t
        0x4et
        0x48t
        0x49t
        0x1at
        0x1ct
        0x24t
        0x26t
        0x3ft
        0x3ft
        0x26t
        0x21t
        0x28t
        0x6ft
        0x3at
        0x21t
        0x3ct
        0x3at
        0x3ft
        0x3ft
        0x20t
        0x3dt
        0x3bt
        0x2at
        0x2bt
        0x6ft
        0x2ct
        0x20t
        0x22t
        0x3ft
        0x3dt
        0x2at
        0x3ct
        0x3ct
        0x2at
        0x2bt
        0x6ft
        0x20t
        0x3dt
        0x6ft
        0x2at
        0x21t
        0x2ct
        0x3dt
        0x36t
        0x3ft
        0x3bt
        0x2at
        0x2bt
        0x6ft
        0x29t
        0x3dt
        0x2et
        0x22t
        0x2at
        0x3et
        0x32t
        0x32t
        0x32t
        0x1ft
        0x1et
        0xct
        0x67t
        0x7bt
        0x7ct
        0x3et
        0x3ft
        0x2dt
        0x46t
        0x5at
        0x5dt
        0x29t
        0x2et
        0x36t
        0x37t
        0x25t
        0x4et
        0x5bt
        0x44t
        0x7ft
        0x74t
        0x69t
        0x61t
        0x74t
        0x72t
        0x65t
        0x74t
        0x75t
        0x31t
        0x77t
        0x78t
        0x63t
        0x62t
        0x65t
        0x31t
        0x65t
        0x79t
        0x63t
        0x74t
        0x74t
        0x31t
        0x73t
        0x68t
        0x65t
        0x74t
        0x62t
        0x31t
        0x7et
        0x77t
        0x31t
        0x58t
        0x55t
        0x22t
        0x31t
        0x65t
        0x70t
        0x76t
        0x31t
        0x79t
        0x74t
        0x70t
        0x75t
        0x74t
        0x63t
        0x2bt
        0x31t
        0x13t
        0x28t
        0x35t
        0x33t
        0x36t
        0x36t
        0x29t
        0x34t
        0x32t
        0x23t
        0x22t
        0x66t
        0x25t
        0x2et
        0x27t
        0x34t
        0x27t
        0x25t
        0x32t
        0x23t
        0x34t
        0x66t
        0x23t
        0x28t
        0x25t
        0x29t
        0x22t
        0x2ft
        0x28t
        0x21t
        0x61t
        0x6et
        0x6et
        0x6et
        0x46t
        0x42t
        0x4et
        0x48t
        0x4at
        0x0t
        0x15t
        0x11t
        0x1dt
        0x1bt
        0x19t
        0x53t
        0x16t
        0xct
        0x19t
        0x1bt
        0x51t
        0x55t
        0x59t
        0x5ft
        0x5dt
        0x17t
        0x52t
        0x48t
        0x5ft
    .end array-data
.end method

.method public static A0M(Lcom/facebook/ads/redexgen/X/Hc;IIZ)Z
    .locals 16

    .line 59063
    move-object/from16 v6, p0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v5

    .line 59064
    .local v3, "startPosition":I
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    const/16 p0, 0x1

    move/from16 v1, p2

    if-lt v0, v1, :cond_10

    .line 59065
    const/4 v11, 0x3

    move/from16 v12, p1

    if-lt v12, v11, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59066
    :try_start_1
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v1

    .line 59067
    .local v6, "id":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v3

    .line 59068
    .local v7, "frameSize":J
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v10

    .local v9, "flags":I
    goto :goto_1

    .line 59069
    .end local v6    # "id":I
    .end local v7    # "frameSize":J
    .end local v9    # "flags":I
    :cond_0
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0G()I

    move-result v1

    .line 59070
    .restart local v6    # "id":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0G()I

    move-result v0

    int-to-long v3, v0

    .line 59071
    .restart local v7    # "frameSize":J
    const/4 v10, 0x0

    .line 59072
    .restart local v9    # "flags":I
    :goto_1
    const-wide/16 v8, 0x0

    if-nez v1, :cond_1

    cmp-long v0, v3, v8

    if-nez v0, :cond_1

    if-nez v10, :cond_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59073
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59074
    return p0

    .line 59075
    :cond_1
    const/4 v7, 0x4

    const/4 v15, 0x0

    if-ne v12, v7, :cond_4

    if-nez p3, :cond_4

    .line 59076
    const-wide/32 v1, 0x808080

    and-long/2addr v1, v3

    cmp-long v0, v1, v8

    if-eqz v0, :cond_2

    .line 59077
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59078
    return v15

    .line 59079
    :cond_2
    const-wide/16 v13, 0xff

    and-long v8, v3, v13

    const/16 v0, 0x8

    shr-long v1, v3, v0

    and-long/2addr v1, v13

    const/4 v0, 0x7

    shl-long/2addr v1, v0

    or-long/2addr v8, v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const-string v1, "WW8harr0n1WVcE671SufvW5i3HFI8G3E"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "cs8JhXohJ41Zu2keAfctBKv0IiLyHEBA"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v0, 0x10

    shr-long v1, v3, v0

    and-long/2addr v1, v13

    const/16 v0, 0xe

    shl-long/2addr v1, v0

    or-long/2addr v8, v1

    const/16 v0, 0x18

    shr-long/2addr v3, v0

    and-long/2addr v3, v13

    const/16 v0, 0x15

    shl-long/2addr v3, v0

    or-long/2addr v3, v8

    .line 59080
    :cond_4
    const/4 v8, 0x0

    .line 59081
    .local v10, "hasGroupIdentifier":Z
    const/4 v9, 0x0

    .line 59082
    .local v11, "hasDataLength":Z
    if-ne v12, v7, :cond_b

    .line 59083
    and-int/lit8 v0, v10, 0x40

    if-eqz v0, :cond_a

    const/4 v8, 0x1

    .line 59084
    :goto_2
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_9

    :goto_3
    move/from16 v9, p0

    .line 59085
    :cond_5
    :goto_4
    const/4 v7, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    .line 59086
    .local v0, "minimumFrameSize":I
    if-eqz v8, :cond_6

    .line 59087
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 59088
    :cond_6
    if-eqz v9, :cond_7

    .line 59089
    add-int/lit8 v7, v7, 0x4

    .line 59090
    :cond_7
    int-to-long v1, v7

    cmp-long v0, v3, v1

    if-gez v0, :cond_e

    .line 59091
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59092
    return v15

    .line 59093
    .local v0, "minimumFrameSize":I
    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/VO;->A02:[Ljava/lang/String;

    const-string v1, "otGI0hsmNkIa4sbMlKQFq5zev1M8Vgvr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "hsxwZKJ37TLGlj6U8xTCexdOCMrqimac"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v8, :cond_6

    goto :goto_5

    .line 59094
    :cond_9
    const/16 p0, 0x0

    goto :goto_3

    .line 59095
    :cond_a
    const/4 v8, 0x0

    goto :goto_2

    .line 59096
    :cond_b
    if-ne v12, v11, :cond_5

    .line 59097
    and-int/lit8 v0, v10, 0x20

    if-eqz v0, :cond_d

    const/4 v8, 0x1

    .line 59098
    :goto_6
    and-int/lit16 v0, v10, 0x80

    if-eqz v0, :cond_c

    :goto_7
    move/from16 v9, p0

    goto :goto_4

    :cond_c
    const/16 p0, 0x0

    goto :goto_7

    .line 59099
    :cond_d
    const/4 v8, 0x0

    goto :goto_6

    .line 59100
    :cond_e
    :try_start_2
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    int-to-long v1, v0

    cmp-long v0, v1, v3

    if-gez v0, :cond_f

    goto :goto_8

    .line 59101
    :cond_f
    long-to-int v0, v3

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    goto/16 :goto_0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59102
    :goto_8
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59103
    return v15

    .line 59104
    :cond_10
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59105
    return p0

    .line 59106
    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    :goto_9
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59107
    throw v0
.end method

.method public static A0N([BII)[B
    .locals 0

    .line 59108
    if-gt p2, p1, :cond_0

    .line 59109
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 59110
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0O([BI)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;
    .locals 8

    .line 59111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59112
    .local v0, "id3Frames":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;>;"
    new-instance v3, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/Hc;-><init>([BI)V

    .line 59113
    .local v1, "id3Data":Lcom/facebook/ads/redexgen/X/Hc;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/VO;->A0A(Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/DM;

    move-result-object v7

    .line 59114
    .local v2, "id3Header":Lcom/facebook/ads/redexgen/X/DM;
    const/4 v6, 0x0

    if-nez v7, :cond_0

    .line 59115
    return-object v6

    .line 59116
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v4

    .line 59117
    .local v4, "startPosition":I
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/DM;->A00(Lcom/facebook/ads/redexgen/X/DM;)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    const/4 v5, 0x6

    .line 59118
    .local v5, "frameHeaderSize":I
    :goto_0
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/DM;->A01(Lcom/facebook/ads/redexgen/X/DM;)I

    move-result v1

    .line 59119
    .local v6, "framesSize":I
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/DM;->A02(Lcom/facebook/ads/redexgen/X/DM;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59120
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/DM;->A01(Lcom/facebook/ads/redexgen/X/DM;)I

    move-result v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/VO;->A01(Lcom/facebook/ads/redexgen/X/Hc;I)I

    move-result v1

    .line 59121
    :cond_1
    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Hc;->A0X(I)V

    .line 59122
    const/4 v4, 0x0

    .line 59123
    .local v7, "unsignedIntFrameSizeHack":Z
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/DM;->A00(Lcom/facebook/ads/redexgen/X/DM;)I

    move-result v1

    const/4 v0, 0x0

    invoke-static {v3, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0M(Lcom/facebook/ads/redexgen/X/Hc;IIZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 59124
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/DM;->A00(Lcom/facebook/ads/redexgen/X/DM;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    invoke-static {v3, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0M(Lcom/facebook/ads/redexgen/X/Hc;IIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59125
    const/4 v4, 0x1

    .line 59126
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    if-lt v0, v5, :cond_4

    .line 59127
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/DM;->A00(Lcom/facebook/ads/redexgen/X/DM;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A00:Lcom/facebook/ads/redexgen/X/DL;

    .line 59128
    invoke-static {v1, v3, v4, v5, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0B(ILcom/facebook/ads/redexgen/X/Hc;ZILcom/facebook/ads/redexgen/X/DL;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;

    move-result-object v0

    .line 59129
    .local v3, "frame":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    if-eqz v0, :cond_2

    .line 59130
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 59131
    :cond_3
    const/16 v5, 0xa

    goto :goto_0

    .line 59132
    :cond_4
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    invoke-direct {v0, v2}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object v0

    .line 59133
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x54

    const/16 v1, 0x2d

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/DM;->A00(Lcom/facebook/ads/redexgen/X/DM;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb3

    const/16 v1, 0xa

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59134
    return-object v6
.end method

.method public final A4k(Lcom/facebook/ads/redexgen/X/Cx;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;
    .locals 2

    .line 59135
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Wg;->A01:Ljava/nio/ByteBuffer;

    .line 59136
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/VO;->A0O([BI)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method
