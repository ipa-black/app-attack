.class public final Lcom/facebook/ads/redexgen/X/VJ;
.super Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;
.source ""


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction$Deserializer;


# instance fields
.field public final A00:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 58663
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "46KZlysh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "v5JbI1zn9NtFmtUSNw1LX8qgRoLlRTf2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7hsTeREa3OQkhlUjYSFE7Yjn3OMopZtq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bIH7uFzN8pwIBPvvAc6jvDp34yKHOPZU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2wsaknzvnlzVc88IfTqAZxXmGFxrjXmK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "D0CHBscM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uBnM1bOV2oDm3jLZQVjZSmaYperPVq3J"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bW98koNIZcc09K7QNnn8hDaxiQx7kOVn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VJ;->A06()V

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VJ;->A05(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/VK;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/VJ;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction$Deserializer;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Z[BLjava/lang/String;)V
    .locals 6
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58664
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VJ;->A05(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;-><init>(Ljava/lang/String;ILandroid/net/Uri;Z[B)V

    .line 58665
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:Ljava/lang/String;

    .line 58666
    return-void
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/Dy;)Lcom/facebook/ads/redexgen/X/VI;
    .locals 3

    .line 58667
    iget-object v2, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;->A01:Landroid/net/Uri;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, v2, v1, p1}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Dy;)V

    return-object v0
.end method

.method private A04()Ljava/lang/String;
    .locals 1

    .line 58668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;->A01:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/H3;->A01(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/VJ;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A02:[Ljava/lang/String;

    const-string v1, "QG69phFI"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "e1bZ87VO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x54

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VJ;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x14t
        0x16t
        0xbt
        0x3t
        0x16t
        0x1t
        0x17t
        0x17t
        0xdt
        0x12t
        0x1t
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic A07(Lcom/facebook/ads/redexgen/X/Dy;)Lcom/facebook/ads/redexgen/X/Dx;
    .locals 1

    .line 58669
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VJ;->A02(Lcom/facebook/ads/redexgen/X/Dy;)Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v0

    return-object v0
.end method

.method public final A08(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58670
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;->A01:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 58671
    iget-boolean v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;->A03:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 58672
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;->A04:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 58673
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;->A04:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 58674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 58675
    .local v0, "customCacheKeySet":Z
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/VJ;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4a

    if-eq v1, v0, :cond_2

    .line 58676
    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A02:[Ljava/lang/String;

    const-string v1, "acUvI36WXCZycPiwDJpirJRaYqE7nyij"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 58677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 58678
    :cond_0
    return-void

    .line 58679
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A09(Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;)Z
    .locals 2

    .line 58680
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/VJ;

    if-eqz v0, :cond_0

    .line 58681
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VJ;->A04()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/facebook/ads/redexgen/X/VJ;

    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/VJ;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 58682
    :goto_0
    return v0

    .line 58683
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58684
    if-ne p0, p1, :cond_1

    .line 58685
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/VJ;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A02:[Ljava/lang/String;

    const-string v1, "v5mwaZUoOiBJC9mXljSIGj8i3GxyffA1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "RcK60WiDeUlnnWyZ6eoupL9HUr6ECWiO"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58686
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58687
    const/4 v0, 0x0

    return v0

    .line 58688
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/VJ;

    .line 58689
    .local v0, "that":Lcom/facebook/ads/redexgen/X/VJ;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VJ;->A00:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A0g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 58690
    invoke-super {p0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;->hashCode()I

    move-result v0

    .line 58691
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 58692
    .end local v0    # "result":I
    .local v1, "result":I
    return v1

    .line 58693
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
