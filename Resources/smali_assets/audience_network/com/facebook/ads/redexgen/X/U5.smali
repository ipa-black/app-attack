.class public final Lcom/facebook/ads/redexgen/X/U5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/It;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/U1;->A02(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/It;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/U1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/U1;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V
    .locals 0

    .line 55932
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/U5;->A01:Lcom/facebook/ads/redexgen/X/U1;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/U5;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AEx()V
    .locals 2

    .line 55933
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/U5;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->setVolume(F)V

    .line 55934
    return-void
.end method

.method public final AF2(Lcom/facebook/ads/NativeAd;)V
    .locals 3

    .line 55935
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/U5;->A01:Lcom/facebook/ads/redexgen/X/U1;

    .line 55936
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tp;

    move-result-object v1

    .line 55937
    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U1;->A0G(Lcom/facebook/ads/redexgen/X/U1;Lcom/facebook/ads/redexgen/X/Tp;Lcom/facebook/ads/redexgen/X/Ir;)V

    .line 55938
    return-void
.end method

.method public final AFh()V
    .locals 1

    .line 55939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A01:Lcom/facebook/ads/redexgen/X/U1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U1;->A0F(Lcom/facebook/ads/redexgen/X/U1;)V

    .line 55940
    return-void
.end method
