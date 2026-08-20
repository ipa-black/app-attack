.class public final Lcom/facebook/ads/redexgen/X/Pu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Pt;,
        Lcom/facebook/ads/redexgen/X/Pr;,
        Lcom/facebook/ads/redexgen/X/Ps;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/De;

.field public final A01:Lcom/facebook/ads/redexgen/X/Um;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 49054
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WzijvlAd9RP1HJzMxCKzeYHnMs2QP54v"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kfrqpsiELz0FvZTPYg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hAwPDz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OryCsPOoCbEZ1Kjw18"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JoqBI6chV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rfkFyJ13DXugB3RLj6H"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rQvj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kthZXjW83"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Pu;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pu;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 3

    .line 49055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49056
    new-instance v0, Lcom/facebook/ads/redexgen/X/Um;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Um;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A01:Lcom/facebook/ads/redexgen/X/Um;

    .line 49057
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pu;->A01:Lcom/facebook/ads/redexgen/X/Um;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ut;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ut;-><init>(Lcom/facebook/ads/redexgen/X/GS;)V

    .line 49058
    .local v0, "trackSelectionFactory":Lcom/facebook/ads/redexgen/X/GI;
    new-instance v2, Lcom/facebook/ads/redexgen/X/B7;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/B7;-><init>(Lcom/facebook/ads/redexgen/X/GI;)V

    .line 49059
    .local v1, "trackSelector":Lcom/facebook/ads/redexgen/X/GM;
    new-instance v1, Lcom/facebook/ads/redexgen/X/Wy;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Wy;-><init>()V

    .line 49060
    .local v2, "loadControl":Lcom/facebook/ads/redexgen/X/9U;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ww;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Ww;-><init>(Landroid/content/Context;)V

    .line 49061
    .local p0, "renderersFactory":Lcom/facebook/ads/redexgen/X/9p;
    invoke-static {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/9H;->A00(Lcom/facebook/ads/redexgen/X/9p;Lcom/facebook/ads/redexgen/X/GM;Lcom/facebook/ads/redexgen/X/9U;)Lcom/facebook/ads/redexgen/X/De;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    .line 49062
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pu;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xa

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/9F;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 49063
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x29

    const/16 v1, 0xb

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pu;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A01:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/16 v1, 0x16

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pu;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pu;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49064
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9F;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    const/4 v1, 0x2

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pu;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49065
    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pu;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x72t
        -0x68t
        -0x74t
        -0x72t
        -0x31t
        -0x33t
        -0x1ft
        -0x21t
        -0x2ft
        -0x72t
        -0x74t
        -0x5at
        -0x74t
        -0x72t
        -0x60t
        -0x56t
        -0x62t
        -0x60t
        -0x10t
        -0x1dt
        -0x14t
        -0x1et
        -0x1dt
        -0x10t
        -0x1dt
        -0x10t
        -0x39t
        -0x14t
        -0x1et
        -0x1dt
        -0xat
        -0x60t
        -0x62t
        -0x48t
        -0x62t
        -0x60t
        -0x72t
        -0x17t
        0x6ft
        0x72t
        -0x7ft
        -0x44t
        0x63t
        -0x4bt
        -0x46t
        -0x4ft
        -0x5at
        0x63t
        0x61t
        0x7bt
        0x61t
        0x63t
    .end array-data
.end method

.method public static A03()Z
    .locals 4

    .line 49066
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pu;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Pu;->A03:[Ljava/lang/String;

    const-string v1, "p35x"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A04()I
    .locals 1

    .line 49067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/De;->A0J()I

    move-result v0

    return v0
.end method

.method public final A05()I
    .locals 1

    .line 49068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/De;->A5u()I

    move-result v0

    return v0
.end method

.method public final A06()J
    .locals 2

    .line 49069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/De;->A6L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A07()J
    .locals 2

    .line 49070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/De;->A6X()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/Ps;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 49071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/De;->A0L()Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    .line 49072
    .local v0, "vf":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    if-nez v0, :cond_0

    .line 49073
    const/4 v0, 0x0

    return-object v0

    .line 49074
    :cond_0
    iget v2, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    iget v1, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ps;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ps;-><init>(II)V

    return-object v0
.end method

.method public final A09()V
    .locals 1

    .line 49075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/De;->AE4()V

    .line 49076
    return-void
.end method

.method public final A0A()V
    .locals 1

    .line 49077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/De;->AEf()V

    .line 49078
    return-void
.end method

.method public final A0B()V
    .locals 1

    .line 49079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/De;->A0M()V

    .line 49080
    return-void
.end method

.method public final A0C(F)V
    .locals 1

    .line 49081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/De;->A0N(F)V

    .line 49082
    return-void
.end method

.method public final A0D(J)V
    .locals 1

    .line 49083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/De;->AEe(J)V

    .line 49084
    return-void
.end method

.method public final A0E(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/De;->A0O(Landroid/view/Surface;)V

    .line 49086
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/Xb;Landroid/net/Uri;)V
    .locals 3

    .line 49087
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pu;->A03()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/IK;->A2F(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49088
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Py;->A05(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/Py;

    move-result-object v0

    .line 49089
    .local v0, "cacheManager":Lcom/facebook/ads/redexgen/X/Py;
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Py;->A0F(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/GW;

    move-result-object v0

    .line 49090
    .local v1, "cachedDataSourceFactory":Lcom/facebook/ads/redexgen/X/GW;
    new-instance v1, Lcom/facebook/ads/redexgen/X/VC;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/VC;-><init>(Lcom/facebook/ads/redexgen/X/GW;)V

    .line 49091
    .local v2, "mediaFactory":Lcom/facebook/ads/redexgen/X/VC;
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/Py;->A08(Lcom/facebook/ads/redexgen/X/Xb;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 49092
    .local p0, "customCacheKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 49093
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/VC;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/VC;

    .line 49094
    :cond_0
    invoke-virtual {v1, p2}, Lcom/facebook/ads/redexgen/X/VC;->A01(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v1

    .line 49095
    .local p1, "mediaSource":Lcom/facebook/ads/redexgen/X/ET;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/De;->A0P(Lcom/facebook/ads/redexgen/X/ET;)V

    .line 49096
    .end local v0    # "cacheManager":Lcom/facebook/ads/redexgen/X/Py;
    .end local v1    # "cachedDataSourceFactory":Lcom/facebook/ads/redexgen/X/GW;
    .end local v2    # "mediaFactory":Lcom/facebook/ads/redexgen/X/VC;
    .end local p0    # "customCacheKey":Ljava/lang/String;
    .end local p1    # "mediaSource":Lcom/facebook/ads/redexgen/X/ET;
    .end local v0
    .end local v1
    :goto_0
    return-void

    .line 49097
    :cond_1
    const/16 v2, 0x26

    const/4 v1, 0x3

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pu;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A0K(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A01:Lcom/facebook/ads/redexgen/X/Um;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Uk;

    invoke-direct {v1, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/Uk;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gt;)V

    .line 49098
    .local v0, "dataSourceFactory":Lcom/facebook/ads/redexgen/X/GW;
    new-instance v0, Lcom/facebook/ads/redexgen/X/VC;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/VC;-><init>(Lcom/facebook/ads/redexgen/X/GW;)V

    .line 49099
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/VC;->A01(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v1

    .line 49100
    .local v1, "mediaSource":Lcom/facebook/ads/redexgen/X/ET;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/De;->A0P(Lcom/facebook/ads/redexgen/X/ET;)V

    goto :goto_0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/Pr;)V
    .locals 2

    .line 49101
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JM;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/JM;-><init>(Lcom/facebook/ads/redexgen/X/Pu;Lcom/facebook/ads/redexgen/X/Pr;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A3F(Lcom/facebook/ads/redexgen/X/9d;)V

    .line 49102
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/Pt;)V
    .locals 2

    .line 49103
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JN;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/JN;-><init>(Lcom/facebook/ads/redexgen/X/Pu;Lcom/facebook/ads/redexgen/X/Pt;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A0Q(Lcom/facebook/ads/redexgen/X/I7;)V

    .line 49104
    return-void
.end method

.method public final A0I(Z)V
    .locals 1

    .line 49105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/De;->AF3(Z)V

    .line 49106
    return-void
.end method

.method public final A0J()Z
    .locals 1

    .line 49107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/De;->A7N()Z

    move-result v0

    return v0
.end method

.method public final A0K()Z
    .locals 1

    .line 49108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/De;->A0K()Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
