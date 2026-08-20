.class public final Lcom/appodeal/ads/p1;
.super Lcom/appodeal/ads/j1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/p1$a;,
        Lcom/appodeal/ads/p1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/j1<",
        "Lcom/appodeal/ads/r1;",
        "Lcom/appodeal/ads/unified/UnifiedInterstitial;",
        "Lcom/appodeal/ads/unified/UnifiedInterstitialParams;",
        "Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/r1;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/j1;-><init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/AdNetwork;)Lcom/appodeal/ads/unified/UnifiedAd;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/appodeal/ads/AdNetwork;->createInterstitial()Lcom/appodeal/ads/unified/UnifiedInterstitial;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Lcom/appodeal/ads/unified/UnifiedAdParams;
    .locals 0

    .line 2
    new-instance p1, Lcom/appodeal/ads/p1$b;

    .line 3
    invoke-direct {p1}, Lcom/appodeal/ads/p1$b;-><init>()V

    return-object p1
.end method

.method public final c()Lcom/appodeal/ads/unified/UnifiedAdCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/appodeal/ads/p1$a;

    .line 2
    invoke-direct {v0, p0}, Lcom/appodeal/ads/p1$a;-><init>(Lcom/appodeal/ads/p1;)V

    return-object v0
.end method

.method public final l()Lcom/appodeal/ads/networking/LoadingError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/l;->b:Lcom/appodeal/ads/AdNetwork;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/AdNetwork;->isInterstitialShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/networking/LoadingError;->Canceled:Lcom/appodeal/ads/networking/LoadingError;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
