.class public final Lcom/facebook/ads/redexgen/X/OQ;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/GX;

.field public final A03:Landroid/net/Uri;

.field public final A04:Lcom/facebook/ads/redexgen/X/Xb;

.field public final A05:Lcom/facebook/ads/redexgen/X/GW;

.field public final A06:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xb;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/GW;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47346
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 47347
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OQ;->A04:Lcom/facebook/ads/redexgen/X/Xb;

    .line 47348
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/OQ;->A05:Lcom/facebook/ads/redexgen/X/GW;

    .line 47349
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/OQ;->A03:Landroid/net/Uri;

    .line 47350
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OQ;->A04:Lcom/facebook/ads/redexgen/X/Xb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A03:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Py;->A08(Lcom/facebook/ads/redexgen/X/Xb;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A06:Ljava/lang/String;

    .line 47351
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A00(I)V

    .line 47352
    return-void
.end method

.method private A00(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A02:Lcom/facebook/ads/redexgen/X/GX;

    if-eqz v0, :cond_0

    .line 47354
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GX;->close()V

    .line 47355
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A05:Lcom/facebook/ads/redexgen/X/GW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GW;->A4H()Lcom/facebook/ads/redexgen/X/GX;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A02:Lcom/facebook/ads/redexgen/X/GX;

    .line 47356
    new-instance v1, Lcom/facebook/ads/redexgen/X/Gb;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OQ;->A03:Landroid/net/Uri;

    int-to-long v3, p1

    const-wide/16 v5, -0x1

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/OQ;->A06:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Gb;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 47357
    .local v0, "dataSpec":Lcom/facebook/ads/redexgen/X/Gb;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A02:Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/GX;->ADF(Lcom/facebook/ads/redexgen/X/Gb;)J

    move-result-wide v1

    long-to-int v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A01:J

    .line 47358
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    .line 47359
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/OQ;->A01:J

    long-to-int v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A00:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A02:Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GX;->close()V

    .line 47361
    return-void
.end method

.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47362
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 47363
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/OQ;->read([B)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A02:Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/GX;->read([BII)I

    move-result v1

    .line 47365
    .local v0, "read":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A00:I

    .line 47366
    return v1
.end method

.method public final skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47367
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/OQ;->A01:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A00:I

    int-to-long v0, v0

    sub-long/2addr v3, v0

    .line 47368
    .local v0, "available":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    .line 47369
    return-wide v1

    .line 47370
    .local v2, "skipped":J
    :cond_0
    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 47371
    move-wide p1, v3

    .line 47372
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A00:I

    int-to-long v1, v0

    add-long/2addr v1, p1

    long-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A00:I

    .line 47373
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OQ;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A00(I)V

    .line 47374
    return-wide p1
.end method
