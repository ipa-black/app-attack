.class public final Lcom/facebook/ads/redexgen/X/8q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberedRecordFile"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/8n;


# direct methods
.method public constructor <init>(ILcom/facebook/ads/redexgen/X/8n;)V
    .locals 0

    .line 19302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19303
    iput p1, p0, Lcom/facebook/ads/redexgen/X/8q;->A00:I

    .line 19304
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8q;->A01:Lcom/facebook/ads/redexgen/X/8n;

    .line 19305
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 19306
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A01:Lcom/facebook/ads/redexgen/X/8n;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8n;->A05()I

    move-result v0

    return v0
.end method

.method public final A02(I[BI[II)Lcom/facebook/ads/redexgen/X/8e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A01:Lcom/facebook/ads/redexgen/X/8n;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/8n;->A06(I[BI[II)Lcom/facebook/ads/redexgen/X/8e;

    move-result-object v0

    return-object v0
.end method

.method public final A03()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A01:Lcom/facebook/ads/redexgen/X/8n;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8n;->A07()V

    .line 19310
    return-void
.end method

.method public final A04()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A01:Lcom/facebook/ads/redexgen/X/8n;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8n;->A08()V

    .line 19312
    return-void
.end method

.method public final A05([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A01:Lcom/facebook/ads/redexgen/X/8n;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8n;->A09([B)Z

    move-result v0

    return v0
.end method
