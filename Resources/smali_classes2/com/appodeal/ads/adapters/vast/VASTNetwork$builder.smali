.class public Lcom/appodeal/ads/adapters/vast/VASTNetwork$builder;
.super Lcom/appodeal/ads/AdNetworkBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/vast/VASTNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/AdNetworkBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/appodeal/ads/AdNetwork;
    .locals 1

    new-instance v0, Lcom/appodeal/ads/adapters/vast/VASTNetwork;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/adapters/vast/VASTNetwork;-><init>(Lcom/appodeal/ads/AdNetworkBuilder;)V

    return-object v0
.end method

.method public getAdActivityRules()[Lcom/appodeal/ads/utils/ActivityRule;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/appodeal/ads/utils/ActivityRule;

    new-instance v1, Lcom/appodeal/ads/utils/ActivityRule$Builder;

    const-string v2, "com.explorestack.iab.vast.activity.VastActivity"

    invoke-direct {v1, v2}, Lcom/appodeal/ads/utils/ActivityRule$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/appodeal/ads/utils/ActivityRule$Builder;->build()Lcom/appodeal/ads/utils/ActivityRule;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/appodeal/ads/utils/ActivityRule$Builder;

    const-string v2, "com.explorestack.iab.mraid.MraidActivity"

    invoke-direct {v1, v2}, Lcom/appodeal/ads/utils/ActivityRule$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/appodeal/ads/utils/ActivityRule$Builder;->build()Lcom/appodeal/ads/utils/ActivityRule;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "vast"

    return-object v0
.end method
