.class public final Lcom/facebook/ads/redexgen/X/G1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Uv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:F

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:J

.field public A08:Landroid/text/Layout$Alignment;

.field public A09:Landroid/text/SpannableStringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 34647
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Hprt8nz5MObb9HHRcJ3FgjC39pyTAkMZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YXvL2uxtzClfHFg6aAVmg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bmP4Y2GubreqcLziMdkO7o6qdrqKBqYT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xlpbHyPtEfmAimLN7HKZ9Bono5vlwWgn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LwCpz6scIEYomVha95M6oDYa7jl1evxR"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "a2CW8B1wV2q0m"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "yioJoIaiBMoPM1KevDFnpDPEbZrt8c"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/G1;->A0B:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/G1;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34649
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/G1;->A0E()V

    .line 34650
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/G1;
    .locals 5

    .line 34651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A08:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_0

    .line 34652
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A05:I

    .line 34653
    :goto_0
    return-object p0

    .line 34654
    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/G0;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A08:Landroid/text/Layout$Alignment;

    invoke-virtual {v0}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/G1;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/G1;->A0B:[Ljava/lang/String;

    const-string v1, "bCWwshxvDhk0rmOpw86rGll2BB1o8fjY"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "DFJ4JiMQubAonbmcG28FkdzFP9vzggDF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    aget v2, v4, v3

    const/4 v4, 0x0

    const/4 v0, 0x1

    if-eq v2, v0, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_1

    .line 34655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A08:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x18

    const/16 v1, 0x10

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34656
    iput v4, p0, Lcom/facebook/ads/redexgen/X/G1;->A05:I

    goto :goto_0

    .line 34657
    :cond_1
    iput v1, p0, Lcom/facebook/ads/redexgen/X/G1;->A05:I

    .line 34658
    goto :goto_0

    .line 34659
    :cond_2
    iput v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A05:I

    .line 34660
    goto :goto_0

    .line 34661
    :cond_3
    iput v4, p0, Lcom/facebook/ads/redexgen/X/G1;->A05:I

    .line 34662
    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/G1;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4d

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

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/G1;->A0A:[B

    return-void

    :array_0
    .array-data 1
        -0x18t
        0x1t
        0x5t
        -0x8t
        -0xat
        0x2t
        -0x6t
        0x1t
        -0x4t
        0xdt
        -0x8t
        -0x9t
        -0x4dt
        -0xct
        -0x1t
        -0x4t
        -0x6t
        0x1t
        0x0t
        -0x8t
        0x1t
        0x7t
        -0x33t
        -0x4dt
        0x13t
        0x21t
        0x1et
        0x32t
        0x30t
        0x30t
        -0x1t
        0x31t
        0x21t
        -0x2t
        0x31t
        0x25t
        0x28t
        0x20t
        0x21t
        0x2et
    .end array-data
.end method


# virtual methods
.method public final A03(F)Lcom/facebook/ads/redexgen/X/G1;
    .locals 0

    .line 34663
    iput p1, p0, Lcom/facebook/ads/redexgen/X/G1;->A00:F

    .line 34664
    return-object p0
.end method

.method public final A04(F)Lcom/facebook/ads/redexgen/X/G1;
    .locals 0

    .line 34665
    iput p1, p0, Lcom/facebook/ads/redexgen/X/G1;->A01:F

    .line 34666
    return-object p0
.end method

.method public final A05(F)Lcom/facebook/ads/redexgen/X/G1;
    .locals 0

    .line 34667
    iput p1, p0, Lcom/facebook/ads/redexgen/X/G1;->A02:F

    .line 34668
    return-object p0
.end method

.method public final A06(I)Lcom/facebook/ads/redexgen/X/G1;
    .locals 0

    .line 34669
    iput p1, p0, Lcom/facebook/ads/redexgen/X/G1;->A03:I

    .line 34670
    return-object p0
.end method

.method public final A07(I)Lcom/facebook/ads/redexgen/X/G1;
    .locals 0

    .line 34671
    iput p1, p0, Lcom/facebook/ads/redexgen/X/G1;->A04:I

    .line 34672
    return-object p0
.end method

.method public final A08(I)Lcom/facebook/ads/redexgen/X/G1;
    .locals 0

    .line 34673
    iput p1, p0, Lcom/facebook/ads/redexgen/X/G1;->A05:I

    .line 34674
    return-object p0
.end method

.method public final A09(J)Lcom/facebook/ads/redexgen/X/G1;
    .locals 0

    .line 34675
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/G1;->A06:J

    .line 34676
    return-object p0
.end method

.method public final A0A(J)Lcom/facebook/ads/redexgen/X/G1;
    .locals 0

    .line 34677
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/G1;->A07:J

    .line 34678
    return-object p0
.end method

.method public final A0B(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/G1;
    .locals 0

    .line 34679
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G1;->A08:Landroid/text/Layout$Alignment;

    .line 34680
    return-object p0
.end method

.method public final A0C(Landroid/text/SpannableStringBuilder;)Lcom/facebook/ads/redexgen/X/G1;
    .locals 0

    .line 34681
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G1;->A09:Landroid/text/SpannableStringBuilder;

    .line 34682
    return-object p0
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/Uv;
    .locals 13

    .line 34683
    iget v1, p0, Lcom/facebook/ads/redexgen/X/G1;->A01:F

    const/4 v0, 0x1

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/G1;->A05:I

    const/high16 v0, -0x80000000

    if-ne v1, v0, :cond_0

    .line 34684
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G1;->A00()Lcom/facebook/ads/redexgen/X/G1;

    .line 34685
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Uv;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/G1;->A07:J

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/G1;->A06:J

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/G1;->A09:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/G1;->A08:Landroid/text/Layout$Alignment;

    iget v7, p0, Lcom/facebook/ads/redexgen/X/G1;->A00:F

    iget v8, p0, Lcom/facebook/ads/redexgen/X/G1;->A04:I

    iget v9, p0, Lcom/facebook/ads/redexgen/X/G1;->A03:I

    iget v10, p0, Lcom/facebook/ads/redexgen/X/G1;->A01:F

    iget v11, p0, Lcom/facebook/ads/redexgen/X/G1;->A05:I

    iget v12, p0, Lcom/facebook/ads/redexgen/X/G1;->A02:F

    invoke-direct/range {v0 .. v12}, Lcom/facebook/ads/redexgen/X/Uv;-><init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v0
.end method

.method public final A0E()V
    .locals 2

    .line 34686
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A07:J

    .line 34687
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A06:J

    .line 34688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A09:Landroid/text/SpannableStringBuilder;

    .line 34689
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A08:Landroid/text/Layout$Alignment;

    .line 34690
    const/4 v1, 0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/G1;->A00:F

    .line 34691
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A04:I

    .line 34692
    iput v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A03:I

    .line 34693
    iput v1, p0, Lcom/facebook/ads/redexgen/X/G1;->A01:F

    .line 34694
    iput v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A05:I

    .line 34695
    iput v1, p0, Lcom/facebook/ads/redexgen/X/G1;->A02:F

    .line 34696
    return-void
.end method
