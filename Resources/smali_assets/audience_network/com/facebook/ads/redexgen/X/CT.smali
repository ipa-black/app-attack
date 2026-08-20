.class public final Lcom/facebook/ads/redexgen/X/CT;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Vx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VorbisSetup"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/CV;

.field public final A02:Lcom/facebook/ads/redexgen/X/CX;

.field public final A03:[B

.field public final A04:[Lcom/facebook/ads/redexgen/X/CW;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CV;[B[Lcom/facebook/ads/redexgen/X/CW;I)V
    .locals 0

    .line 26032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26033
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CT;->A02:Lcom/facebook/ads/redexgen/X/CX;

    .line 26034
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/CT;->A01:Lcom/facebook/ads/redexgen/X/CV;

    .line 26035
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/CT;->A03:[B

    .line 26036
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/CT;->A04:[Lcom/facebook/ads/redexgen/X/CW;

    .line 26037
    iput p5, p0, Lcom/facebook/ads/redexgen/X/CT;->A00:I

    .line 26038
    return-void
.end method
