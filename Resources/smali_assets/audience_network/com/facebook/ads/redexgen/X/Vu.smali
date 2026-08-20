.class public final Lcom/facebook/ads/redexgen/X/Vu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/ts/Ac3Reader$State;
    }
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public A06:Lcom/facebook/ads/redexgen/X/Bh;

.field public A07:Ljava/lang/String;

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/Hb;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A0B:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 60823
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jvuSXyRxFwWN5M53JxqXTqjBlHPmO5yS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Nx6fwt5mIYqSRgPxQoB61NXpIqViXreb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NbRu72XFqCPxMxVeHFzrnyrjREaihhdr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Z3KBXmMomO9rJfjLZz1JQz2Kw0Fx28Ab"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zLbRIBf4nYWkQfyOEtwQDAQMGMEl8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zvpubyWaUoinARhzufpjCqD1DbWF7ekR"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kxIGpaDKqbCPDUN5La7nQCmFVSx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CqFgkkKKOYx1Bj1EdbgCjsaN4ksOOdQn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60824
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vu;-><init>(Ljava/lang/String;)V

    .line 60825
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 60826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60827
    const/16 v0, 0x80

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A09:Lcom/facebook/ads/redexgen/X/Hb;

    .line 60828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A09:Lcom/facebook/ads/redexgen/X/Hb;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hb;->A00:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    .line 60829
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A02:I

    .line 60830
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vu;->A0B:Ljava/lang/String;

    .line 60831
    return-void
.end method

.method private A00()V
    .locals 13

    .line 60832
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vu;->A09:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A07(I)V

    .line 60833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A09:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A3;->A09(Lcom/facebook/ads/redexgen/X/Hb;)Lcom/facebook/ads/redexgen/X/A2;

    move-result-object v1

    .line 60834
    .local v0, "frameInfo":Lcom/facebook/ads/redexgen/X/A2;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    if-eqz v0, :cond_1

    iget v2, v1, Lcom/facebook/ads/redexgen/X/A2;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A05:I

    if-ne v2, v0, :cond_1

    iget v5, v1, Lcom/facebook/ads/redexgen/X/A2;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget v4, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0C:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x1b

    if-eq v2, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/Vu;->A0C:[Ljava/lang/String;

    const-string v2, "rmTuGOWOeoxLIH1QLptnusvxizN1V0jV"

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v2, "2RMufqWRuZFq3WutxyrHt00cbPeHqbYj"

    const/4 v0, 0x5

    aput-object v2, v3, v0

    if-ne v5, v4, :cond_1

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/A2;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    if-eq v2, v0, :cond_2

    .line 60835
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vu;->A07:Ljava/lang/String;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/A2;->A05:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget v7, v1, Lcom/facebook/ads/redexgen/X/A2;->A00:I

    iget v8, v1, Lcom/facebook/ads/redexgen/X/A2;->A03:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/Vu;->A0B:Ljava/lang/String;

    .line 60836
    invoke-static/range {v2 .. v12}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 60837
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vu;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 60838
    :cond_2
    iget v0, v1, Lcom/facebook/ads/redexgen/X/A2;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A01:I

    .line 60839
    const-wide/32 v4, 0xf4240

    iget v0, v1, Lcom/facebook/ads/redexgen/X/A2;->A02:I

    int-to-long v2, v0

    mul-long/2addr v2, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0C:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vu;->A03:J

    .line 60840
    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Hc;)Z
    .locals 5

    .line 60841
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    const/4 v4, 0x0

    if-lez v0, :cond_4

    .line 60842
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A08:Z

    const/16 v3, 0xb

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 60843
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Vu;->A08:Z

    .line 60844
    goto :goto_0

    .line 60845
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v1

    .line 60846
    .local v0, "secondByte":I
    const/16 v0, 0x77

    if-ne v1, v0, :cond_2

    .line 60847
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Vu;->A08:Z

    .line 60848
    return v2

    .line 60849
    :cond_2
    if-ne v1, v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Vu;->A08:Z

    .line 60850
    .end local v0    # "secondByte":I
    goto :goto_0

    .line 60851
    :cond_4
    return v4
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Hc;[BI)Z
    .locals 2

    .line 60852
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60853
    .local v0, "bytesToRead":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 60854
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:I

    .line 60855
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A4B(Lcom/facebook/ads/redexgen/X/Hc;)V
    .locals 11

    .line 60856
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vu;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A0C:[Ljava/lang/String;

    const-string v1, "j4ZJ9Sb1FxDogpbJuhr4W7MrwTg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-lez v3, :cond_7

    .line 60857
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A02:I

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_3

    if-eq v0, v5, :cond_2

    goto :goto_0

    .line 60858
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vu;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60859
    .local v0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 60860
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:I

    .line 60861
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/Vu;->A01:I

    if-ne v0, v8, :cond_0

    .line 60862
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Vu;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Vu;->A04:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 60863
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/Vu;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A03:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/Vu;->A04:J

    .line 60864
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vu;->A02:I

    goto :goto_0

    .line 60865
    .end local v0    # "bytesToRead":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/16 v4, 0x80

    invoke-direct {p0, p1, v0, v4}, Lcom/facebook/ads/redexgen/X/Vu;->A02(Lcom/facebook/ads/redexgen/X/Hc;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60866
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vu;->A00()V

    .line 60867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 60868
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Vu;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vu;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    invoke-interface {v6, v3, v4}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 60869
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Vu;->A02:I

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A0C:[Ljava/lang/String;

    const-string v1, "thGmrgzi8Rkjtt3yqKW2WPJBde0Fj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface {v6, v3, v4}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    iput v5, p0, Lcom/facebook/ads/redexgen/X/Vu;->A02:I

    goto/16 :goto_0

    .line 60870
    :cond_5
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vu;->A01(Lcom/facebook/ads/redexgen/X/Hc;)Z

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A0C:[Ljava/lang/String;

    const-string v1, "NiiW4aHzTbHYGvCl9hvl0BCQG8aT05lW"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v6, :cond_0

    .line 60871
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Vu;->A02:I

    .line 60872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/16 v0, 0xb

    aput-byte v0, v1, v3

    .line 60873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/16 v0, 0x77

    aput-byte v0, v1, v4

    .line 60874
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:I

    goto/16 :goto_0

    .line 60875
    :cond_7
    return-void
.end method

.method public final A4Y(Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V
    .locals 2

    .line 60876
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A05()V

    .line 60877
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A07:Ljava/lang/String;

    .line 60878
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    .line 60879
    return-void
.end method

.method public final ADM()V
    .locals 0

    .line 60880
    return-void
.end method

.method public final ADN(JZ)V
    .locals 0

    .line 60881
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vu;->A04:J

    .line 60882
    return-void
.end method

.method public final AEb()V
    .locals 1

    .line 60883
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A02:I

    .line 60884
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:I

    .line 60885
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A08:Z

    .line 60886
    return-void
.end method
