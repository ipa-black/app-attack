.class public final Lcom/facebook/ads/redexgen/X/ZZ;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Es;->A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8A;Lcom/facebook/ads/redexgen/X/88;Lcom/facebook/ads/redexgen/X/1q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/a9;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/1q;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Es;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Es;Lcom/facebook/ads/redexgen/X/1q;Lcom/facebook/ads/redexgen/X/a9;)V
    .locals 0

    .line 70731
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A02:Lcom/facebook/ads/redexgen/X/Es;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A01:Lcom/facebook/ads/redexgen/X/1q;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A00:Lcom/facebook/ads/redexgen/X/a9;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 4

    .line 70732
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A02:Lcom/facebook/ads/redexgen/X/Es;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A01:Lcom/facebook/ads/redexgen/X/1q;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0P(Lcom/facebook/ads/redexgen/X/1q;)V

    .line 70733
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A02:Lcom/facebook/ads/redexgen/X/Es;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A00:Lcom/facebook/ads/redexgen/X/a9;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0M(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 70734
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A02:Lcom/facebook/ads/redexgen/X/Es;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Za;->A00:Lcom/facebook/ads/redexgen/X/0n;

    .line 70735
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JA;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v3

    .line 70736
    .local v0, "error":Lcom/facebook/ads/redexgen/X/JA;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A02:Lcom/facebook/ads/redexgen/X/Es;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70737
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    .line 70738
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/JA;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/JA;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4c(ILjava/lang/String;)V

    .line 70739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZZ;->A02:Lcom/facebook/ads/redexgen/X/Es;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Za;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70740
    return-void
.end method
