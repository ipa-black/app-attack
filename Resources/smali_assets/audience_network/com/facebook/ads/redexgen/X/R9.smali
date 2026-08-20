.class public final Lcom/facebook/ads/redexgen/X/R9;
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
        "Lcom/facebook/ads/redexgen/X/Lx;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/75;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/75;)V
    .locals 0

    .line 50083
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8V;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Lx;)V
    .locals 3

    .line 50084
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/PT;->A0V()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PT;->A0V()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PT;->A0f(II)V

    .line 50085
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/Lx;",
            ">;"
        }
    .end annotation

    .line 50086
    const-class v0, Lcom/facebook/ads/redexgen/X/Lx;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 50087
    check-cast p1, Lcom/facebook/ads/redexgen/X/Lx;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R9;->A00(Lcom/facebook/ads/redexgen/X/Lx;)V

    return-void
.end method
