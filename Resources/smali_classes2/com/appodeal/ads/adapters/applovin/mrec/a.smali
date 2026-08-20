.class public final Lcom/appodeal/ads/adapters/applovin/mrec/a;
.super Lcom/appodeal/ads/unified/UnifiedMrec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/applovin/mrec/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/UnifiedMrec<",
        "Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/applovin/adview/AppLovinAdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedMrec;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedMrecParams;

    check-cast p3, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    .line 1
    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Lcom/appodeal/ads/unified/UnifiedAdUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Lcom/appodeal/ads/unified/UnifiedAdUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p2, v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v0, Lcom/applovin/adview/AppLovinAdView;

    iget-object v1, p3, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object p3, p3, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;->zoneId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p3, p1}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/adapters/applovin/mrec/a;->a:Lcom/applovin/adview/AppLovinAdView;

    new-instance p1, Lcom/appodeal/ads/adapters/applovin/mrec/a$a;

    invoke-direct {p1, p4, v0}, Lcom/appodeal/ads/adapters/applovin/mrec/a$a;-><init>(Lcom/appodeal/ads/unified/UnifiedMrecCallback;Lcom/applovin/adview/AppLovinAdView;)V

    invoke-virtual {v0, p2}, Lcom/applovin/adview/AppLovinAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/appodeal/ads/adapters/applovin/mrec/a;->a:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {p2, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    iget-object p2, p0, Lcom/appodeal/ads/adapters/applovin/mrec/a;->a:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {p2, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    iget-object p1, p0, Lcom/appodeal/ads/adapters/applovin/mrec/a;->a:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {p1}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/adapters/applovin/mrec/a;->a:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/adapters/applovin/mrec/a;->a:Lcom/applovin/adview/AppLovinAdView;

    :cond_0
    return-void
.end method
