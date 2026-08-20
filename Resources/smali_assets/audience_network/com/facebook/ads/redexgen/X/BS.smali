.class public final Lcom/facebook/ads/redexgen/X/BS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/VA;
.implements Lcom/facebook/ads/redexgen/X/VB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/VG;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/VB;

.field public A04:[Lcom/facebook/ads/redexgen/X/VG;

.field public final A05:Lcom/facebook/ads/redexgen/X/VA;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 23673
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZtwyXb21lqsDJdKT2ajh9JxAXgW69QuB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FrcJuXyaSLrnc8pAXv2TAxnFyZgF4qHK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0iGJizGlWH9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qhteMkWWDojgH5n0mIn7zojGTGtfRfRL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "S4vRLIoihFPQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xoDrhUfozcoi1lbYtymgci4hovtTAG3t"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yhmtadr4WKeMx7Xbvtz69UkymvwaYHjB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iiLQKF6aVsd0mv8Gzt0Boeru5TAZQ446"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BS;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VA;ZJJ)V
    .locals 2

    .line 23674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23675
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BS;->A05:Lcom/facebook/ads/redexgen/X/VA;

    .line 23676
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/VG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A04:[Lcom/facebook/ads/redexgen/X/VG;

    .line 23677
    if-eqz p2, :cond_0

    move-wide v0, p3

    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A02:J

    .line 23678
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/BS;->A01:J

    .line 23679
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    .line 23680
    return-void

    .line 23681
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method private A00(JLcom/facebook/ads/redexgen/X/9q;)Lcom/facebook/ads/redexgen/X/9q;
    .locals 11

    .line 23682
    iget-wide v2, p3, Lcom/facebook/ads/redexgen/X/9q;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A01:J

    sub-long v6, p1, v0

    .line 23683
    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Hs;->A0E(JJJ)J

    move-result-wide v0

    .line 23684
    .local v0, "toleranceBeforeUs":J
    iget-wide v5, p3, Lcom/facebook/ads/redexgen/X/9q;->A00:J

    .line 23685
    iget-wide v9, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v2, v9, v3

    if-nez v2, :cond_0

    const-wide v9, 0x7fffffffffffffffL

    .line 23686
    :goto_0
    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Hs;->A0E(JJJ)J

    move-result-wide v3

    .line 23687
    .local v2, "toleranceAfterUs":J
    iget-wide v5, p3, Lcom/facebook/ads/redexgen/X/9q;->A01:J

    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    iget-wide v5, p3, Lcom/facebook/ads/redexgen/X/9q;->A00:J

    cmp-long v2, v3, v5

    if-nez v2, :cond_1

    .line 23688
    return-object p3

    .line 23689
    :cond_0
    sub-long/2addr v9, p1

    goto :goto_0

    .line 23690
    :cond_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/9q;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/9q;-><init>(JJ)V

    return-object v2
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/VA;)V
    .locals 1

    .line 23691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A03:Lcom/facebook/ads/redexgen/X/VB;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Ep;->AAc(Lcom/facebook/ads/redexgen/X/Eq;)V

    .line 23692
    return-void
.end method

.method public static A02(J[Lcom/facebook/ads/redexgen/X/GJ;)Z
    .locals 4

    .line 23693
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    cmp-long v0, p0, v1

    if-eqz v0, :cond_1

    .line 23694
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p2, v1

    .line 23695
    .local v3, "trackSelection":Lcom/facebook/ads/redexgen/X/GJ;
    if-eqz v0, :cond_0

    .line 23696
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A7b()Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    .line 23697
    .local p0, "selectedFormat":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HV;->A09(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23698
    const/4 v0, 0x1

    return v0

    .line 23699
    .end local v3    # "trackSelection":Lcom/facebook/ads/redexgen/X/GJ;
    .end local p0    # "selectedFormat":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23700
    :cond_1
    return v3
.end method


# virtual methods
.method public final A03()Z
    .locals 5

    .line 23701
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/BS;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A4D(J)Z
    .locals 1

    .line 23702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A05:Lcom/facebook/ads/redexgen/X/VA;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/VA;->A4D(J)Z

    move-result v0

    return v0
.end method

.method public final A4s(JZ)V
    .locals 1

    .line 23703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A05:Lcom/facebook/ads/redexgen/X/VA;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/VA;->A4s(JZ)V

    .line 23704
    return-void
.end method

.method public final A5g(JLcom/facebook/ads/redexgen/X/9q;)J
    .locals 3

    .line 23705
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BS;->A01:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 23706
    return-wide v1

    .line 23707
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/BS;->A00(JLcom/facebook/ads/redexgen/X/9q;)Lcom/facebook/ads/redexgen/X/9q;

    move-result-object v1

    .line 23708
    .local v0, "clippedSeekParameters":Lcom/facebook/ads/redexgen/X/9q;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A05:Lcom/facebook/ads/redexgen/X/VA;

    invoke-interface {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/VA;->A5g(JLcom/facebook/ads/redexgen/X/9q;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A5w()J
    .locals 8

    .line 23709
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A05:Lcom/facebook/ads/redexgen/X/VA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/VA;->A5w()J

    move-result-wide v6

    .line 23710
    .local v0, "bufferedPositionUs":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v6, v4

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    cmp-long v0, v1, v4

    if-eqz v0, :cond_2

    cmp-long v3, v6, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/BS;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/BS;->A06:[Ljava/lang/String;

    const-string v1, "DtDan6JMsc2D9dL8KrRs9GVt0cLu7T4O"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ltz v3, :cond_2

    .line 23711
    :cond_0
    return-wide v4

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23712
    :cond_2
    return-wide v6
.end method

.method public final A7B()J
    .locals 7

    .line 23713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A05:Lcom/facebook/ads/redexgen/X/VA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/VA;->A7B()J

    move-result-wide v5

    .line 23714
    .local v0, "nextLoadPositionUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    cmp-long v0, v5, v1

    if-ltz v0, :cond_1

    .line 23715
    :cond_0
    return-wide v3

    .line 23716
    :cond_1
    return-wide v5
.end method

.method public final A7t()Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;
    .locals 1

    .line 23717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A05:Lcom/facebook/ads/redexgen/X/VA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/VA;->A7t()Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public final A9k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A05:Lcom/facebook/ads/redexgen/X/VA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/VA;->A9k()V

    .line 23719
    return-void
.end method

.method public final bridge synthetic AAc(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 0

    .line 23720
    check-cast p1, Lcom/facebook/ads/redexgen/X/VA;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/BS;->A01(Lcom/facebook/ads/redexgen/X/VA;)V

    return-void
.end method

.method public final AC9(Lcom/facebook/ads/redexgen/X/VA;)V
    .locals 1

    .line 23721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A03:Lcom/facebook/ads/redexgen/X/VB;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/VB;->AC9(Lcom/facebook/ads/redexgen/X/VA;)V

    .line 23722
    return-void
.end method

.method public final ADY(Lcom/facebook/ads/redexgen/X/VB;J)V
    .locals 1

    .line 23723
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BS;->A03:Lcom/facebook/ads/redexgen/X/VB;

    .line 23724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A05:Lcom/facebook/ads/redexgen/X/VA;

    invoke-interface {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/VA;->ADY(Lcom/facebook/ads/redexgen/X/VB;J)V

    .line 23725
    return-void
.end method

.method public final ADt()J
    .locals 8

    .line 23726
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BS;->A03()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    .line 23727
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/BS;->A02:J

    sget-object v3, Lcom/facebook/ads/redexgen/X/BS;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0xc

    if-eq v3, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23728
    .local v3, "initialDiscontinuityUs":J
    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/BS;->A06:[Ljava/lang/String;

    const-string v3, "LhyfL76jA11YYofpKqTom8Rw5oMGbfG9"

    const/4 v0, 0x6

    aput-object v3, v4, v0

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/BS;->A02:J

    .line 23729
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BS;->ADt()J

    move-result-wide v3

    .line 23730
    .local v5, "childDiscontinuityUs":J
    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    move-wide v5, v3

    :cond_1
    return-wide v5

    .line 23731
    .end local v3    # "initialDiscontinuityUs":J
    .end local v5    # "childDiscontinuityUs":J
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A05:Lcom/facebook/ads/redexgen/X/VA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/VA;->ADt()J

    move-result-wide v6

    .line 23732
    .local v3, "discontinuityUs":J
    cmp-long v0, v6, v1

    if-nez v0, :cond_3

    .line 23733
    return-wide v1

    .line 23734
    :cond_3
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BS;->A01:J

    const/4 v5, 0x1

    cmp-long v0, v6, v1

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 23735
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    cmp-long v0, v6, v3

    if-gtz v0, :cond_5

    :cond_4
    :goto_1
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 23736
    return-wide v6

    .line 23737
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 23738
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AE0(J)V
    .locals 1

    .line 23739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A05:Lcom/facebook/ads/redexgen/X/VA;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/VA;->AE0(J)V

    .line 23740
    return-void
.end method

.method public final AEg(J)J
    .locals 9

    .line 23741
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A02:J

    .line 23742
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BS;->A04:[Lcom/facebook/ads/redexgen/X/VG;

    array-length v2, v3

    const/4 v8, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, v3, v1

    .line 23743
    .local v4, "sampleStream":Lcom/facebook/ads/redexgen/X/VG;
    if-eqz v0, :cond_0

    .line 23744
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/VG;->A00()V

    .line 23745
    .end local v4    # "sampleStream":Lcom/facebook/ads/redexgen/X/VG;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23746
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A05:Lcom/facebook/ads/redexgen/X/VA;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/VA;->AEg(J)J

    move-result-wide v6

    .line 23747
    .local v0, "seekUs":J
    cmp-long v0, v6, p1

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BS;->A01:J

    cmp-long v0, v6, v1

    if-ltz v0, :cond_4

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v4, v1

    if-eqz v0, :cond_3

    cmp-long v3, v6, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/BS;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/BS;->A06:[Ljava/lang/String;

    const-string v1, "Q"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-gtz v3, :cond_4

    :cond_3
    const/4 v8, 0x1

    :cond_4
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 23748
    return-wide v6
.end method

.method public final AEh([Lcom/facebook/ads/redexgen/X/GJ;[Z[Lcom/facebook/ads/redexgen/X/Eo;[ZJ)J
    .locals 15

    .line 23749
    move-object/from16 v4, p3

    array-length v0, v4

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/VG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A04:[Lcom/facebook/ads/redexgen/X/VG;

    .line 23750
    array-length v0, v4

    new-array v11, v0, [Lcom/facebook/ads/redexgen/X/Eo;

    .line 23751
    .local v0, "childStreams":[Lcom/facebook/ads/redexgen/X/Eo;
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    array-length v0, v4

    const/4 v3, 0x0

    if-ge v2, v0, :cond_1

    .line 23752
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BS;->A04:[Lcom/facebook/ads/redexgen/X/VG;

    aget-object v0, v4, v2

    check-cast v0, Lcom/facebook/ads/redexgen/X/VG;

    aput-object v0, v1, v2

    .line 23753
    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    aget-object v0, v1, v2

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/VG;->A01:Lcom/facebook/ads/redexgen/X/Eo;

    :cond_0
    aput-object v3, v11, v2

    .line 23754
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23755
    .end local v1    # "i":I
    :cond_1
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/BS;->A05:Lcom/facebook/ads/redexgen/X/VA;

    .line 23756
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    move-wide/from16 v13, p5

    invoke-interface/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/VA;->AEh([Lcom/facebook/ads/redexgen/X/GJ;[Z[Lcom/facebook/ads/redexgen/X/Eo;[ZJ)J

    move-result-wide v7

    .line 23757
    .local v1, "enablePositionUs":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BS;->A03()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A01:J

    cmp-long v2, v13, v0

    if-nez v2, :cond_7

    .line 23758
    invoke-static {v0, v1, v9}, Lcom/facebook/ads/redexgen/X/BS;->A02(J[Lcom/facebook/ads/redexgen/X/GJ;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23759
    move-wide v0, v7

    .line 23760
    :goto_1
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A02:J

    .line 23761
    cmp-long v0, v7, v13

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BS;->A01:J

    cmp-long v0, v7, v1

    if-ltz v0, :cond_6

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v1, v5

    if-eqz v0, :cond_2

    cmp-long v0, v7, v1

    if-gtz v0, :cond_6

    :cond_2
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 23762
    const/4 v5, 0x0

    .local v3, "i":I
    :goto_3
    array-length v0, v4

    if-ge v5, v0, :cond_8

    .line 23763
    aget-object v0, v11, v5

    if-nez v0, :cond_4

    .line 23764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A04:[Lcom/facebook/ads/redexgen/X/VG;

    aput-object v3, v0, v5

    .line 23765
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A04:[Lcom/facebook/ads/redexgen/X/VG;

    aget-object v0, v0, v5

    aput-object v0, v4, v5

    .line 23766
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 23767
    :cond_4
    aget-object v0, v4, v5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A04:[Lcom/facebook/ads/redexgen/X/VG;

    aget-object v0, v0, v5

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VG;->A01:Lcom/facebook/ads/redexgen/X/Eo;

    aget-object v0, v11, v5

    if-eq v1, v0, :cond_3

    .line 23768
    :cond_5
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BS;->A04:[Lcom/facebook/ads/redexgen/X/VG;

    aget-object v1, v11, v5

    new-instance v0, Lcom/facebook/ads/redexgen/X/VG;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/VG;-><init>(Lcom/facebook/ads/redexgen/X/BS;Lcom/facebook/ads/redexgen/X/Eo;)V

    aput-object v0, v2, v5

    goto :goto_4

    .line 23769
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 23770
    :cond_7
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    .line 23771
    .end local v3    # "i":I
    :cond_8
    return-wide v7
.end method
