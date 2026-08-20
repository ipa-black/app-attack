.class public final Lcom/facebook/ads/redexgen/X/DM;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/VO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Id3Header"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Z


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 27349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27350
    iput p1, p0, Lcom/facebook/ads/redexgen/X/DM;->A01:I

    .line 27351
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/DM;->A02:Z

    .line 27352
    iput p3, p0, Lcom/facebook/ads/redexgen/X/DM;->A00:I

    .line 27353
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/DM;)I
    .locals 0

    .line 27354
    iget p0, p0, Lcom/facebook/ads/redexgen/X/DM;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/DM;)I
    .locals 0

    .line 27355
    iget p0, p0, Lcom/facebook/ads/redexgen/X/DM;->A00:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/DM;)Z
    .locals 0

    .line 27356
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/DM;->A02:Z

    return p0
.end method
