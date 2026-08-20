.class public final Lcom/appodeal/ads/adapters/mraid/interstitial/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback<",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/unified/UnifiedInterstitialParams;

.field public final synthetic b:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

.field public final synthetic c:Lcom/appodeal/ads/adapters/mraid/interstitial/b;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/adapters/mraid/interstitial/b;Lcom/appodeal/ads/unified/UnifiedInterstitialParams;Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/adapters/mraid/interstitial/a;->c:Lcom/appodeal/ads/adapters/mraid/interstitial/b;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/mraid/interstitial/a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialParams;

    iput-object p3, p0, Lcom/appodeal/ads/adapters/mraid/interstitial/a;->b:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/adapters/mraid/interstitial/a;->b:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onSuccess(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/adapters/mraid/interstitial/a;->c:Lcom/appodeal/ads/adapters/mraid/interstitial/b;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/mraid/interstitial/a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialParams;

    iget-object v2, p0, Lcom/appodeal/ads/adapters/mraid/interstitial/a;->b:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidInterstitial;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedInterstitialParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;)V

    return-void
.end method
