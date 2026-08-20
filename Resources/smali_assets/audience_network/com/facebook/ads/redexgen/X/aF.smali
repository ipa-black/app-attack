.class public final Lcom/facebook/ads/redexgen/X/aF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aA;->A0F(Lcom/facebook/ads/redexgen/X/JD;Lcom/facebook/ads/redexgen/X/8B;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/aA;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/aA;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/8B;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aA;ILcom/facebook/ads/redexgen/X/8B;Lcom/facebook/ads/redexgen/X/aA;)V
    .locals 0

    .line 71962
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aF;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aF;->A01:Lcom/facebook/ads/redexgen/X/aA;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/aF;->A03:Lcom/facebook/ads/redexgen/X/8B;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/aF;->A02:Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAD()V
    .locals 3

    .line 71963
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aF;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$1;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aF;->A01:Lcom/facebook/ads/redexgen/X/aA;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aF;->A03:Lcom/facebook/ads/redexgen/X/8B;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A0D(Lcom/facebook/ads/redexgen/X/aA;ILcom/facebook/ads/redexgen/X/8B;)V

    .line 71964
    return-void
.end method

.method public final AAE()V
    .locals 3

    .line 71965
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aF;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aF;->A01:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A00(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aF;->A02:Lcom/facebook/ads/redexgen/X/aA;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JA;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->ABP(Lcom/facebook/ads/redexgen/X/aA;Lcom/facebook/ads/redexgen/X/JA;)V

    .line 71966
    return-void
.end method
