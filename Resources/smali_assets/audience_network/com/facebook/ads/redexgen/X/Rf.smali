.class public final Lcom/facebook/ads/redexgen/X/Rf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/O3;


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

    .line 51222
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rf;->A00:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACu(I)V
    .locals 2

    .line 51223
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rf;->A00:Lcom/facebook/ads/redexgen/X/Rd;

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0G(Lcom/facebook/ads/redexgen/X/Rd;IZ)V

    .line 51224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rf;->A00:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0K(Lcom/facebook/ads/redexgen/X/Rd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rf;->A00:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0E(Lcom/facebook/ads/redexgen/X/Rd;)V

    .line 51226
    :goto_0
    return-void

    .line 51227
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rf;->A00:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Rd;->A0F(Lcom/facebook/ads/redexgen/X/Rd;I)V

    goto :goto_0
.end method
