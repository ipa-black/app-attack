.class public final Lcom/facebook/ads/redexgen/X/Ci;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Vf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PesReader"
.end annotation


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/Cb;

.field public final A06:Lcom/facebook/ads/redexgen/X/Hb;

.field public final A07:Lcom/facebook/ads/redexgen/X/Ho;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cb;Lcom/facebook/ads/redexgen/X/Ho;)V
    .locals 2

    .line 26563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26564
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ci;->A05:Lcom/facebook/ads/redexgen/X/Cb;

    .line 26565
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ci;->A07:Lcom/facebook/ads/redexgen/X/Ho;

    .line 26566
    const/16 v0, 0x40

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    .line 26567
    return-void
.end method

.method private A00()V
    .locals 3

    .line 26568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 26569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A03:Z

    .line 26570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A02:Z

    .line 26571
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 26572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A00:I

    .line 26573
    return-void
.end method

.method private A01()V
    .locals 10

    .line 26574
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A01:J

    .line 26575
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A03:Z

    if-eqz v0, :cond_1

    .line 26576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 26577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    int-to-long v1, v0

    const/16 v9, 0x1e

    shl-long/2addr v1, v9

    .line 26578
    .local v3, "pts":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 26579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v3, v0

    or-long/2addr v1, v3

    .line 26580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 26581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    int-to-long v3, v0

    or-long/2addr v1, v3

    .line 26582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 26583
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A04:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A02:Z

    if-eqz v0, :cond_0

    .line 26584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 26585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    int-to-long v3, v0

    shl-long/2addr v3, v9

    .line 26586
    .local v0, "dts":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 26587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v5, v0

    or-long/2addr v3, v5

    .line 26588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 26589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    int-to-long v5, v0

    or-long/2addr v3, v5

    .line 26590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 26591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A07:Lcom/facebook/ads/redexgen/X/Ho;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Ho;->A07(J)J

    .line 26592
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Ci;->A04:Z

    .line 26593
    .end local v0    # "dts":J
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A07:Lcom/facebook/ads/redexgen/X/Ho;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ho;->A07(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A01:J

    .line 26594
    .end local v3    # "pts":J
    :cond_1
    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 26595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A04:Z

    .line 26596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A05:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cb;->AEb()V

    .line 26597
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Hc;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 26598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hb;->A00:[B

    const/4 v2, 0x0

    const/4 v0, 0x3

    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 26599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A07(I)V

    .line 26600
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ci;->A00()V

    .line 26601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hb;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A00:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 26602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A07(I)V

    .line 26603
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ci;->A01()V

    .line 26604
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ci;->A05:Lcom/facebook/ads/redexgen/X/Cb;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ci;->A01:J

    const/4 v0, 0x1

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Cb;->ADN(JZ)V

    .line 26605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A05:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Cb;->A4B(Lcom/facebook/ads/redexgen/X/Hc;)V

    .line 26606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A05:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cb;->ADM()V

    .line 26607
    return-void
.end method
