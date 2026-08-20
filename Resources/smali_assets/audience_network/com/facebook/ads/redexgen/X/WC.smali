.class public final Lcom/facebook/ads/redexgen/X/WC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/By;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/C1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StszSampleSizeBox"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/Hc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WD;)V
    .locals 2

    .line 62375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62376
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/WD;->A00:Lcom/facebook/ads/redexgen/X/Hc;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A02:Lcom/facebook/ads/redexgen/X/Hc;

    .line 62377
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WC;->A02:Lcom/facebook/ads/redexgen/X/Hc;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A02:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:I

    .line 62379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A02:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A01:I

    .line 62380
    return-void
.end method


# virtual methods
.method public final A7V()I
    .locals 1

    .line 62381
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A01:I

    return v0
.end method

.method public final A8j()Z
    .locals 1

    .line 62382
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADv()I
    .locals 1

    .line 62383
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A02:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v0

    :cond_0
    return v0
.end method
