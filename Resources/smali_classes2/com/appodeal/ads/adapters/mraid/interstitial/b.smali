.class public final Lcom/appodeal/ads/adapters/mraid/interstitial/b;
.super Lcom/appodeal/ads/unified/mraid/UnifiedMraidInterstitial;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidInterstitial<",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Ljava/lang/String;)V
    .locals 1

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedInterstitialParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    .line 1
    new-instance v0, Lcom/appodeal/ads/adapters/mraid/interstitial/a;

    invoke-direct {v0, p0, p2, p4}, Lcom/appodeal/ads/adapters/mraid/interstitial/a;-><init>(Lcom/appodeal/ads/adapters/mraid/interstitial/b;Lcom/appodeal/ads/unified/UnifiedInterstitialParams;Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;)V

    invoke-static {p1, p5, p3, p4, v0}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->requestMraid(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;)V

    return-void
.end method
