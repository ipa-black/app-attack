.class public final synthetic Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;


# instance fields
.field public final synthetic f$0:Lcom/appodeal/ads/NetworkInitializationListener;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/applovin/sdk/AppLovinSdk;

.field public final synthetic f$3:Lcom/appodeal/ads/AdUnit;


# direct methods
.method public synthetic constructor <init>(Lcom/appodeal/ads/NetworkInitializationListener;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Lcom/appodeal/ads/AdUnit;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$$ExternalSyntheticLambda0;->f$0:Lcom/appodeal/ads/NetworkInitializationListener;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$$ExternalSyntheticLambda0;->f$2:Lcom/applovin/sdk/AppLovinSdk;

    iput-object p4, p0, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$$ExternalSyntheticLambda0;->f$3:Lcom/appodeal/ads/AdUnit;

    return-void
.end method


# virtual methods
.method public final onSdkInitialized(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$$ExternalSyntheticLambda0;->f$0:Lcom/appodeal/ads/NetworkInitializationListener;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$$ExternalSyntheticLambda0;->f$2:Lcom/applovin/sdk/AppLovinSdk;

    iget-object v3, p0, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$$ExternalSyntheticLambda0;->f$3:Lcom/appodeal/ads/AdUnit;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork;->lambda$initialize$0(Lcom/appodeal/ads/NetworkInitializationListener;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Lcom/appodeal/ads/AdUnit;Lcom/applovin/sdk/AppLovinSdkConfiguration;)V

    return-void
.end method
