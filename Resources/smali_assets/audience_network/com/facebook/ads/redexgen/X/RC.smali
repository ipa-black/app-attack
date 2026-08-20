.class public final Lcom/facebook/ads/redexgen/X/RC;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/RA;->ACV(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/RA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RA;II)V
    .locals 0

    .line 50316
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RC;->A02:Lcom/facebook/ads/redexgen/X/RA;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/RC;->A00:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/RC;->A01:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 4

    .line 50317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RC;->A02:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RA;->A09(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/RC;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/RC;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/M0;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/M0;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/8U;->A02(Lcom/facebook/ads/redexgen/X/8T;)V

    .line 50318
    return-void
.end method
