.class public final Lcom/facebook/ads/redexgen/X/VD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Eo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field public final A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/BR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/BR;I)V
    .locals 0

    .line 58502
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VD;->A01:Lcom/facebook/ads/redexgen/X/BR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58503
    iput p2, p0, Lcom/facebook/ads/redexgen/X/VD;->A00:I

    .line 58504
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/VD;)I
    .locals 0

    .line 58505
    iget p0, p0, Lcom/facebook/ads/redexgen/X/VD;->A00:I

    return p0
.end method


# virtual methods
.method public final A8r()Z
    .locals 2

    .line 58506
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VD;->A01:Lcom/facebook/ads/redexgen/X/BR;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VD;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BR;->A0S(I)Z

    move-result v0

    return v0
.end method

.method public final A9j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VD;->A01:Lcom/facebook/ads/redexgen/X/BR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BR;->A0Q()V

    .line 58508
    return-void
.end method

.method public final ADs(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/Wg;Z)I
    .locals 2

    .line 58509
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VD;->A01:Lcom/facebook/ads/redexgen/X/BR;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VD;->A00:I

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/BR;->A0P(ILcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/Wg;Z)I

    move-result v0

    return v0
.end method

.method public final AFI(J)I
    .locals 2

    .line 58510
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VD;->A01:Lcom/facebook/ads/redexgen/X/BR;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VD;->A00:I

    invoke-virtual {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/BR;->A0O(IJ)I

    move-result v0

    return v0
.end method
