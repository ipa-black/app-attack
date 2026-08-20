.class public final Lcom/appodeal/ads/m4;
.super Lcom/appodeal/ads/j1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/m4$a;,
        Lcom/appodeal/ads/m4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/j1<",
        "Lcom/appodeal/ads/n4;",
        "Lcom/appodeal/ads/unified/UnifiedRewarded;",
        "Lcom/appodeal/ads/unified/UnifiedRewardedParams;",
        "Lcom/appodeal/ads/unified/UnifiedRewardedCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/n4;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/j1;-><init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/AdNetwork;)Lcom/appodeal/ads/unified/UnifiedAd;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/appodeal/ads/AdNetwork;->createRewarded()Lcom/appodeal/ads/unified/UnifiedRewarded;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Lcom/appodeal/ads/unified/UnifiedAdParams;
    .locals 0

    .line 2
    new-instance p1, Lcom/appodeal/ads/m4$b;

    .line 3
    invoke-direct {p1}, Lcom/appodeal/ads/m4$b;-><init>()V

    return-object p1
.end method

.method public final c()Lcom/appodeal/ads/unified/UnifiedAdCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/appodeal/ads/m4$a;

    .line 2
    invoke-direct {v0, p0}, Lcom/appodeal/ads/m4$a;-><init>(Lcom/appodeal/ads/m4;)V

    return-object v0
.end method

.method public final l()Lcom/appodeal/ads/networking/LoadingError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/l;->b:Lcom/appodeal/ads/AdNetwork;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/AdNetwork;->isRewardedShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/networking/LoadingError;->Canceled:Lcom/appodeal/ads/networking/LoadingError;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
