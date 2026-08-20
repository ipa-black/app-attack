.class public final Lcom/facebook/ads/redexgen/X/4n;
.super Lcom/facebook/ads/redexgen/X/Mt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/JW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JW;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JW;)V
    .locals 0

    .line 12790
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4n;->A00:Lcom/facebook/ads/redexgen/X/JW;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mt;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/NC;)V
    .locals 2

    .line 12791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4n;->A00:Lcom/facebook/ads/redexgen/X/JW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JW;->A00(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12792
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4n;->A00:Lcom/facebook/ads/redexgen/X/JW;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JW;->A07(Z)V

    .line 12793
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 12794
    check-cast p1, Lcom/facebook/ads/redexgen/X/NC;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4n;->A00(Lcom/facebook/ads/redexgen/X/NC;)V

    return-void
.end method
