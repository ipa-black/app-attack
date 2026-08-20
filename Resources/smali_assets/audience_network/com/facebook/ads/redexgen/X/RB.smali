.class public final Lcom/facebook/ads/redexgen/X/RB;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/RA;->A0a(Lcom/facebook/ads/redexgen/X/PF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/RA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 0

    .line 50313
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RB;->A00:Lcom/facebook/ads/redexgen/X/RA;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 50314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RB;->A00:Lcom/facebook/ads/redexgen/X/RA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RA;->A0D()Lcom/facebook/ads/redexgen/X/Ly;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8U;->A02(Lcom/facebook/ads/redexgen/X/8T;)V

    .line 50315
    return-void
.end method
