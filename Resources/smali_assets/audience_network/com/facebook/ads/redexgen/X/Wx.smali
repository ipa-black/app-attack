.class public final Lcom/facebook/ads/redexgen/X/Wx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HT;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9C;
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Wu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/HT;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/9C;

.field public final A03:Lcom/facebook/ads/redexgen/X/UO;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 65750
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Xobc5aSRFsnlTfq950Hm2L3uP2yqTx5R"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "l"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qpzLH3olNTSgnmEJfqgMoILAygrv9Gvu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rA2kHVtwjUdxF3LXQtoL786BdYvsVYLD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0rBDFyThd5IBv1Jp4I3rS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "drj1vvUtkoX3RGiyI02l8il3i3aSfPCy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "cZlTLMFk7RrLemAAhuy1ARzIYrj9DMLk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NSM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wx;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wx;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9C;Lcom/facebook/ads/redexgen/X/HG;)V
    .locals 1

    .line 65751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65752
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wx;->A02:Lcom/facebook/ads/redexgen/X/9C;

    .line 65753
    new-instance v0, Lcom/facebook/ads/redexgen/X/UO;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/UO;-><init>(Lcom/facebook/ads/redexgen/X/HG;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A03:Lcom/facebook/ads/redexgen/X/UO;

    .line 65754
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wx;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x40

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 3

    .line 65755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A01:Lcom/facebook/ads/redexgen/X/HT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HT;->A7R()J

    move-result-wide v1

    .line 65756
    .local v0, "rendererClockPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A03:Lcom/facebook/ads/redexgen/X/UO;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/UO;->A02(J)V

    .line 65757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A01:Lcom/facebook/ads/redexgen/X/HT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HT;->A7O()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v1

    .line 65758
    .local v2, "playbackParameters":Lcom/facebook/ads/redexgen/X/9a;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A03:Lcom/facebook/ads/redexgen/X/UO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UO;->A7O()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65759
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A03:Lcom/facebook/ads/redexgen/X/UO;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/UO;->AF4(Lcom/facebook/ads/redexgen/X/9a;)Lcom/facebook/ads/redexgen/X/9a;

    .line 65760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A02:Lcom/facebook/ads/redexgen/X/9C;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/9C;->AC1(Lcom/facebook/ads/redexgen/X/9a;)V

    .line 65761
    :cond_0
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wx;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x54t
        -0x2ct
        -0x35t
        -0x2dt
        -0x38t
        -0x31t
        -0x35t
        -0x3ct
        0x7ft
        -0x2ft
        -0x3ct
        -0x33t
        -0x3dt
        -0x3ct
        -0x2ft
        -0x3ct
        -0x2ft
        0x7ft
        -0x34t
        -0x3ct
        -0x3dt
        -0x38t
        -0x40t
        0x7ft
        -0x3et
        -0x35t
        -0x32t
        -0x3et
        -0x36t
        -0x2et
        0x7ft
        -0x3ct
        -0x33t
        -0x40t
        -0x3ft
        -0x35t
        -0x3ct
        -0x3dt
        -0x73t
    .end array-data
.end method

.method private A03()Z
    .locals 4

    .line 65762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A00:Lcom/facebook/ads/redexgen/X/Wu;

    if-eqz v0, :cond_1

    .line 65763
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wu;->A8h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A00:Lcom/facebook/ads/redexgen/X/Wu;

    .line 65764
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wu;->A8r()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wx;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wx;->A05:[Ljava/lang/String;

    const-string v1, "Da4vHoBMew1xMnwVwhw0NxQudcM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A00:Lcom/facebook/ads/redexgen/X/Wu;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wu;->A8H()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 65765
    :goto_0
    return v0

    .line 65766
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A04()J
    .locals 5

    .line 65767
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wx;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65768
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wx;->A01()V

    .line 65769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A01:Lcom/facebook/ads/redexgen/X/HT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HT;->A7R()J

    move-result-wide v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wx;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wx;->A05:[Ljava/lang/String;

    const-string v1, "L098bBK7xK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-wide v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65770
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A03:Lcom/facebook/ads/redexgen/X/UO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UO;->A7R()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A05()V
    .locals 1

    .line 65771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A03:Lcom/facebook/ads/redexgen/X/UO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UO;->A00()V

    .line 65772
    return-void
.end method

.method public final A06()V
    .locals 1

    .line 65773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A03:Lcom/facebook/ads/redexgen/X/UO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UO;->A01()V

    .line 65774
    return-void
.end method

.method public final A07(J)V
    .locals 1

    .line 65775
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A03:Lcom/facebook/ads/redexgen/X/UO;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/UO;->A02(J)V

    .line 65776
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/Wu;)V
    .locals 1

    .line 65777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A00:Lcom/facebook/ads/redexgen/X/Wu;

    if-ne p1, v0, :cond_0

    .line 65778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A01:Lcom/facebook/ads/redexgen/X/HT;

    .line 65779
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A00:Lcom/facebook/ads/redexgen/X/Wu;

    .line 65780
    :cond_0
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/Wu;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 65781
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Wu;->A74()Lcom/facebook/ads/redexgen/X/HT;

    move-result-object v4

    .line 65782
    .local v0, "rendererMediaClock":Lcom/facebook/ads/redexgen/X/HT;
    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wx;->A01:Lcom/facebook/ads/redexgen/X/HT;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wx;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x54

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wx;->A05:[Ljava/lang/String;

    const-string v1, "G6KpX7Ur5Z0x6RCw4xSrHpY3l6NonZ5O"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "DkiI2Rz4cuYvxyrSRslfvXTI6PdAzLXl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_1

    .line 65783
    if-nez v3, :cond_2

    .line 65784
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Wx;->A01:Lcom/facebook/ads/redexgen/X/HT;

    .line 65785
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wx;->A00:Lcom/facebook/ads/redexgen/X/Wu;

    .line 65786
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wx;->A01:Lcom/facebook/ads/redexgen/X/HT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A03:Lcom/facebook/ads/redexgen/X/UO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UO;->A7O()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/HT;->AF4(Lcom/facebook/ads/redexgen/X/9a;)Lcom/facebook/ads/redexgen/X/9a;

    .line 65787
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wx;->A01()V

    .line 65788
    :cond_1
    return-void

    .line 65789
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x27

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wx;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9F;->A02(Ljava/lang/RuntimeException;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    throw v0
.end method

.method public final A7O()Lcom/facebook/ads/redexgen/X/9a;
    .locals 1

    .line 65790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A01:Lcom/facebook/ads/redexgen/X/HT;

    if-eqz v0, :cond_0

    .line 65791
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HT;->A7O()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v0

    .line 65792
    :goto_0
    return-object v0

    .line 65793
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A03:Lcom/facebook/ads/redexgen/X/UO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UO;->A7O()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v0

    goto :goto_0
.end method

.method public final A7R()J
    .locals 2

    .line 65794
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wx;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A01:Lcom/facebook/ads/redexgen/X/HT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HT;->A7R()J

    move-result-wide v0

    return-wide v0

    .line 65796
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A03:Lcom/facebook/ads/redexgen/X/UO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UO;->A7R()J

    move-result-wide v0

    return-wide v0
.end method

.method public final AF4(Lcom/facebook/ads/redexgen/X/9a;)Lcom/facebook/ads/redexgen/X/9a;
    .locals 1

    .line 65797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A01:Lcom/facebook/ads/redexgen/X/HT;

    if-eqz v0, :cond_0

    .line 65798
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/HT;->AF4(Lcom/facebook/ads/redexgen/X/9a;)Lcom/facebook/ads/redexgen/X/9a;

    move-result-object p1

    .line 65799
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A03:Lcom/facebook/ads/redexgen/X/UO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/UO;->AF4(Lcom/facebook/ads/redexgen/X/9a;)Lcom/facebook/ads/redexgen/X/9a;

    .line 65800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wx;->A02:Lcom/facebook/ads/redexgen/X/9C;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/9C;->AC1(Lcom/facebook/ads/redexgen/X/9a;)V

    .line 65801
    return-object p1
.end method
