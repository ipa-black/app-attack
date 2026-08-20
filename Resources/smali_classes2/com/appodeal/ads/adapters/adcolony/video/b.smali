.class public final Lcom/appodeal/ads/adapters/adcolony/video/b;
.super Lcom/adcolony/sdk/AdColonyInterstitialListener;
.source "SourceFile"


# instance fields
.field public final a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

.field public final b:Lcom/appodeal/ads/adapters/adcolony/video/a;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedVideoCallback;Lcom/appodeal/ads/adapters/adcolony/video/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/adcolony/video/b;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/adcolony/video/b;->b:Lcom/appodeal/ads/adapters/adcolony/video/a;

    return-void
.end method


# virtual methods
.method public final onClicked(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/adcolony/video/b;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdClicked()V

    return-void
.end method

.method public final onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/adcolony/video/b;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdClosed()V

    return-void
.end method

.method public final onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/adcolony/video/b;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdExpired()V

    return-void
.end method

.method public final onOpened(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/adcolony/video/b;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdShown()V

    return-void
.end method

.method public final onRequestFilled(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/adapters/adcolony/video/b;->b:Lcom/appodeal/ads/adapters/adcolony/video/a;

    iput-object p1, v0, Lcom/appodeal/ads/adapters/adcolony/video/a;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    iget-object p1, p0, Lcom/appodeal/ads/adapters/adcolony/video/b;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdLoaded()V

    return-void
.end method

.method public final onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/adapters/adcolony/video/b;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request not filled for zoneId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyZone;->getZoneID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isValid zone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyZone;->isValid()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->printError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/adapters/adcolony/video/b;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    sget-object v0, Lcom/appodeal/ads/networking/LoadingError;->NoFill:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method
