.class public Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$builder;
.super Lcom/appodeal/ads/AdNetworkBuilder;
.source "BidMachineNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/appodeal/ads/AdNetworkBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/appodeal/ads/AdNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$builder;->build()Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;
    .locals 2

    .line 2
    new-instance v0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;-><init>(Lcom/appodeal/ads/AdNetworkBuilder;Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;)V

    return-object v0
.end method

.method public getAdActivityRules()[Lcom/appodeal/ads/utils/ActivityRule;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/appodeal/ads/utils/ActivityRule;

    new-instance v1, Lcom/appodeal/ads/utils/ActivityRule$Builder;

    const-string v2, "io.bidmachine.nativead.view.VideoPlayerActivity"

    invoke-direct {v1, v2}, Lcom/appodeal/ads/utils/ActivityRule$Builder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Lcom/appodeal/ads/utils/ActivityRule$Builder;->build()Lcom/appodeal/ads/utils/ActivityRule;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/appodeal/ads/utils/ActivityRule$Builder;

    const-string v2, "com.explorestack.iab.mraid.MraidActivity"

    invoke-direct {v1, v2}, Lcom/appodeal/ads/utils/ActivityRule$Builder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Lcom/appodeal/ads/utils/ActivityRule$Builder;->build()Lcom/appodeal/ads/utils/ActivityRule;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/appodeal/ads/utils/ActivityRule$Builder;

    const-string v2, "com.explorestack.iab.vast.activity.VastActivity"

    invoke-direct {v1, v2}, Lcom/appodeal/ads/utils/ActivityRule$Builder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcom/appodeal/ads/utils/ActivityRule$Builder;->build()Lcom/appodeal/ads/utils/ActivityRule;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "0"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "bidmachine"

    return-object v0
.end method
