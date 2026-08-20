.class public final Lcom/facebook/ads/redexgen/X/Vq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Co;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 60570
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "W3zpeZwD9Fi1kBaR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uMdULlbYt84VxY86rM0TiEJbhaqKcXZ1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Usin4k2UYlEJmIUoIPMyl4MixoDpG9ii"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hBZpg4XSGRsBFeFqV0aqL6EoVOREEldE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UimonN4w5kzXtUMO8SJw69s6gFNeuD2Z"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "uuKAqm4Yer5CcRyJ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zRTcmdaM3Tn4RRVoPrSr5tVrwuK6PMWw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "taTU185R1PVUiY2ntZzDAqagtcVNoAEE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vq;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60571
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vq;-><init>(I)V

    .line 60572
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 60573
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Vq;-><init>(ILjava/util/List;)V

    .line 60574
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;",
            ">;)V"
        }
    .end annotation

    .line 60575
    .local p0, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60576
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A00:I

    .line 60577
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A03(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60578
    const/4 v4, 0x0

    .line 60579
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A00(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    .line 60580
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 60581
    :cond_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:Ljava/util/List;

    .line 60582
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Cn;)Lcom/facebook/ads/redexgen/X/Ck;
    .locals 16

    .line 60583
    move-object/from16 v1, p0

    const/16 v0, 0x20

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A03(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60584
    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/Vq;->A01:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ck;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ck;-><init>(Ljava/util/List;)V

    return-object v0

    .line 60585
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cn;->A03:[B

    new-instance v7, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/Hc;-><init>([B)V

    .line 60586
    .local v1, "scratchDescriptorData":Lcom/facebook/ads/redexgen/X/Hc;
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/Vq;->A01:Ljava/util/List;

    .line 60587
    .local v3, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;>;"
    :goto_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    if-lez v0, :cond_4

    .line 60588
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v1

    .line 60589
    .local v4, "descriptorTag":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    .line 60590
    .local v5, "descriptorLength":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v6

    add-int/2addr v6, v0

    .line 60591
    .local v6, "nextDescriptorPosition":I
    const/16 v0, 0x86

    if-ne v1, v0, :cond_3

    .line 60592
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 60593
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    and-int/lit8 v4, v0, 0x1f

    .line 60594
    .local v7, "numberOfServices":I
    const/4 v3, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 60595
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0S(I)Ljava/lang/String;

    move-result-object v13

    .line 60596
    .local v9, "language":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v8

    .line 60597
    .local v15, "captionTypeByte":I
    and-int/lit16 v0, v8, 0x80

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 60598
    .local p2, "isDigital":Z
    :goto_2
    if-eqz v0, :cond_1

    .line 60599
    const/16 v2, 0x13

    const/16 v1, 0x13

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A01(III)Ljava/lang/String;

    move-result-object v9

    .line 60600
    .local v10, "mimeType":Ljava/lang/String;
    and-int/lit8 v14, v8, 0x3f

    .line 60601
    .local v11, "accessibilityChannel":I
    .end local v10    # "mimeType":Ljava/lang/String;
    .local p3, "mimeType":Ljava/lang/String;
    .local p4, "accessibilityChannel":I
    :goto_3
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 60602
    .end local v15    # "captionTypeByte":I
    .local p5, "captionTypeByte":I
    invoke-static/range {v8 .. v15}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    .line 60603
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60604
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 60605
    .end local v9    # "language":Ljava/lang/String;
    .end local p2
    .end local p3
    .end local p4
    .end local p5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 60606
    .end local v10
    .end local v11    # "accessibilityChannel":I
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A01(III)Ljava/lang/String;

    move-result-object v9

    .line 60607
    .restart local v10    # "mimeType":Ljava/lang/String;
    const/4 v14, 0x1

    goto :goto_3

    .line 60608
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 60609
    .end local v7    # "numberOfServices":I
    .end local v8    # "i":I
    :cond_3
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 60610
    .end local v4    # "descriptorTag":I
    .end local v5    # "descriptorLength":I
    .end local v6    # "nextDescriptorPosition":I
    goto :goto_0

    .line 60611
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ck;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/Ck;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vq;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x33

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vq;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x10t
        0x1t
        0x1t
        0x1dt
        0x18t
        0x12t
        0x10t
        0x5t
        0x18t
        0x1et
        0x1ft
        0x5et
        0x12t
        0x14t
        0x10t
        0x5ct
        0x47t
        0x41t
        0x49t
        0x37t
        0x26t
        0x26t
        0x3at
        0x3ft
        0x35t
        0x37t
        0x22t
        0x3ft
        0x39t
        0x38t
        0x79t
        0x35t
        0x33t
        0x37t
        0x7bt
        0x61t
        0x66t
        0x6et
    .end array-data
.end method

.method private A03(I)Z
    .locals 1

    .line 60612
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A00:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A4N()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Cq;",
            ">;"
        }
    .end annotation

    .line 60613
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public final A4S(ILcom/facebook/ads/redexgen/X/Cn;)Lcom/facebook/ads/redexgen/X/Cq;
    .locals 7

    .line 60614
    const/4 v5, 0x2

    if-eq p1, v5, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    const/4 v4, 0x4

    if-eq p1, v4, :cond_11

    const/16 v6, 0xf

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A03:[Ljava/lang/String;

    const-string v1, "TL6v0qMnHqmUaQQZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "IE89AbLzdx0BMakH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v3, 0x0

    if-eq p1, v6, :cond_f

    const/16 v0, 0x11

    if-eq p1, v0, :cond_c

    const/16 v0, 0x15

    if-eq p1, v0, :cond_b

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_8

    const/16 v0, 0x24

    if-eq p1, v0, :cond_7

    const/16 v0, 0x59

    if-eq p1, v0, :cond_6

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_5

    const/16 v0, 0x81

    if-eq p1, v0, :cond_4

    const/16 v0, 0x82

    if-eq p1, v0, :cond_5

    const/16 v0, 0x86

    if-eq p1, v0, :cond_1

    const/16 v0, 0x87

    if-eq p1, v0, :cond_4

    .line 60615
    return-object v3

    .line 60616
    :cond_1
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A03(I)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A03:[Ljava/lang/String;

    const-string v1, "gZ9W35a8if0wBYwl14wyCBdNL5YYRzZs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "c3HcoanD4hgKlYwrimr1mcCeCJ4aqmfb"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    :goto_0
    return-object v3

    :cond_2
    if-eqz v4, :cond_3

    goto :goto_0

    .line 60617
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vd;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vd;-><init>()V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Ve;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Ve;-><init>(Lcom/facebook/ads/redexgen/X/Cj;)V

    goto :goto_0

    .line 60618
    :cond_4
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Cn;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Vu;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(Lcom/facebook/ads/redexgen/X/Cb;)V

    return-object v0

    .line 60619
    :cond_5
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Cn;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Vp;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Vp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(Lcom/facebook/ads/redexgen/X/Cb;)V

    return-object v0

    .line 60620
    :cond_6
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Cn;->A02:Ljava/util/List;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Vo;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Vo;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(Lcom/facebook/ads/redexgen/X/Cb;)V

    return-object v0

    .line 60621
    :cond_7
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Vq;->A00(Lcom/facebook/ads/redexgen/X/Cn;)Lcom/facebook/ads/redexgen/X/Ck;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Vl;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Vl;-><init>(Lcom/facebook/ads/redexgen/X/Ck;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(Lcom/facebook/ads/redexgen/X/Cb;)V

    return-object v0

    .line 60622
    :cond_8
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Vq;->A03(I)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    if-eqz v4, :cond_a

    :goto_1
    return-object v3

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A03:[Ljava/lang/String;

    const-string v1, "sJk0cAFVF7ae3oKLvDzM4nnwAUecmkeL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "UpVExoenxBXELPfMIXM6arARQ5XbDmde"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_a

    goto :goto_1

    .line 60623
    :cond_a
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Vq;->A00(Lcom/facebook/ads/redexgen/X/Cn;)Lcom/facebook/ads/redexgen/X/Ck;

    move-result-object v3

    const/4 v0, 0x1

    .line 60624
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A03(I)Z

    move-result v2

    const/16 v0, 0x8

    .line 60625
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A03(I)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vm;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Vm;-><init>(Lcom/facebook/ads/redexgen/X/Ck;ZZ)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(Lcom/facebook/ads/redexgen/X/Cb;)V

    goto :goto_1

    .line 60626
    :cond_b
    new-instance v1, Lcom/facebook/ads/redexgen/X/Vk;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Vk;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(Lcom/facebook/ads/redexgen/X/Cb;)V

    return-object v0

    .line 60627
    :cond_c
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/Vq;->A03(I)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A03:[Ljava/lang/String;

    const-string v1, "tl06ExzVOLl6J3Z38u8ReTh5ugUipxJi"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "IvBaWal7DLbI52VVdF6IQtL5C2liERzj"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_e

    :goto_2
    return-object v3

    .line 60628
    :cond_e
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/Cn;->A01:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Vj;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(Lcom/facebook/ads/redexgen/X/Cb;)V

    goto :goto_2

    .line 60629
    :cond_f
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/Vq;->A03(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_3
    return-object v3

    .line 60630
    :cond_10
    const/4 v2, 0x0

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/Cn;->A01:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vr;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Vr;-><init>(ZLjava/lang/String;)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(Lcom/facebook/ads/redexgen/X/Cb;)V

    goto :goto_3

    .line 60631
    :cond_11
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Cn;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Vi;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Vi;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(Lcom/facebook/ads/redexgen/X/Cb;)V

    return-object v0

    .line 60632
    :cond_12
    new-instance v1, Lcom/facebook/ads/redexgen/X/Vn;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Vn;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(Lcom/facebook/ads/redexgen/X/Cb;)V

    return-object v0
.end method
