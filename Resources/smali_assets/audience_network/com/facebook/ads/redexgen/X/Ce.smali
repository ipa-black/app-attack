.class public final Lcom/facebook/ads/redexgen/X/Ce;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SliceHeaderData"
.end annotation


# static fields
.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:Lcom/facebook/ads/redexgen/X/HX;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 26321
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pHpyHP8S"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "m7Dm6DzF3JrYgJb8r3aBvOiHYZnTgqFt"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HDu7bLu972VfHIygI4M5b4TuY4lqC4yg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "iivH24vaI3kkb3LFmloVx1IOyWVuKza4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KZ0yf6ou6J0TqVPjqp3i5DSivFyU8bNM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Pc4fHgH2fAOt1gCYCPntkv807xx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lUKVzHZS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "o3UNUm1DzZwOBzkgZiuDkjMNM5U"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ce;->A0G:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Cd;)V
    .locals 0

    .line 26323
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ce;-><init>()V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Ce;)Z
    .locals 5

    .line 26324
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ce;->A0F:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Ce;->A0F:Z

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ce;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ce;->A03:I

    if-ne v1, v0, :cond_4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ce;->A07:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ce;->A07:I

    if-ne v1, v0, :cond_4

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ce;->A0C:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Ce;->A0C:Z

    if-ne v1, v0, :cond_4

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ce;->A0B:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ce;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ce;->A0G:[Ljava/lang/String;

    const-string v1, "XDMSMjR4OOJ5qpPgon6YqbblugR"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "5xZUmDJH2T0z2hm3Lt8QCiFJvrf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Ce;->A0B:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ce;->A0A:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Ce;->A0A:Z

    if-ne v1, v0, :cond_4

    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ce;->A05:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ce;->A05:I

    if-eq v1, v0, :cond_1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ce;->A09:Lcom/facebook/ads/redexgen/X/HX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HX;->A04:I

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ce;->A09:Lcom/facebook/ads/redexgen/X/HX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HX;->A04:I

    if-nez v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ce;->A06:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ce;->A06:I

    if-ne v1, v0, :cond_4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ce;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ce;->A02:I

    if-ne v1, v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ce;->A09:Lcom/facebook/ads/redexgen/X/HX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HX;->A04:I

    if-ne v0, v3, :cond_3

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ce;->A09:Lcom/facebook/ads/redexgen/X/HX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HX;->A04:I

    if-ne v0, v3, :cond_3

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Ce;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ce;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_5

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ce;->A00:I

    if-ne v4, v0, :cond_4

    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ce;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ce;->A01:I

    if-ne v1, v0, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ce;->A0E:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Ce;->A0E:Z

    if-ne v1, v0, :cond_4

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ce;->A04:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ce;->A04:I

    if-eq v1, v0, :cond_6

    :cond_4
    :goto_1
    return v3

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ce;->A0G:[Ljava/lang/String;

    const-string v1, "XRlTxrvrNP0CnKRouPcFPiOcqOY"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "BA8SrIsjDMc450dTESwcliSODCW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ce;->A00:I

    if-ne v4, v0, :cond_4

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ce;Lcom/facebook/ads/redexgen/X/Ce;)Z
    .locals 0

    .line 26325
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ce;->A00(Lcom/facebook/ads/redexgen/X/Ce;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 26326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ce;->A0D:Z

    .line 26327
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ce;->A0F:Z

    .line 26328
    return-void
.end method

.method public final A03(I)V
    .locals 1

    .line 26329
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ce;->A08:I

    .line 26330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ce;->A0D:Z

    .line 26331
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/HX;IIIIZZZZIIIII)V
    .locals 1

    .line 26332
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ce;->A09:Lcom/facebook/ads/redexgen/X/HX;

    .line 26333
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ce;->A05:I

    .line 26334
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ce;->A08:I

    .line 26335
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Ce;->A03:I

    .line 26336
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Ce;->A07:I

    .line 26337
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/Ce;->A0C:Z

    .line 26338
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/Ce;->A0B:Z

    .line 26339
    iput-boolean p8, p0, Lcom/facebook/ads/redexgen/X/Ce;->A0A:Z

    .line 26340
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/Ce;->A0E:Z

    .line 26341
    iput p10, p0, Lcom/facebook/ads/redexgen/X/Ce;->A04:I

    .line 26342
    iput p11, p0, Lcom/facebook/ads/redexgen/X/Ce;->A06:I

    .line 26343
    iput p12, p0, Lcom/facebook/ads/redexgen/X/Ce;->A02:I

    .line 26344
    iput p13, p0, Lcom/facebook/ads/redexgen/X/Ce;->A00:I

    .line 26345
    iput p14, p0, Lcom/facebook/ads/redexgen/X/Ce;->A01:I

    .line 26346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ce;->A0F:Z

    .line 26347
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ce;->A0D:Z

    .line 26348
    return-void
.end method

.method public final A05()Z
    .locals 2

    .line 26349
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ce;->A0D:Z

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ce;->A08:I

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
