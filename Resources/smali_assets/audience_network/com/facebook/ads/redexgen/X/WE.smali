.class public final Lcom/facebook/ads/redexgen/X/WE;
.super Lcom/facebook/ads/redexgen/X/Bw;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerAtom"
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public final A00:J

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/WE;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/WD;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WE;->A05()V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 62387
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Bw;-><init>(I)V

    .line 62388
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:J

    .line 62389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A02:Ljava/util/List;

    .line 62390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A01:Ljava/util/List;

    .line 62391
    return-void
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WE;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WE;->A03:[B

    return-void

    :array_0
    .array-data 1
        0xct
        0x4ft
        0x43t
        0x42t
        0x58t
        0x4dt
        0x45t
        0x42t
        0x49t
        0x5et
        0x5ft
        0x16t
        0xct
        0x4ft
        0x3t
        0xat
        0xet
        0x19t
        0xat
        0x1ct
        0x55t
        0x4ft
    .end array-data
.end method


# virtual methods
.method public final A06(I)Lcom/facebook/ads/redexgen/X/WE;
    .locals 4

    .line 62392
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 62393
    .local v0, "childrenSize":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 62394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A01:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/WE;

    .line 62395
    .local v2, "atom":Lcom/facebook/ads/redexgen/X/WE;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    if-ne v0, p1, :cond_0

    .line 62396
    return-object v1

    .line 62397
    .end local v2    # "atom":Lcom/facebook/ads/redexgen/X/WE;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62398
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A07(I)Lcom/facebook/ads/redexgen/X/WD;
    .locals 4

    .line 62399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 62400
    .local v0, "childrenSize":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 62401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/WD;

    .line 62402
    .local v2, "atom":Lcom/facebook/ads/redexgen/X/WD;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    if-ne v0, p1, :cond_0

    .line 62403
    return-object v1

    .line 62404
    .end local v2    # "atom":Lcom/facebook/ads/redexgen/X/WD;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62405
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/WE;)V
    .locals 1

    .line 62406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A01:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62407
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/WD;)V
    .locals 1

    .line 62408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62409
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 62410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bw;->A02(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    const/16 v1, 0x9

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A02:Ljava/util/List;

    .line 62411
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A01:Ljava/util/List;

    .line 62412
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62413
    return-object v0
.end method
