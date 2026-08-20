.class public final Lcom/facebook/ads/redexgen/X/Rx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ru;->A0R(ILcom/facebook/ads/redexgen/X/K1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/K1;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Ru;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ru;ILcom/facebook/ads/redexgen/X/K1;)V
    .locals 0

    .line 51558
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rx;->A02:Lcom/facebook/ads/redexgen/X/Ru;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Rx;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Rx;->A01:Lcom/facebook/ads/redexgen/X/K1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAa()V
    .locals 1

    .line 51559
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rx;->A01:Lcom/facebook/ads/redexgen/X/K1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K1;->run()V

    .line 51560
    return-void
.end method

.method public final ACC(F)V
    .locals 3

    .line 51561
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rx;->A00:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    .line 51562
    .local v1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rx;->A02:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ru;->A07:Lcom/facebook/ads/redexgen/X/Li;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setProgress(F)V

    .line 51563
    return-void
.end method
