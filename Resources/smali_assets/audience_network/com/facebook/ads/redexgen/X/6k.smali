.class public final Lcom/facebook/ads/redexgen/X/6k;
.super Lcom/facebook/ads/redexgen/X/Mt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Jq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jq;)V
    .locals 0

    .line 16032
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6k;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mt;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/NC;)V
    .locals 3

    .line 16033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6k;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jq;->A0C(Lcom/facebook/ads/redexgen/X/Jq;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16034
    return-void

    .line 16035
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6k;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jq;->A03(Lcom/facebook/ads/redexgen/X/Jq;)Lcom/facebook/ads/redexgen/X/PX;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/PX;->A03:Lcom/facebook/ads/redexgen/X/PX;

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6k;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jq;->A0D(Lcom/facebook/ads/redexgen/X/Jq;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16036
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6k;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Jq;->A04(Lcom/facebook/ads/redexgen/X/Jq;Lcom/facebook/ads/redexgen/X/PX;)Lcom/facebook/ads/redexgen/X/PX;

    .line 16037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6k;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jq;->A09(Lcom/facebook/ads/redexgen/X/Jq;)V

    .line 16038
    return-void

    .line 16039
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6k;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jq;->A0A(Lcom/facebook/ads/redexgen/X/Jq;II)V

    .line 16040
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 16041
    check-cast p1, Lcom/facebook/ads/redexgen/X/NC;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6k;->A00(Lcom/facebook/ads/redexgen/X/NC;)V

    return-void
.end method
