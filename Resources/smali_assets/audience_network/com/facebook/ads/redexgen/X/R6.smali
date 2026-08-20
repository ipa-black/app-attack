.class public final Lcom/facebook/ads/redexgen/X/R6;
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
        "Lcom/facebook/ads/redexgen/X/6z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/75;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/75;)V
    .locals 0

    .line 50057
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R6;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8V;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/6z;)V
    .locals 2

    .line 50058
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R6;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PP;->A00()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PT;->A0c(I)V

    .line 50059
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/6z;",
            ">;"
        }
    .end annotation

    .line 50060
    const-class v0, Lcom/facebook/ads/redexgen/X/6z;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 50061
    check-cast p1, Lcom/facebook/ads/redexgen/X/6z;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R6;->A00(Lcom/facebook/ads/redexgen/X/6z;)V

    return-void
.end method
