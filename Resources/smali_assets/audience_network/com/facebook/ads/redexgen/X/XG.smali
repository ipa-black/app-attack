.class public abstract Lcom/facebook/ads/redexgen/X/XG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/7Q;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/7N;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7N;)V
    .locals 0

    .line 66613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66614
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XG;->A00:Lcom/facebook/ads/redexgen/X/7N;

    .line 66615
    return-void
.end method


# virtual methods
.method public final A4W()Ljava/util/Map;
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

    .line 66616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A00:Lcom/facebook/ads/redexgen/X/7N;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8J;->A01(Lcom/facebook/ads/redexgen/X/7N;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A5k()Ljava/util/Map;
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

    .line 66617
    invoke-static {}, Lcom/facebook/ads/redexgen/X/81;->A02()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A6x()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 66618
    invoke-static {}, Lcom/facebook/ads/redexgen/X/81;->A00()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A6z()Ljava/lang/String;
    .locals 1

    .line 66619
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5y;->A00()Lcom/facebook/ads/redexgen/X/5w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5w;->A03()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A8k()Z
    .locals 1

    .line 66620
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KM;->A00()Lcom/facebook/ads/redexgen/X/KM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KM;->A03()Z

    move-result v0

    return v0
.end method
