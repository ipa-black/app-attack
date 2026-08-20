.class public final Lcom/facebook/ads/redexgen/X/GK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:[Lcom/facebook/ads/redexgen/X/GJ;


# direct methods
.method public varargs constructor <init>([Lcom/facebook/ads/redexgen/X/GJ;)V
    .locals 1

    .line 35054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35055
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GK;->A02:[Lcom/facebook/ads/redexgen/X/GJ;

    .line 35056
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GK;->A01:I

    .line 35057
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/GJ;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 35058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GK;->A02:[Lcom/facebook/ads/redexgen/X/GJ;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A01()[Lcom/facebook/ads/redexgen/X/GJ;
    .locals 1

    .line 35059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GK;->A02:[Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/GJ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/GJ;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35060
    if-ne p0, p1, :cond_0

    .line 35061
    const/4 v0, 0x1

    return v0

    .line 35062
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 35063
    .end local v0
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 35064
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/GK;

    .line 35065
    .local v0, "other":Lcom/facebook/ads/redexgen/X/GK;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GK;->A02:[Lcom/facebook/ads/redexgen/X/GJ;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/GK;->A02:[Lcom/facebook/ads/redexgen/X/GJ;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 35066
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    if-nez v0, :cond_0

    .line 35067
    const/16 v0, 0x11

    .line 35068
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GK;->A02:[Lcom/facebook/ads/redexgen/X/GJ;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 35069
    .end local v0    # "result":I
    .local v1, "result":I
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    .line 35070
    .end local v1    # "result":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    return v0
.end method
