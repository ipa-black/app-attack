.class public final Lcom/facebook/ads/redexgen/X/XS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/7k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AG7(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/7N;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/7N;",
            ")V"
        }
    .end annotation

    .line 66713
    .local p2, "staticEnvironmentData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7q;->A00()Lcom/facebook/ads/redexgen/X/7p;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7p;->AG7(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/7N;)V

    .line 66714
    return-void
.end method
