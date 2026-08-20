.class public final Lcom/facebook/ads/redexgen/X/aw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotDelta"
.end annotation


# instance fields
.field public final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/b9;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/b9;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A00:Ljava/util/Map;

    .line 73160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A01:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/ax;)V
    .locals 0

    .line 73161
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aw;-><init>()V

    return-void
.end method

.method private A00()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/ads/redexgen/X/b9;",
            ">;"
        }
    .end annotation

    .line 73162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A01:Ljava/util/Set;

    return-object v0
.end method

.method private A01()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/ads/redexgen/X/b9;",
            ">;"
        }
    .end annotation

    .line 73163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/aw;)Ljava/util/Collection;
    .locals 0

    .line 73164
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aw;->A01()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/aw;)Ljava/util/Collection;
    .locals 0

    .line 73165
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aw;->A00()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private A04()V
    .locals 4

    .line 73166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 73167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A01:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/b9;

    .line 73168
    .local v1, "viewpointData":Lcom/facebook/ads/redexgen/X/b9;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aw;->A00:Ljava/util/Map;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/b9;->A04:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73169
    .end local v1    # "viewpointData":Lcom/facebook/ads/redexgen/X/b9;
    goto :goto_0

    .line 73170
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A01:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 73171
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/aw;)V
    .locals 0

    .line 73172
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aw;->A04()V

    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/b9;)Z
    .locals 2

    .line 73173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A01:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73174
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aw;->A00:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/b9;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73175
    const/4 v0, 0x1

    return v0

    .line 73176
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/aw;Lcom/facebook/ads/redexgen/X/b9;)Z
    .locals 0

    .line 73177
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/aw;->A06(Lcom/facebook/ads/redexgen/X/b9;)Z

    move-result p0

    return p0
.end method
