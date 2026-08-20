.class public abstract Lcom/facebook/ads/redexgen/X/Aq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseFactory"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Gi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22422
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gi;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gi;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A00:Lcom/facebook/ads/redexgen/X/Gi;

    .line 22423
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/Ub;
    .locals 1

    .line 22424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aq;->A00:Lcom/facebook/ads/redexgen/X/Gi;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Aq;->A01(Lcom/facebook/ads/redexgen/X/Gi;)Lcom/facebook/ads/redexgen/X/Ub;

    move-result-object v0

    return-object v0
.end method

.method public abstract A01(Lcom/facebook/ads/redexgen/X/Gi;)Lcom/facebook/ads/redexgen/X/Ub;
.end method

.method public final bridge synthetic A4H()Lcom/facebook/ads/redexgen/X/GX;
    .locals 1

    .line 22425
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Aq;->A00()Lcom/facebook/ads/redexgen/X/Ub;

    move-result-object v0

    return-object v0
.end method
