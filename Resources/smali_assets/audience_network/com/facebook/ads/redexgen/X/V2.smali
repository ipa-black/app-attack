.class public final Lcom/facebook/ads/redexgen/X/V2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FR;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FQ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FQ;",
            ">;)V"
        }
    .end annotation

    .line 58211
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58212
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V2;->A00:Ljava/util/List;

    .line 58213
    return-void
.end method


# virtual methods
.method public final A6H(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FQ;",
            ">;"
        }
    .end annotation

    .line 58214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A00:Ljava/util/List;

    return-object v0
.end method

.method public final A6i(I)J
    .locals 2

    .line 58215
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final A6j()I
    .locals 1

    .line 58216
    const/4 v0, 0x1

    return v0
.end method

.method public final A7A(J)I
    .locals 1

    .line 58217
    const/4 v0, -0x1

    return v0
.end method
