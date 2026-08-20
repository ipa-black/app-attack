.class public final Lcom/facebook/ads/redexgen/X/2O;
.super Lcom/facebook/ads/redexgen/X/BN;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Fv;

.field public final A01:Lcom/facebook/ads/redexgen/X/G1;

.field public final A02:Lcom/facebook/ads/redexgen/X/G4;

.field public final A03:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Fz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 5361
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nabbxVlkTS02KbOXtvrYjxXOkvgrE4Rx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pCs3X8pbdqhf3udQeQHOHg2TESRVIExP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "X7dWDqGkZ4oo9ojzasriQNNbGDOP4U2k"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bRsmFeMe4IswSZg7MRLOH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8AzhoLHWgRP6QDlYco1FQ5KlMFYiSCT4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JmcruW7M7IQPekUGyzzhcFR79qXiQpMI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0ZXGLWfsk5GmSFBdSETpQZD9x"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2O;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2O;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 5362
    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2O;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BN;-><init>(Ljava/lang/String;)V

    .line 5363
    new-instance v0, Lcom/facebook/ads/redexgen/X/G4;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/G4;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A02:Lcom/facebook/ads/redexgen/X/G4;

    .line 5364
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    .line 5365
    new-instance v0, Lcom/facebook/ads/redexgen/X/G1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/G1;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A01:Lcom/facebook/ads/redexgen/X/G1;

    .line 5366
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fv;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Fv;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A00:Lcom/facebook/ads/redexgen/X/Fv;

    .line 5367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A04:Ljava/util/List;

    .line 5368
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Hc;)I
    .locals 8

    .line 5369
    const/4 v1, -0x1

    .line 5370
    .local v0, "foundEvent":I
    const/4 v5, 0x0

    .line 5371
    .local v1, "currentInputPosition":I
    :goto_0
    const/4 v0, -0x1

    if-ne v1, v0, :cond_4

    .line 5372
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v5

    .line 5373
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0P()Ljava/lang/String;

    move-result-object v6

    .line 5374
    .local v2, "line":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 5375
    const/4 v1, 0x0

    goto :goto_0

    .line 5376
    :cond_0
    const/16 v2, 0x30

    const/4 v1, 0x5

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2O;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5377
    const/4 v1, 0x2

    goto :goto_0

    .line 5378
    :cond_1
    const/16 v7, 0x2c

    const/4 v4, 0x4

    const/16 v3, 0x23

    sget-object v2, Lcom/facebook/ads/redexgen/X/2O;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/2O;->A06:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v7, v4, v3}, Lcom/facebook/ads/redexgen/X/2O;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5379
    const/4 v1, 0x1

    goto :goto_0

    .line 5380
    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    .line 5381
    :cond_4
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 5382
    return v1
.end method

.method private final A01([BIZ)Lcom/facebook/ads/redexgen/X/Uu;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FS;
        }
    .end annotation

    .line 5383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Hc;->A0b([BI)V

    .line 5384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A01:Lcom/facebook/ads/redexgen/X/G1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G1;->A0E()V

    .line 5385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A04:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/G5;->A04(Lcom/facebook/ads/redexgen/X/Hc;)V

    .line 5387
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2O;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    sget-object v2, Lcom/facebook/ads/redexgen/X/2O;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/2O;->A06:[Ljava/lang/String;

    const-string v1, "tbdDXORcAGWDWJQvQKVPnq93lpg2mrPP"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5388
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5389
    .local v0, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/webvtt/WebvttCue;>;"
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2O;->A00(Lcom/facebook/ads/redexgen/X/Hc;)I

    move-result v1

    .local v2, "event":I
    if-eqz v1, :cond_6

    .line 5390
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    .line 5391
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2O;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    sget-object v1, Lcom/facebook/ads/redexgen/X/2O;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_2

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/2O;->A04(Lcom/facebook/ads/redexgen/X/Hc;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/2O;->A06:[Ljava/lang/String;

    const-string v1, "XeLthZEhonOY1WTLxlO74ZC3vwAi7Gzu"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "58vrG83lY5mmO2PMdgn4YupBjgbiqU0F"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/2O;->A04(Lcom/facebook/ads/redexgen/X/Hc;)V

    goto :goto_1

    .line 5392
    :cond_3
    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    .line 5393
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0P()Ljava/lang/String;

    .line 5395
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2O;->A00:Lcom/facebook/ads/redexgen/X/Fv;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A0E(Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v1

    .line 5396
    .local v1, "styleBlock":Lcom/facebook/ads/redexgen/X/Fz;
    if-eqz v1, :cond_1

    .line 5397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A04:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5398
    :cond_4
    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    .line 5399
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2O;->A02:Lcom/facebook/ads/redexgen/X/G4;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2O;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2O;->A01:Lcom/facebook/ads/redexgen/X/G1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A04:Ljava/util/List;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A0G(Lcom/facebook/ads/redexgen/X/Hc;Lcom/facebook/ads/redexgen/X/G1;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A01:Lcom/facebook/ads/redexgen/X/G1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G1;->A0D()Lcom/facebook/ads/redexgen/X/Uv;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A01:Lcom/facebook/ads/redexgen/X/G1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G1;->A0E()V

    goto :goto_1

    .line 5402
    .end local v1    # "styleBlock":Lcom/facebook/ads/redexgen/X/Fz;
    :cond_5
    const/4 v2, 0x0

    const/16 v1, 0x2c

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2O;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/FS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/FS;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5403
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/Uu;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Uu;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2O;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 4

    const/16 v0, 0x42

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2O;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2O;->A06:[Ljava/lang/String;

    const-string v1, "qjCLSi9tiUSTzkFi0DFuhWZdaggVbYhZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/2O;->A05:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x58t
        -0x79t
        -0x26t
        -0x25t
        -0x20t
        -0x2dt
        -0x34t
        -0x79t
        -0x37t
        -0x2dt
        -0x2at
        -0x36t
        -0x2et
        -0x79t
        -0x22t
        -0x38t
        -0x26t
        -0x79t
        -0x33t
        -0x2at
        -0x24t
        -0x2bt
        -0x35t
        -0x79t
        -0x38t
        -0x33t
        -0x25t
        -0x34t
        -0x27t
        -0x79t
        -0x25t
        -0x31t
        -0x34t
        -0x79t
        -0x33t
        -0x30t
        -0x27t
        -0x26t
        -0x25t
        -0x79t
        -0x36t
        -0x24t
        -0x34t
        -0x6bt
        -0x6et
        -0x6dt
        -0x68t
        -0x77t
        -0x49t
        -0x48t
        -0x43t
        -0x50t
        -0x57t
        -0x5ct
        -0x4et
        -0x51t
        -0x3dt
        -0x3ft
        -0x3ft
        -0x6ft
        -0x4et
        -0x50t
        -0x44t
        -0x4ft
        -0x4et
        -0x41t
    .end array-data
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Hc;)V
    .locals 1

    .line 5404
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5405
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A0b([BIZ)Lcom/facebook/ads/redexgen/X/FR;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FS;
        }
    .end annotation

    .line 5406
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2O;->A01([BIZ)Lcom/facebook/ads/redexgen/X/Uu;

    move-result-object v0

    return-object v0
.end method
