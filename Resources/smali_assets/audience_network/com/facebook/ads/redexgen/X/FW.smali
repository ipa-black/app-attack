.class public final Lcom/facebook/ads/redexgen/X/FW;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/FX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CueStyle"
.end annotation


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:Z


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 33050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33051
    iput p1, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    .line 33052
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:Z

    .line 33053
    iput p3, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    .line 33054
    return-void
.end method
