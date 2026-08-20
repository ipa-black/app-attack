.class public final Lcom/facebook/ads/redexgen/X/Uy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FR;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Fo;

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Fu;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Fp;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:[J


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Fo;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Fo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Fu;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Fp;",
            ">;)V"
        }
    .end annotation

    .line 58157
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/ttml/TtmlStyle;>;"
    .local p3, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/ttml/TtmlRegion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58158
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uy;->A00:Lcom/facebook/ads/redexgen/X/Fo;

    .line 58159
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Uy;->A02:Ljava/util/Map;

    .line 58160
    if-eqz p2, :cond_0

    .line 58161
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 58162
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A01:Ljava/util/Map;

    .line 58163
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Fo;->A0F()[J

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A03:[J

    .line 58164
    return-void

    .line 58165
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final A6H(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FQ;",
            ">;"
        }
    .end annotation

    .line 58166
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Uy;->A00:Lcom/facebook/ads/redexgen/X/Fo;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uy;->A01:Ljava/util/Map;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A02:Ljava/util/Map;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fo;->A0D(JLjava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A6i(I)J
    .locals 2

    .line 58167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A03:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final A6j()I
    .locals 1

    .line 58168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A03:[J

    array-length v0, v0

    return v0
.end method

.method public final A7A(J)I
    .locals 2

    .line 58169
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uy;->A03:[J

    const/4 v0, 0x0

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A0A([JJZZ)I

    move-result v1

    .line 58170
    .local v0, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A03:[J

    array-length v0, v0

    if-ge v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
