.class public final Lcom/facebook/ads/redexgen/X/Ai;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/US;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/US;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/ads/redexgen/X/H1;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:J

.field public final A01:J

.field public final A02:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/facebook/ads/redexgen/X/H1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 22110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22111
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Ai;->A01:J

    .line 22112
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ai;->A02:Ljava/util/TreeSet;

    .line 22113
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/H1;Lcom/facebook/ads/redexgen/X/H1;)I
    .locals 5

    .line 22114
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/H1;->A00:J

    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/H1;->A00:J

    sub-long/2addr v3, v0

    .line 22115
    .local v0, "lastAccessTimestampDelta":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 22116
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/H1;->A00(Lcom/facebook/ads/redexgen/X/H1;)I

    move-result v0

    return v0

    .line 22117
    :cond_0
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/H1;->A00:J

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/H1;->A00:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Gx;J)V
    .locals 5

    .line 22118
    :catch_0
    :goto_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Ai;->A00:J

    add-long/2addr v3, p2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ai;->A01:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ai;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22119
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ai;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Gx;->AEF(Lcom/facebook/ads/redexgen/X/H1;)V

    goto :goto_0

    .line 22120
    :cond_0
    return-void
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Gv; {:try_start_0 .. :try_end_0} :catch_0
.end method


# virtual methods
.method public final ACc(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/H1;)V
    .locals 4

    .line 22121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ai;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 22122
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ai;->A00:J

    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/H1;->A01:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ai;->A00:J

    .line 22123
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Ai;->A01(Lcom/facebook/ads/redexgen/X/Gx;J)V

    .line 22124
    return-void
.end method

.method public final ACd(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/H1;)V
    .locals 4

    .line 22125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ai;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 22126
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ai;->A00:J

    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/H1;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ai;->A00:J

    .line 22127
    return-void
.end method

.method public final ACe(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/H1;Lcom/facebook/ads/redexgen/X/H1;)V
    .locals 0

    .line 22128
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ai;->ACd(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/H1;)V

    .line 22129
    invoke-virtual {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/Ai;->ACc(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/H1;)V

    .line 22130
    return-void
.end method

.method public final ACf(Lcom/facebook/ads/redexgen/X/Gx;Ljava/lang/String;JJ)V
    .locals 0

    .line 22131
    invoke-direct {p0, p1, p5, p6}, Lcom/facebook/ads/redexgen/X/Ai;->A01(Lcom/facebook/ads/redexgen/X/Gx;J)V

    .line 22132
    return-void
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 22133
    check-cast p1, Lcom/facebook/ads/redexgen/X/H1;

    check-cast p2, Lcom/facebook/ads/redexgen/X/H1;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ai;->A00(Lcom/facebook/ads/redexgen/X/H1;Lcom/facebook/ads/redexgen/X/H1;)I

    move-result v0

    return v0
.end method
