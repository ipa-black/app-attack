.class public final Lcom/facebook/ads/redexgen/X/Rg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/O5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Rd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rd;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rd;)V
    .locals 0

    .line 51228
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVolume()F
    .locals 1

    .line 51229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:Lcom/facebook/ads/redexgen/X/Rd;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Rd;->A00:F

    return v0
.end method

.method public final setVolume(F)V
    .locals 1

    .line 51230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:Lcom/facebook/ads/redexgen/X/Rd;

    iput p1, v0, Lcom/facebook/ads/redexgen/X/Rd;->A00:F

    .line 51231
    return-void
.end method
