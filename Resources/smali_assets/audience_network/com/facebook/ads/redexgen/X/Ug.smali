.class public final Lcom/facebook/ads/redexgen/X/Ug;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GW;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Gt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Gt<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Uh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57539
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ug;-><init>(Lcom/facebook/ads/redexgen/X/Gt;)V

    .line 57540
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Gt<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Uh;",
            ">;)V"
        }
    .end annotation

    .line 57541
    .local p1, "listener":Lcom/facebook/ads/redexgen/X/Gt;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/FileDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57542
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:Lcom/facebook/ads/redexgen/X/Gt;

    .line 57543
    return-void
.end method


# virtual methods
.method public final A4H()Lcom/facebook/ads/redexgen/X/GX;
    .locals 2

    .line 57544
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:Lcom/facebook/ads/redexgen/X/Gt;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Uh;-><init>(Lcom/facebook/ads/redexgen/X/Gt;)V

    return-object v0
.end method
