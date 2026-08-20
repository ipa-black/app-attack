.class public final Lcom/facebook/ads/redexgen/X/E4;
.super Lcom/facebook/ads/redexgen/X/Mt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5R;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5R;)V
    .locals 0

    .line 29437
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/E4;->A00:Lcom/facebook/ads/redexgen/X/5R;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mt;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/NC;)V
    .locals 2

    .line 29438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E4;->A00:Lcom/facebook/ads/redexgen/X/5R;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5R;->A08:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 29439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E4;->A00:Lcom/facebook/ads/redexgen/X/5R;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5R;->A08:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tp;

    move-result-object v1

    .line 29440
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A1c(ZZ)V

    .line 29441
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E4;->A00:Lcom/facebook/ads/redexgen/X/5R;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5R;->A00(Lcom/facebook/ads/redexgen/X/5R;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onPlayed()V

    .line 29442
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 29443
    check-cast p1, Lcom/facebook/ads/redexgen/X/NC;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/E4;->A00(Lcom/facebook/ads/redexgen/X/NC;)V

    return-void
.end method
