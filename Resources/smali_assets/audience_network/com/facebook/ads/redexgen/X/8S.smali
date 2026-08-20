.class public final Lcom/facebook/ads/redexgen/X/8S;
.super Lcom/facebook/ads/redexgen/X/PO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/OE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/OE;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8S;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/OE;)V
    .locals 0

    .line 18879
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8S;->A00:Lcom/facebook/ads/redexgen/X/OE;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PO;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8S;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8S;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x14t
        0x20t
        0x1et
        0x21t
        0x1dt
        0x16t
        0x25t
        0x16t
        0x15t
    .end array-data
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/72;)V
    .locals 5

    .line 18880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8S;->A00:Lcom/facebook/ads/redexgen/X/OE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OE;->A0E(Lcom/facebook/ads/redexgen/X/OE;)V

    .line 18881
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8S;->A00:Lcom/facebook/ads/redexgen/X/OE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OE;->A00(Lcom/facebook/ads/redexgen/X/OE;)Lcom/facebook/ads/redexgen/X/OD;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8S;->A00:Lcom/facebook/ads/redexgen/X/OE;

    .line 18882
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/OE;->A01(Lcom/facebook/ads/redexgen/X/OE;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getDuration()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/OE;->A06(Lcom/facebook/ads/redexgen/X/OE;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 18883
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8S;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/OD;->AD0(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 18884
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 18885
    check-cast p1, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8S;->A02(Lcom/facebook/ads/redexgen/X/72;)V

    return-void
.end method
