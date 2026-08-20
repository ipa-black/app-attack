.class public final Lcom/facebook/ads/redexgen/X/Eu;
.super Lcom/facebook/ads/redexgen/X/Zs;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static A00:[B = null

.field public static A01:[Ljava/lang/String; = null

.field public static final serialVersionUID:J = 0x262e8901a6a53febL


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 32350
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lNfLNH12lo092G91EOzeY1GmrD7sd3LT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IfriMLumcJB6cDz8CdV53z8mw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VqAXCxmiQObdbt99qEtF0Khtp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Er74lg0w9IOdrBN2LYFe3VajafM65LKV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PApxnlfYZYjRi2lMOUBi6X3WbwZz37rL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HRTNeezFOCXWn2GXnxOdBfrunSk2O2aN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VET24gqvkOE8n1LMNVzexbAvR8qySpIp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2OknKa0ZFArae7oBhfBaswv35Z02O68Z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Eu;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Eu;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/1C;",
            ">;)V"
        }
    .end annotation

    .line 32351
    .local p1, "adInfo":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Zs;-><init>(Ljava/util/List;)V

    .line 32352
    return-void
.end method

.method public static A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Xc;)Lcom/facebook/ads/redexgen/X/Eu;
    .locals 2

    .line 32353
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zn;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Zn;-><init>()V

    .line 32354
    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A07(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1O;)Ljava/util/List;

    move-result-object v0

    new-instance p1, Lcom/facebook/ads/redexgen/X/Eu;

    invoke-direct {p1, v0}, Lcom/facebook/ads/redexgen/X/Eu;-><init>(Ljava/util/List;)V

    .line 32355
    .local v0, "rewardedVideoAdDataBundle":Lcom/facebook/ads/redexgen/X/Eu;
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/Zs;->A0q(Lorg/json/JSONObject;)V

    .line 32356
    const/4 p0, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x8

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Eu;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A0S(Ljava/lang/String;)V

    .line 32357
    return-object p1
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Eu;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Eu;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x7bt
        0x6ct
        0x7et
        0x68t
        0x7bt
        0x6dt
        0x6ct
        0x6dt
        0x56t
        0x7ft
        0x60t
        0x6dt
        0x6ct
        0x66t
    .end array-data
.end method


# virtual methods
.method public final A0C()I
    .locals 4

    .line 32358
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1B;->A0Y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32359
    const/4 v3, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Eu;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Eu;->A01:[Ljava/lang/String;

    const-string v1, "Avc54I4RohpfVXuEjhFSHVQISVBIYsCd"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 32360
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A06()Lcom/facebook/ads/redexgen/X/1X;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 32361
    const/4 v0, 0x1

    .line 32362
    :goto_0
    return v0

    .line 32363
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0D()I
    .locals 1

    .line 32364
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A04()I

    move-result v0

    return v0
.end method
