.class public final Lcom/facebook/ads/redexgen/X/Vb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/VZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatReader"
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Hb;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/VZ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 59510
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "KDcVXuz53RpoF9UEOZ96l2VZuhVX9ip0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CKRJ1Pqx0SMvAzHTc14bPVY1Im6KLWKe"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CZRg2SIX1VWZgfyXTOdEl1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FcRR7mDk42dnDG0ym1pZJ2"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QPo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3iSkzhZlTwG2jcdx249ci8whKDsXKTKF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nuc6nRuUqT3GqwIih"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HhkYvD09GQfRAuSaGWngxJEfFHmtitdD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VZ;)V
    .locals 2

    .line 59511
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vb;->A01:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59512
    const/4 v0, 0x4

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:Lcom/facebook/ads/redexgen/X/Hb;

    .line 59513
    return-void
.end method


# virtual methods
.method public final A4B(Lcom/facebook/ads/redexgen/X/Hc;)V
    .locals 7

    .line 59514
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    .line 59515
    .local v0, "tableId":I
    if-eqz v0, :cond_0

    .line 59516
    return-void

    .line 59517
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 59518
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v6

    const/4 v5, 0x4

    div-int/2addr v6, v5

    .line 59519
    .local v1, "programCount":I
    const/4 v4, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 59520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {p1, v0, v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0a(Lcom/facebook/ads/redexgen/X/Hb;I)V

    .line 59521
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v2

    .line 59522
    .local v4, "programNumber":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59523
    const/16 v1, 0xd

    if-nez v2, :cond_1

    .line 59524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59525
    .end local v4    # "programNumber":I
    .end local v5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59526
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v3

    .line 59527
    .local v5, "pid":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A01:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A07(Lcom/facebook/ads/redexgen/X/VZ;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A01:Lcom/facebook/ads/redexgen/X/VZ;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Va;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Va;-><init>(Lcom/facebook/ads/redexgen/X/VZ;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ve;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ve;-><init>(Lcom/facebook/ads/redexgen/X/Cj;)V

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A01:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A01(Lcom/facebook/ads/redexgen/X/VZ;)I

    goto :goto_1

    .line 59529
    .end local v3    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A01:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A02(Lcom/facebook/ads/redexgen/X/VZ;)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vb;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A02:[Ljava/lang/String;

    const-string v1, "4awIAPS5zJKVkKN48BLjJX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "yyhTqQNSKamLuuIUjTGErW"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x2

    if-eq v3, v0, :cond_3

    .line 59530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A01:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A07(Lcom/facebook/ads/redexgen/X/VZ;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 59531
    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A8X(Lcom/facebook/ads/redexgen/X/Ho;Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V
    .locals 0

    .line 59532
    return-void
.end method
