.class public final Lcom/facebook/ads/redexgen/X/R5;
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
        "Lcom/facebook/ads/redexgen/X/NC;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/75;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/75;)V
    .locals 0

    .line 50049
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8V;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/NC;)V
    .locals 2

    .line 50050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/75;->A0C(Lcom/facebook/ads/redexgen/X/75;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50051
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Lcom/facebook/ads/redexgen/X/75;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/75;->A0D(Lcom/facebook/ads/redexgen/X/75;Z)Z

    .line 50052
    return-void

    .line 50053
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PT;->A0X()V

    .line 50054
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/NC;",
            ">;"
        }
    .end annotation

    .line 50055
    const-class v0, Lcom/facebook/ads/redexgen/X/NC;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 50056
    check-cast p1, Lcom/facebook/ads/redexgen/X/NC;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R5;->A00(Lcom/facebook/ads/redexgen/X/NC;)V

    return-void
.end method
