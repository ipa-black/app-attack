.class public final Lcom/facebook/ads/redexgen/X/1y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZK;->A0F(Lcom/facebook/ads/redexgen/X/0n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZK;)V
    .locals 0

    .line 4939
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1y;->A00:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 4940
    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 4941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1y;->A00:Lcom/facebook/ads/redexgen/X/ZK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZK;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZI;->A03(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1y;->A00:Lcom/facebook/ads/redexgen/X/ZK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZK;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZI;->A08(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/redexgen/X/20;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/20;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 4942
    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 4943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1y;->A00:Lcom/facebook/ads/redexgen/X/ZK;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ZK;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ZI;->A02(Lcom/facebook/ads/redexgen/X/ZI;Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAd;

    .line 4944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1y;->A00:Lcom/facebook/ads/redexgen/X/ZK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZK;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZI;->A04(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0r(Z)V

    .line 4945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1y;->A00:Lcom/facebook/ads/redexgen/X/ZK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZK;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZI;->A03(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1y;->A00:Lcom/facebook/ads/redexgen/X/ZK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZK;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZI;->A08(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/redexgen/X/20;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/20;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 4946
    return-void
.end method

.method public final onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 4947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1y;->A00:Lcom/facebook/ads/redexgen/X/ZK;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ZK;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ZI;->A0D(Lcom/facebook/ads/redexgen/X/ZI;Z)Z

    .line 4948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1y;->A00:Lcom/facebook/ads/redexgen/X/ZK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZK;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZI;->A06(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/redexgen/X/Es;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1y;->A00:Lcom/facebook/ads/redexgen/X/ZK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZK;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZI;->A06(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/redexgen/X/Es;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZM;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZM;-><init>(Lcom/facebook/ads/redexgen/X/1y;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0O(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 4950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1y;->A00:Lcom/facebook/ads/redexgen/X/ZK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZK;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZI;->A06(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/redexgen/X/Es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Za;->A0J()V

    .line 4951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1y;->A00:Lcom/facebook/ads/redexgen/X/ZK;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ZK;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ZI;->A07(Lcom/facebook/ads/redexgen/X/ZI;Lcom/facebook/ads/redexgen/X/Es;)Lcom/facebook/ads/redexgen/X/Es;

    .line 4952
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1y;->A00:Lcom/facebook/ads/redexgen/X/ZK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZK;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZI;->A03(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1y;->A00:Lcom/facebook/ads/redexgen/X/ZK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZK;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    .line 4953
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZI;->A08(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/redexgen/X/20;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/20;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    .line 4954
    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialDismissed(Lcom/facebook/ads/Ad;)V

    .line 4955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1y;->A00:Lcom/facebook/ads/redexgen/X/ZK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZK;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZI;->A09(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LD;->A05()V

    .line 4956
    return-void
.end method

.method public final onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 4957
    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 4958
    return-void
.end method
