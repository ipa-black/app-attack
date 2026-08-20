.class public Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$builder;
.super Lcom/appodeal/ads/AdNetworkBuilder;
.source "IronSourceNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 325
    invoke-direct {p0}, Lcom/appodeal/ads/AdNetworkBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/appodeal/ads/AdNetwork;
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$builder;->build()Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;
    .locals 2

    .line 359
    new-instance v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;-><init>(Lcom/appodeal/ads/AdNetworkBuilder;Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$1;)V

    return-object v0
.end method

.method public getAdActivityRules()[Lcom/appodeal/ads/utils/ActivityRule;
    .locals 3

    const/4 v0, 0x3

    .line 339
    new-array v0, v0, [Lcom/appodeal/ads/utils/ActivityRule;

    new-instance v1, Lcom/appodeal/ads/utils/ActivityRule$Builder;

    const-string v2, "com.ironsource.sdk.controller.ControllerActivity"

    invoke-direct {v1, v2}, Lcom/appodeal/ads/utils/ActivityRule$Builder;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1}, Lcom/appodeal/ads/utils/ActivityRule$Builder;->build()Lcom/appodeal/ads/utils/ActivityRule;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/appodeal/ads/utils/ActivityRule$Builder;

    const-string v2, "com.ironsource.sdk.controller.InterstitialActivity"

    invoke-direct {v1, v2}, Lcom/appodeal/ads/utils/ActivityRule$Builder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v1}, Lcom/appodeal/ads/utils/ActivityRule$Builder;->build()Lcom/appodeal/ads/utils/ActivityRule;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/appodeal/ads/utils/ActivityRule$Builder;

    const-string v2, "com.ironsource.sdk.controller.OpenUrlActivity"

    invoke-direct {v1, v2}, Lcom/appodeal/ads/utils/ActivityRule$Builder;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v1}, Lcom/appodeal/ads/utils/ActivityRule$Builder;->build()Lcom/appodeal/ads/utils/ActivityRule;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    .line 334
    const-string v0, "21"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 329
    const-string v0, "ironsource"

    return-object v0
.end method

.method public getRequiredClasses()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 354
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.ironsource.mediationsdk.IronSource"

    aput-object v2, v0, v1

    return-object v0
.end method
