.class public final Lcom/facebook/ads/redexgen/X/QD;
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
        "Lcom/facebook/ads/redexgen/X/Kc;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/75;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/75;)V
    .locals 0

    .line 49575
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QD;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8V;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Kc;)V
    .locals 1

    .line 49576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QD;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PT;->A0a()V

    .line 49577
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/Kc;",
            ">;"
        }
    .end annotation

    .line 49578
    const-class v0, Lcom/facebook/ads/redexgen/X/Kc;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 49579
    check-cast p1, Lcom/facebook/ads/redexgen/X/Kc;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QD;->A00(Lcom/facebook/ads/redexgen/X/Kc;)V

    return-void
.end method
