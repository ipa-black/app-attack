.class public abstract Lcom/facebook/ads/redexgen/X/4J;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B


# instance fields
.field public A00:I

.field public final A01:Landroid/graphics/Rect;

.field public final A02:Lcom/facebook/ads/redexgen/X/4Z;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4J;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 1

    .line 11418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11419
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:I

    .line 11420
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/graphics/Rect;

    .line 11421
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    .line 11422
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/Yc;)V
    .locals 0

    .line 11423
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4J;
    .locals 1

    .line 11424
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yc;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4J;
    .locals 1

    .line 11425
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yb;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4Z;I)Lcom/facebook/ads/redexgen/X/4J;
    .locals 1

    .line 11426
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 11427
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/4J;->A01(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v0

    return-object v0

    .line 11428
    :cond_0
    const/4 p1, 0x0

    const/16 p0, 0x13

    const/16 v0, 0xb

    invoke-static {p1, p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A03(III)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11429
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/4J;->A00(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v0

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4J;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x36

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

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4J;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x54t
        0x53t
        0x4bt
        0x5ct
        0x51t
        0x54t
        0x59t
        0x1dt
        0x52t
        0x4ft
        0x54t
        0x58t
        0x53t
        0x49t
        0x5ct
        0x49t
        0x54t
        0x52t
        0x53t
    .end array-data
.end method


# virtual methods
.method public final A05()I
    .locals 2

    .line 11430
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:I

    const/high16 v0, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0B()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:I

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method public abstract A06()I
.end method

.method public abstract A07()I
.end method

.method public abstract A08()I
.end method

.method public abstract A09()I
.end method

.method public abstract A0A()I
.end method

.method public abstract A0B()I
.end method

.method public abstract A0C(Landroid/view/View;)I
.end method

.method public abstract A0D(Landroid/view/View;)I
.end method

.method public abstract A0E(Landroid/view/View;)I
.end method

.method public abstract A0F(Landroid/view/View;)I
.end method

.method public abstract A0G(Landroid/view/View;)I
.end method

.method public abstract A0H(Landroid/view/View;)I
.end method

.method public final A0I()V
    .locals 1

    .line 11431
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0B()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:I

    .line 11432
    return-void
.end method

.method public abstract A0J(I)V
.end method
