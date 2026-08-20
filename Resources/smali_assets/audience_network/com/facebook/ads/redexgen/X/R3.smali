.class public final Lcom/facebook/ads/redexgen/X/R3;
.super Lcom/facebook/ads/redexgen/X/8V;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/75;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/8V<",
        "Lcom/facebook/ads/redexgen/X/72;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/75;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/75;)V
    .locals 0

    .line 50026
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R3;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8V;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/72;)V
    .locals 3

    .line 50027
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PP;->A00()I

    move-result v2

    .line 50028
    .local v0, "currentPosition":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/72;->A01()I

    move-result v1

    .line 50029
    .local v1, "duration":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A00:Lcom/facebook/ads/redexgen/X/75;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/75;->A00:I

    if-lez v0, :cond_0

    if-ne v2, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A00:Lcom/facebook/ads/redexgen/X/75;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/75;->A00:I

    if-le v1, v0, :cond_0

    .line 50030
    return-void

    .line 50031
    :cond_0
    add-int/lit16 v0, v2, 0x1f4

    if-ge v1, v0, :cond_2

    .line 50032
    if-nez v1, :cond_1

    .line 50033
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R3;->A00:Lcom/facebook/ads/redexgen/X/75;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/75;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PT;->A0d(I)V

    .line 50034
    :goto_0
    return-void

    .line 50035
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/PT;->A0d(I)V

    goto :goto_0

    .line 50036
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/PT;->A0d(I)V

    goto :goto_0
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/72;",
            ">;"
        }
    .end annotation

    .line 50037
    const-class v0, Lcom/facebook/ads/redexgen/X/72;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 50038
    check-cast p1, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R3;->A00(Lcom/facebook/ads/redexgen/X/72;)V

    return-void
.end method
