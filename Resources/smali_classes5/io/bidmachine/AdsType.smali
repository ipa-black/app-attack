.class public final enum Lio/bidmachine/AdsType;
.super Ljava/lang/Enum;
.source "AdsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/AdsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/AdsType;

.field public static final enum Banner:Lio/bidmachine/AdsType;

.field public static final enum Interstitial:Lio/bidmachine/AdsType;

.field public static final enum Native:Lio/bidmachine/AdsType;

.field public static final enum Rewarded:Lio/bidmachine/AdsType;

.field public static final enum RichMedia:Lio/bidmachine/AdsType;


# instance fields
.field private final binder:Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

.field private final name:Ljava/lang/String;

.field private final networkConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

.field private final placementCreateExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 34
    new-instance v6, Lio/bidmachine/AdsType;

    new-instance v4, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    invoke-direct {v4}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    const/4 v7, 0x1

    new-array v5, v7, [Lio/bidmachine/displays/PlacementBuilder;

    new-instance v0, Lio/bidmachine/AdsType$1;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lio/bidmachine/AdsType$1;-><init>(Z)V

    aput-object v0, v5, v8

    const-string v1, "Banner"

    const/4 v2, 0x0

    const-string v3, "banner"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lio/bidmachine/displays/PlacementBuilder;)V

    sput-object v6, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    .line 45
    new-instance v0, Lio/bidmachine/AdsType;

    new-instance v13, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    invoke-direct {v13}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    const/4 v1, 0x2

    new-array v14, v1, [Lio/bidmachine/displays/PlacementBuilder;

    new-instance v2, Lio/bidmachine/displays/DisplayPlacementBuilder;

    invoke-direct {v2, v7}, Lio/bidmachine/displays/DisplayPlacementBuilder;-><init>(Z)V

    aput-object v2, v14, v8

    new-instance v2, Lio/bidmachine/displays/VideoPlacementBuilder;

    invoke-direct {v2, v7}, Lio/bidmachine/displays/VideoPlacementBuilder;-><init>(Z)V

    aput-object v2, v14, v7

    const-string v10, "Interstitial"

    const/4 v11, 0x1

    const-string v12, "interstitial"

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lio/bidmachine/displays/PlacementBuilder;)V

    sput-object v0, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    .line 50
    new-instance v2, Lio/bidmachine/AdsType;

    new-instance v19, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    invoke-direct/range {v19 .. v19}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    new-array v1, v1, [Lio/bidmachine/displays/PlacementBuilder;

    new-instance v3, Lio/bidmachine/displays/DisplayPlacementBuilder;

    invoke-direct {v3, v7}, Lio/bidmachine/displays/DisplayPlacementBuilder;-><init>(Z)V

    aput-object v3, v1, v8

    new-instance v3, Lio/bidmachine/displays/VideoPlacementBuilder;

    invoke-direct {v3, v8}, Lio/bidmachine/displays/VideoPlacementBuilder;-><init>(Z)V

    aput-object v3, v1, v7

    const-string v16, "Rewarded"

    const/16 v17, 0x2

    const-string v18, "rewarded"

    move-object v15, v2

    move-object/from16 v20, v1

    invoke-direct/range {v15 .. v20}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lio/bidmachine/displays/PlacementBuilder;)V

    sput-object v2, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    .line 55
    new-instance v1, Lio/bidmachine/AdsType;

    new-instance v13, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    invoke-direct {v13}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    new-array v14, v7, [Lio/bidmachine/displays/PlacementBuilder;

    new-instance v3, Lio/bidmachine/displays/NativePlacementBuilder;

    invoke-direct {v3}, Lio/bidmachine/displays/NativePlacementBuilder;-><init>()V

    aput-object v3, v14, v8

    const-string v10, "Native"

    const/4 v11, 0x3

    const-string v12, "native"

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lio/bidmachine/displays/PlacementBuilder;)V

    sput-object v1, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    .line 59
    new-instance v3, Lio/bidmachine/AdsType;

    new-instance v19, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    invoke-direct/range {v19 .. v19}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    new-array v4, v7, [Lio/bidmachine/displays/PlacementBuilder;

    new-instance v5, Lio/bidmachine/displays/VideoPlacementBuilder;

    invoke-direct {v5, v7}, Lio/bidmachine/displays/VideoPlacementBuilder;-><init>(Z)V

    aput-object v5, v4, v8

    const-string v16, "RichMedia"

    const/16 v17, 0x4

    const-string v18, "richmedia"

    move-object v15, v3

    move-object/from16 v20, v4

    invoke-direct/range {v15 .. v20}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lio/bidmachine/displays/PlacementBuilder;)V

    sput-object v3, Lio/bidmachine/AdsType;->RichMedia:Lio/bidmachine/AdsType;

    .line 32
    filled-new-array {v6, v0, v2, v1, v3}, [Lio/bidmachine/AdsType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/AdsType;->$VALUES:[Lio/bidmachine/AdsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lio/bidmachine/displays/PlacementBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;",
            "[",
            "Lio/bidmachine/displays/PlacementBuilder;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lio/bidmachine/AdsType;->name:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lio/bidmachine/AdsType;->binder:Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    .line 80
    iput-object p5, p0, Lio/bidmachine/AdsType;->placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdsType;->networkConfigs:Ljava/util/Map;

    .line 83
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    const/16 p2, 0x8

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 82
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AdsType;->placementCreateExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/AdsType;
    .locals 1

    .line 32
    const-class v0, Lio/bidmachine/AdsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/AdsType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/AdsType;
    .locals 1

    .line 32
    sget-object v0, Lio/bidmachine/AdsType;->$VALUES:[Lio/bidmachine/AdsType;

    invoke-virtual {v0}, [Lio/bidmachine/AdsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/AdsType;

    return-object v0
.end method


# virtual methods
.method addNetworkConfig(Ljava/lang/String;Lio/bidmachine/NetworkConfig;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lio/bidmachine/AdsType;->networkConfigs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method collectPlacements(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/unified/UnifiedAdRequestParams;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/AdRequest;",
            "Lio/bidmachine/unified/UnifiedAdRequestParams;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message$Builder;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v11, p0

    .line 149
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v1, v11, Lio/bidmachine/AdsType;->placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 150
    iget-object v12, v11, Lio/bidmachine/AdsType;->placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

    array-length v13, v12

    const/4 v1, 0x0

    move v14, v1

    :goto_0
    if-ge v14, v13, :cond_1

    aget-object v3, v12, v14

    move-object/from16 v15, p2

    .line 151
    invoke-virtual {v15, v3}, Lio/bidmachine/AdRequest;->isPlacementBuilderMatch(Lio/bidmachine/displays/PlacementBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v10, v11, Lio/bidmachine/AdsType;->placementCreateExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Lio/bidmachine/AdsType$2;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object v11, v9

    move-object/from16 v9, p5

    move-object/from16 v16, v12

    move-object v12, v10

    move-object v10, v0

    invoke-direct/range {v1 .. v10}, Lio/bidmachine/AdsType$2;-><init>(Lio/bidmachine/AdsType;Lio/bidmachine/displays/PlacementBuilder;Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Ljava/util/List;Ljava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v12, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    move-object/from16 v16, v12

    .line 173
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, v16

    goto :goto_0

    .line 177
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 179
    invoke-static {v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method createAdObjectParams(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;
    .locals 4

    .line 121
    iget-object v0, p0, Lio/bidmachine/AdsType;->placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 122
    invoke-virtual {v3, p1}, Lio/bidmachine/displays/PlacementBuilder;->createAdObjectParams(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method findNetworkAdapter(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/NetworkAdapter;
    .locals 2

    .line 103
    invoke-virtual {p0, p1}, Lio/bidmachine/AdsType;->obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 108
    sget-object v1, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    if-ne p0, v1, :cond_1

    .line 109
    const-string p1, "nast"

    invoke-static {p1}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    move-result-object v0

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    const-string p1, "mraid"

    invoke-static {p1}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    move-result-object v0

    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 113
    const-string p1, "vast"

    invoke-static {p1}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method getBinder()Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;
    .locals 1

    .line 93
    iget-object v0, p0, Lio/bidmachine/AdsType;->binder:Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/bidmachine/AdsType;->name:Ljava/lang/String;

    return-object v0
.end method

.method getNetworkConfigs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lio/bidmachine/AdsType;->networkConfigs:Ljava/util/Map;

    return-object v0
.end method

.method obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 4

    .line 132
    iget-object v0, p0, Lio/bidmachine/AdsType;->placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 133
    invoke-virtual {v3, p1}, Lio/bidmachine/displays/PlacementBuilder;->obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
