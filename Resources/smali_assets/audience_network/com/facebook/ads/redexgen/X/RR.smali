.class public final Lcom/facebook/ads/redexgen/X/RR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/O1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7E;->A0E(Lcom/facebook/ads/redexgen/X/Rd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7E;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7E;)V
    .locals 0

    .line 50701
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RR;->A00:Lcom/facebook/ads/redexgen/X/7E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFj(I)V
    .locals 1

    .line 50702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RR;->A00:Lcom/facebook/ads/redexgen/X/7E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A06(Lcom/facebook/ads/redexgen/X/7E;)Lcom/facebook/ads/redexgen/X/NT;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RR;->A00:Lcom/facebook/ads/redexgen/X/7E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A06(Lcom/facebook/ads/redexgen/X/7E;)Lcom/facebook/ads/redexgen/X/NT;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NT;->A00(I)V

    .line 50704
    :cond_0
    return-void
.end method
