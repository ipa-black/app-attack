.class public final Lcom/facebook/ads/redexgen/X/XI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/7l;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/7N;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7N;)V
    .locals 0

    .line 66635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66636
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XI;->A00:Lcom/facebook/ads/redexgen/X/7N;

    .line 66637
    return-void
.end method


# virtual methods
.method public final A6e()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66638
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8N;->A00()Lcom/facebook/ads/redexgen/X/8N;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XI;->A00:Lcom/facebook/ads/redexgen/X/7N;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8N;->A02(Lcom/facebook/ads/redexgen/X/7N;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A8t()Z
    .locals 1

    .line 66639
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KV;->A04()Z

    move-result v0

    return v0
.end method
