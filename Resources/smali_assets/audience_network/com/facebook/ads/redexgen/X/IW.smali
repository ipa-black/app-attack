.class public final Lcom/facebook/ads/redexgen/X/IW;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/IX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdEventBuilder"
.end annotation


# instance fields
.field public A00:D

.field public A01:Lcom/facebook/ads/redexgen/X/Ic;

.field public A02:Lcom/facebook/ads/redexgen/X/Id;

.field public A03:Ljava/lang/String;

.field public A04:Ljava/lang/String;

.field public A05:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A06:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(D)Lcom/facebook/ads/redexgen/X/IW;
    .locals 0

    .line 38625
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/IW;->A00:D

    .line 38626
    return-object p0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/Ic;)Lcom/facebook/ads/redexgen/X/IW;
    .locals 0

    .line 38627
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IW;->A01:Lcom/facebook/ads/redexgen/X/Ic;

    .line 38628
    return-object p0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/Id;)Lcom/facebook/ads/redexgen/X/IW;
    .locals 0

    .line 38629
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IW;->A02:Lcom/facebook/ads/redexgen/X/Id;

    .line 38630
    return-object p0
.end method

.method public final A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/IW;
    .locals 0

    .line 38631
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IW;->A03:Ljava/lang/String;

    .line 38632
    return-object p0
.end method

.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/IW;
    .locals 0

    .line 38633
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IW;->A04:Ljava/lang/String;

    .line 38634
    return-object p0
.end method

.method public final A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/IW;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/IW;"
        }
    .end annotation

    .line 38635
    .local p1, "mData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IW;->A05:Ljava/util/Map;

    .line 38636
    return-object p0
.end method

.method public final A06(Z)Lcom/facebook/ads/redexgen/X/IW;
    .locals 0

    .line 38637
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/IW;->A06:Z

    .line 38638
    return-object p0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/IX;
    .locals 10

    .line 38639
    new-instance v0, Lcom/facebook/ads/redexgen/X/IX;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IW;->A04:Ljava/lang/String;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/IW;->A00:D

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/IW;->A03:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/IW;->A05:Ljava/util/Map;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/IW;->A01:Lcom/facebook/ads/redexgen/X/Ic;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/IW;->A02:Lcom/facebook/ads/redexgen/X/Id;

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/IW;->A06:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/IX;-><init>(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Ic;Lcom/facebook/ads/redexgen/X/Id;Z)V

    return-object v0
.end method
