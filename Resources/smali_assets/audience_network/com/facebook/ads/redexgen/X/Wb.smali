.class public final Lcom/facebook/ads/redexgen/X/Wb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/ads/redexgen/X/BG;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/BE<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/BC;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/BC;)V
    .locals 1

    .line 63820
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Wb;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/ErrorStateDrmSession<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63821
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BC;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A00:Lcom/facebook/ads/redexgen/X/BC;

    .line 63822
    return-void
.end method


# virtual methods
.method public final A6f()Lcom/facebook/ads/redexgen/X/BC;
    .locals 1

    .line 63823
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Wb;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/ErrorStateDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A00:Lcom/facebook/ads/redexgen/X/BC;

    return-object v0
.end method

.method public final A75()Lcom/facebook/ads/redexgen/X/BG;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 63824
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Wb;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A7i()I
    .locals 1

    .line 63825
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Wb;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final ADl()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63826
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Wb;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
