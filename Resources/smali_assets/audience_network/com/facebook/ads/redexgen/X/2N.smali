.class public final Lcom/facebook/ads/redexgen/X/2N;
.super Lcom/facebook/ads/redexgen/X/Aq;
.source ""


# instance fields
.field public final A00:I

.field public final A01:I

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

.field public final A03:Ljava/lang/String;

.field public final A04:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gt;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Gt<",
            "-",
            "Lcom/facebook/ads/redexgen/X/GX;",
            ">;)V"
        }
    .end annotation

    .line 5350
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Gt;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/DataSource;>;"
    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/2N;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gt;IIZ)V

    .line 5351
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gt;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Gt<",
            "-",
            "Lcom/facebook/ads/redexgen/X/GX;",
            ">;IIZ)V"
        }
    .end annotation

    .line 5352
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Gt;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/DataSource;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Aq;-><init>()V

    .line 5353
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2N;->A03:Ljava/lang/String;

    .line 5354
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2N;->A02:Lcom/facebook/ads/redexgen/X/Gt;

    .line 5355
    iput p3, p0, Lcom/facebook/ads/redexgen/X/2N;->A00:I

    .line 5356
    iput p4, p0, Lcom/facebook/ads/redexgen/X/2N;->A01:I

    .line 5357
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/2N;->A04:Z

    .line 5358
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Gi;)Lcom/facebook/ads/redexgen/X/As;
    .locals 8

    .line 5359
    new-instance v0, Lcom/facebook/ads/redexgen/X/As;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2N;->A03:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2N;->A02:Lcom/facebook/ads/redexgen/X/Gt;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/2N;->A00:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/2N;->A01:I

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/2N;->A04:Z

    const/4 v2, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/As;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/He;Lcom/facebook/ads/redexgen/X/Gt;IIZLcom/facebook/ads/redexgen/X/Gi;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A01(Lcom/facebook/ads/redexgen/X/Gi;)Lcom/facebook/ads/redexgen/X/Ub;
    .locals 1

    .line 5360
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2N;->A00(Lcom/facebook/ads/redexgen/X/Gi;)Lcom/facebook/ads/redexgen/X/As;

    move-result-object v0

    return-object v0
.end method
