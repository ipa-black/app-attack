.class public final Lcom/facebook/ads/redexgen/X/Wy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/9U;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/DefaultLoadControl$Builder;
    }
.end annotation


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Z

.field public final A02:I

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:J

.field public final A07:Lcom/facebook/ads/redexgen/X/Un;

.field public final A08:Lcom/facebook/ads/redexgen/X/Hg;

.field public final A09:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 65802
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QBw2naITCC87BBmeZEHB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QG9qcoN67OZ9HCiBeCwQ37yZ8k9VzRIx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "huClURZcVSvs210svchTpygB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SPjUxwmyMxCkovVHB3ukUPObWP0MyL9L"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Qo3gDbJmZiOUOvD4YrLGADsp8gVNY68y"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aCbITSFANaeoynFt6tlPTZT3Ud0BkJzi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LC42BZreN0Trrj0tndAjNl8pur2kDdxK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "yIqlj0SUGgDzqSotNJk32MbE6gj6YGfF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wy;->A0B:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wy;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 65803
    const/4 v2, 0x1

    const/high16 v1, 0x10000

    new-instance v0, Lcom/facebook/ads/redexgen/X/Un;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Un;-><init>(ZI)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wy;-><init>(Lcom/facebook/ads/redexgen/X/Un;)V

    .line 65804
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Un;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65805
    const/16 v2, 0x3a98

    const v3, 0xc350

    const/16 v4, 0x9c4

    const/16 v5, 0x1388

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/Wy;-><init>(Lcom/facebook/ads/redexgen/X/Un;IIIIIZ)V

    .line 65806
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Un;IIIIIZ)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65807
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Wy;-><init>(Lcom/facebook/ads/redexgen/X/Un;IIIIIZLcom/facebook/ads/redexgen/X/Hg;)V

    .line 65808
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Un;IIIIIZLcom/facebook/ads/redexgen/X/Hg;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65810
    const/16 v2, 0x15

    const/4 v1, 0x1

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A01(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x36

    const/16 v1, 0x13

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A01(III)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    invoke-static {p4, v3, v5, v6}, Lcom/facebook/ads/redexgen/X/Wy;->A03(IILjava/lang/String;Ljava/lang/String;)V

    .line 65811
    const/16 v2, 0x16

    const/16 v1, 0x20

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A01(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {p5, v3, v4, v6}, Lcom/facebook/ads/redexgen/X/Wy;->A03(IILjava/lang/String;Ljava/lang/String;)V

    .line 65812
    const/16 v2, 0x54

    const/16 v1, 0xb

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, p4, v3, v5}, Lcom/facebook/ads/redexgen/X/Wy;->A03(IILjava/lang/String;Ljava/lang/String;)V

    .line 65813
    invoke-static {p2, p5, v3, v4}, Lcom/facebook/ads/redexgen/X/Wy;->A03(IILjava/lang/String;Ljava/lang/String;)V

    .line 65814
    const/16 v2, 0x49

    const/16 v1, 0xb

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p2, v0, v3}, Lcom/facebook/ads/redexgen/X/Wy;->A03(IILjava/lang/String;Ljava/lang/String;)V

    .line 65815
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wy;->A07:Lcom/facebook/ads/redexgen/X/Un;

    .line 65816
    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A06:J

    .line 65817
    int-to-long v0, p3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A05:J

    .line 65818
    int-to-long v0, p4

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A04:J

    .line 65819
    int-to-long v0, p5

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A03:J

    .line 65820
    iput p6, p0, Lcom/facebook/ads/redexgen/X/Wy;->A02:I

    .line 65821
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/Wy;->A09:Z

    .line 65822
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Wy;->A08:Lcom/facebook/ads/redexgen/X/Hg;

    .line 65823
    return-void
.end method

.method private final A00([Lcom/facebook/ads/redexgen/X/Wu;Lcom/facebook/ads/redexgen/X/GK;)I
    .locals 3

    .line 65824
    const/4 v2, 0x0

    .line 65825
    .local v0, "targetBufferSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 65826
    invoke-virtual {p2, v1}, Lcom/facebook/ads/redexgen/X/GK;->A00(I)Lcom/facebook/ads/redexgen/X/GJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65827
    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wu;->A7u()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A01(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 65828
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65829
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wy;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x53

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

    const/16 v0, 0x5f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wy;->A0A:[B

    return-void

    :array_0
    .array-data 1
        -0x61t
        -0x1et
        -0x20t
        -0x13t
        -0x13t
        -0x12t
        -0xdt
        -0x61t
        -0x1ft
        -0x1ct
        -0x61t
        -0x15t
        -0x1ct
        -0xet
        -0xet
        -0x61t
        -0xdt
        -0x19t
        -0x20t
        -0x13t
        -0x61t
        -0x37t
        -0x1bt
        -0x8t
        -0x17t
        -0x17t
        -0x18t
        -0xbt
        -0x37t
        -0xet
        -0xbt
        -0x2dt
        -0x11t
        -0x1ct
        -0x4t
        -0x1bt
        -0x1ct
        -0x1at
        -0x12t
        -0x3ct
        -0x17t
        -0x9t
        -0x18t
        -0xbt
        -0x2bt
        -0x18t
        -0x1bt
        -0x8t
        -0x17t
        -0x17t
        -0x18t
        -0xbt
        -0x30t
        -0xat
        0x3t
        0x16t
        0x7t
        0x7t
        0x6t
        0x13t
        -0x19t
        0x10t
        0x13t
        -0xft
        0xdt
        0x2t
        0x1at
        0x3t
        0x2t
        0x4t
        0xct
        -0x12t
        0x14t
        0x19t
        0xdt
        0x24t
        -0x12t
        0x21t
        0x12t
        0x12t
        0x11t
        0x1et
        -0x7t
        0x1ft
        -0x40t
        -0x44t
        -0x3ft
        -0x6bt
        -0x38t
        -0x47t
        -0x47t
        -0x48t
        -0x3bt
        -0x60t
        -0x3at
    .end array-data
.end method

.method public static A03(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 65830
    if-lt p0, p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/HD;->A05(ZLjava/lang/Object;)V

    .line 65831
    return-void

    .line 65832
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private A04(Z)V
    .locals 3

    .line 65833
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Wy;->A00:I

    .line 65834
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wy;->A08:Lcom/facebook/ads/redexgen/X/Hg;

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A01:Z

    if-eqz v0, :cond_0

    .line 65835
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A03(I)V

    .line 65836
    :cond_0
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Wy;->A01:Z

    .line 65837
    if-eqz p1, :cond_1

    .line 65838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A07:Lcom/facebook/ads/redexgen/X/Un;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Un;->A03()V

    .line 65839
    :cond_1
    return-void
.end method


# virtual methods
.method public final A5j()Lcom/facebook/ads/redexgen/X/GP;
    .locals 1

    .line 65840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A07:Lcom/facebook/ads/redexgen/X/Un;

    return-object v0
.end method

.method public final A5o()J
    .locals 2

    .line 65841
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final ACJ()V
    .locals 1

    .line 65842
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A04(Z)V

    .line 65843
    return-void
.end method

.method public final ACg()V
    .locals 1

    .line 65844
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A04(Z)V

    .line 65845
    return-void
.end method

.method public final ACo([Lcom/facebook/ads/redexgen/X/Wu;Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GK;)V
    .locals 2

    .line 65846
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wy;->A02:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 65847
    invoke-direct {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/Wy;->A00([Lcom/facebook/ads/redexgen/X/Wu;Lcom/facebook/ads/redexgen/X/GK;)I

    move-result v1

    .line 65848
    :cond_0
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wy;->A00:I

    .line 65849
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wy;->A07:Lcom/facebook/ads/redexgen/X/Un;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Un;->A04(I)V

    .line 65850
    return-void
.end method

.method public final AEU()Z
    .locals 1

    .line 65851
    const/4 v0, 0x0

    return v0
.end method

.method public final AFC(JF)Z
    .locals 8

    .line 65852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A07:Lcom/facebook/ads/redexgen/X/Un;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Un;->A02()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A00:I

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-lt v1, v0, :cond_6

    const/4 v7, 0x1

    .line 65853
    .local v0, "targetBufferSizeReached":Z
    :goto_0
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Wy;->A01:Z

    .line 65854
    .local v1, "wasBuffering":Z
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A06:J

    .line 65855
    .local v4, "minBufferUs":J
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    .line 65856
    invoke-static {v0, v1, p3}, Lcom/facebook/ads/redexgen/X/Hs;->A0C(JF)J

    move-result-wide v2

    .line 65857
    .local v6, "mediaDurationMinBufferUs":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A05:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 65858
    .end local v6    # "mediaDurationMinBufferUs":J
    :cond_0
    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    .line 65859
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A09:Z

    if-nez v0, :cond_1

    if-nez v7, :cond_3

    :cond_1
    :goto_1
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Wy;->A01:Z

    .line 65860
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wy;->A08:Lcom/facebook/ads/redexgen/X/Hg;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wy;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65861
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 65862
    :cond_4
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Wy;->A05:J

    cmp-long v0, p1, v1

    if-gtz v0, :cond_5

    if-eqz v7, :cond_2

    .line 65863
    :cond_5
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Wy;->A01:Z

    goto :goto_2

    .line 65864
    :cond_6
    const/4 v7, 0x0

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wy;->A0B:[Ljava/lang/String;

    const-string v1, "QKQzs8A5eNnCMvZO6Czn4VC5jQwn3nPR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "QpEe5JzrMZm1KKJ9dYBmwnmG628Fesko"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_8

    .line 65865
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A01:Z

    if-eq v0, v4, :cond_8

    .line 65866
    if-eqz v0, :cond_9

    .line 65867
    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A00(I)V

    .line 65868
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A01:Z

    return v0

    .line 65869
    :cond_9
    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A03(I)V

    goto :goto_3
.end method

.method public final AFF(JFZ)Z
    .locals 7

    .line 65870
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Hs;->A0D(JF)J

    move-result-wide v5

    .line 65871
    if-eqz p4, :cond_2

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Wy;->A03:J

    .line 65872
    .local v0, "minBufferDurationUs":J
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    cmp-long v0, v5, v3

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A09:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A07:Lcom/facebook/ads/redexgen/X/Un;

    .line 65873
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Un;->A02()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A00:I

    if-lt v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 65874
    :goto_1
    return v0

    .line 65875
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 65876
    :cond_2
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Wy;->A04:J

    goto :goto_0
.end method

.method public final onPrepared()V
    .locals 1

    .line 65877
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A04(Z)V

    .line 65878
    return-void
.end method
