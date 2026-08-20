.class public final Lcom/facebook/ads/redexgen/X/ST;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Nd;->A0F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Nd;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 52311
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tqjsEEcJIl5fnT50RexN0Ul8jJNRcJH3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bcHaNcoWvApI2nKaudb7K7xtbFjWkSY2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iyPpS1SdU0ZqVBkmFeVqNLta6ZFg9Iqa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UBClilIqx1CzUaWBAcSFWImK7oEyUnNj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3QGuHwFl80gr6moaepv76MMeXXWdVHzR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LTxBQzMWcHhaEkgA4RYqwBVdVGvYrVKd"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "khQutPcnm0RXwnjsvW5BsBwBtMJWmKup"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vMJICmQj5dYIJdPu1hKuz0wH7PDNWSqy"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ST;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ST;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nd;)V
    .locals 0

    .line 52312
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ST;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ST;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x64

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/ST;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/ST;->A02:[Ljava/lang/String;

    const-string v1, "0Kfb69VsCmdvaLaP4iTMNX4D6n507IHd"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ST;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x60t
        0x5ft
        0x52t
        0x53t
        0x59t
        0x16t
        0x41t
        0x57t
        0x45t
        0x16t
        0x58t
        0x53t
        0x40t
        0x53t
        0x44t
        0x16t
        0x46t
        0x44t
        0x53t
        0x46t
        0x57t
        0x44t
        0x53t
        0x52t
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 4

    .line 52313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ST;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A0L(Lcom/facebook/ads/redexgen/X/Nd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ST;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A09(Lcom/facebook/ads/redexgen/X/Nd;)Lcom/facebook/ads/redexgen/X/Ob;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ST;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Ob;->ACz(Ljava/lang/String;)V

    .line 52315
    :cond_0
    return-void
.end method
