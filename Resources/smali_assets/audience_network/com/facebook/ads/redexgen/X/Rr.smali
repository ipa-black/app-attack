.class public final Lcom/facebook/ads/redexgen/X/Rr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rq;->A04()Lcom/facebook/ads/internal/view/FullScreenAdToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rq;)V
    .locals 0

    .line 51442
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rr;->A00:Lcom/facebook/ads/redexgen/X/Rq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAW()V
    .locals 3

    .line 51443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rr;->A00:Lcom/facebook/ads/redexgen/X/Rq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rq;->A02(Lcom/facebook/ads/redexgen/X/Rq;)Lcom/facebook/ads/redexgen/X/Ii;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ih;->A07:Lcom/facebook/ads/redexgen/X/Ih;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A04(Lcom/facebook/ads/redexgen/X/Ih;Ljava/util/Map;)V

    .line 51444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rr;->A00:Lcom/facebook/ads/redexgen/X/Rq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rq;->A0I(Lcom/facebook/ads/redexgen/X/Rq;)V

    .line 51445
    return-void
.end method
