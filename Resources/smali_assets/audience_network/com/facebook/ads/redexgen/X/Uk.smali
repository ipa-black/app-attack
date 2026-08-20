.class public final Lcom/facebook/ads/redexgen/X/Uk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GW;


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Lcom/facebook/ads/redexgen/X/GW;

.field public final A02:Lcom/facebook/ads/redexgen/X/Gt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Gt<",
            "-",
            "Lcom/facebook/ads/redexgen/X/GX;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Gt;Lcom/facebook/ads/redexgen/X/GW;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Gt<",
            "-",
            "Lcom/facebook/ads/redexgen/X/GX;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/GW;",
            ")V"
        }
    .end annotation

    .line 57605
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Gt;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/DataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57606
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uk;->A00:Landroid/content/Context;

    .line 57607
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Uk;->A02:Lcom/facebook/ads/redexgen/X/Gt;

    .line 57608
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Uk;->A01:Lcom/facebook/ads/redexgen/X/GW;

    .line 57609
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Gt<",
            "-",
            "Lcom/facebook/ads/redexgen/X/GX;",
            ">;)V"
        }
    .end annotation

    .line 57610
    .local p3, "listener":Lcom/facebook/ads/redexgen/X/Gt;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/DataSource;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/2N;

    invoke-direct {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/2N;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gt;)V

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/Uk;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Gt;Lcom/facebook/ads/redexgen/X/GW;)V

    .line 57611
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/Ul;
    .locals 4

    .line 57612
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Uk;->A00:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Uk;->A02:Lcom/facebook/ads/redexgen/X/Gt;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uk;->A01:Lcom/facebook/ads/redexgen/X/GW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GW;->A4H()Lcom/facebook/ads/redexgen/X/GX;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ul;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ul;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Gt;Lcom/facebook/ads/redexgen/X/GX;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A4H()Lcom/facebook/ads/redexgen/X/GX;
    .locals 1

    .line 57613
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uk;->A00()Lcom/facebook/ads/redexgen/X/Ul;

    move-result-object v0

    return-object v0
.end method
