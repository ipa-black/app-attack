.class public final Lcom/facebook/ads/redexgen/X/47;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/EC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveInfo"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/4r;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4r;IIII)V
    .locals 0

    .line 11030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11031
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/47;->A04:Lcom/facebook/ads/redexgen/X/4r;

    .line 11032
    iput p2, p0, Lcom/facebook/ads/redexgen/X/47;->A00:I

    .line 11033
    iput p3, p0, Lcom/facebook/ads/redexgen/X/47;->A01:I

    .line 11034
    iput p4, p0, Lcom/facebook/ads/redexgen/X/47;->A02:I

    .line 11035
    iput p5, p0, Lcom/facebook/ads/redexgen/X/47;->A03:I

    .line 11036
    return-void
.end method
