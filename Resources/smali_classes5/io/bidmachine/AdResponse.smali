.class Lio/bidmachine/AdResponse;
.super Ljava/lang/Object;
.source "AdResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdResponse$ExpiredRunnable;,
        Lio/bidmachine/AdResponse$AdProcessCallbackComposite;
    }
.end annotation


# static fields
.field private static final DEF_EXPIRATION_TIME_SEC:J


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final ad:Lcom/explorestack/protobuf/adcom/Ad;

.field private final adCacheControl:Lio/bidmachine/protobuf/AdCacheControl;

.field final adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

.field private adObject:Lio/bidmachine/models/AdObject;

.field private final adRequestParameters:Lio/bidmachine/AdRequestParameters;

.field private final auctionResult:Lio/bidmachine/models/AuctionResult;

.field private final bidId:Ljava/lang/String;

.field private final createTimeMs:J

.field private final expirationTimeMs:J

.field private final expiredRunnable:Ljava/lang/Runnable;

.field final isExpireTrackerSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final networkAdUnitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final responseId:Ljava/lang/String;

.field private final seatBidExt:Lcom/explorestack/protobuf/Struct;

.field private volatile status:Lio/bidmachine/AdResponseStatus;

.field final trackUrlsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final trackingObject:Lio/bidmachine/TrackingObject;

.field final weakAdRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/AdRequest<",
            "***>;>;>;"
        }
    .end annotation
.end field

.field private final winnerNetworkAdUnit:Lio/bidmachine/NetworkAdUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1d

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lio/bidmachine/AdResponse;->DEF_EXPIRATION_TIME_SEC:J

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/AdRequestParameters;Ljava/util/List;Lcom/explorestack/protobuf/openrtb/Response;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/NetworkAdapter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequestParameters;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            "Lio/bidmachine/NetworkAdapter;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "AdResponse"

    invoke-static {v0, p0}, Lio/bidmachine/core/Utils;->generateTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/AdResponse;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/bidmachine/TrackEventType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lio/bidmachine/AdResponse;->trackUrlsMap:Ljava/util/Map;

    .line 64
    new-instance v0, Lio/bidmachine/AdResponse$ExpiredRunnable;

    invoke-direct {v0, p0}, Lio/bidmachine/AdResponse$ExpiredRunnable;-><init>(Lio/bidmachine/AdResponse;)V

    iput-object v0, p0, Lio/bidmachine/AdResponse;->expiredRunnable:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/AdResponse;->isExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/AdResponse;->isExpireTrackerSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/AdResponse;->weakAdRequestList:Ljava/util/List;

    .line 75
    sget-object v0, Lio/bidmachine/AdResponseStatus;->Idle:Lio/bidmachine/AdResponseStatus;

    iput-object v0, p0, Lio/bidmachine/AdResponse;->status:Lio/bidmachine/AdResponseStatus;

    .line 77
    new-instance v0, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    invoke-direct {v0, p0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;-><init>(Lio/bidmachine/AdResponse;)V

    iput-object v0, p0, Lio/bidmachine/AdResponse;->adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/AdResponse;->createTimeMs:J

    .line 91
    iput-object p1, p0, Lio/bidmachine/AdResponse;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 92
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/AdResponse;->networkAdUnitList:Ljava/util/List;

    .line 93
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/AdResponse;->responseId:Ljava/lang/String;

    .line 94
    invoke-virtual {p4}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/AdResponse;->seatBidExt:Lcom/explorestack/protobuf/Struct;

    .line 95
    invoke-virtual {p5}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/AdResponse;->bidId:Ljava/lang/String;

    .line 96
    iput-object p6, p0, Lio/bidmachine/AdResponse;->ad:Lcom/explorestack/protobuf/adcom/Ad;

    .line 97
    invoke-direct {p0, p6}, Lio/bidmachine/AdResponse;->findAdExtension(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/AdExtension;

    move-result-object p2

    .line 98
    new-instance p3, Lio/bidmachine/AuctionResultImpl;

    invoke-virtual {p1}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/AuctionResultImpl;-><init>(Lio/bidmachine/AdsType;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/protobuf/AdExtension;)V

    iput-object p3, p0, Lio/bidmachine/AdResponse;->auctionResult:Lio/bidmachine/models/AuctionResult;

    .line 104
    invoke-direct {p0, p2}, Lio/bidmachine/AdResponse;->findAdCacheControl(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdCacheControl;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AdResponse;->adCacheControl:Lio/bidmachine/protobuf/AdCacheControl;

    .line 105
    invoke-virtual {p5}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExp()I

    move-result p1

    int-to-long v0, p1

    .line 106
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExp()I

    move-result p1

    int-to-long v2, p1

    sget-wide v4, Lio/bidmachine/AdResponse;->DEF_EXPIRATION_TIME_SEC:J

    .line 105
    invoke-static/range {v0 .. v5}, Lio/bidmachine/core/Utils;->getOrDefault(JJJ)J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lio/bidmachine/AdResponse;->expirationTimeMs:J

    .line 108
    new-instance p1, Lio/bidmachine/AdResponse$1;

    invoke-interface {p3}, Lio/bidmachine/models/AuctionResult;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lio/bidmachine/AdResponse$1;-><init>(Lio/bidmachine/AdResponse;Ljava/lang/Object;)V

    iput-object p1, p0, Lio/bidmachine/AdResponse;->trackingObject:Lio/bidmachine/TrackingObject;

    .line 115
    invoke-direct {p0, p3, p7}, Lio/bidmachine/AdResponse;->findWinnerNetworkAdUnit(Lio/bidmachine/models/AuctionResult;Lio/bidmachine/NetworkAdapter;)Lio/bidmachine/NetworkAdUnit;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AdResponse;->winnerNetworkAdUnit:Lio/bidmachine/NetworkAdUnit;

    .line 117
    invoke-direct {p0, p5}, Lio/bidmachine/AdResponse;->extractTrackUrls(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)V

    .line 118
    invoke-direct {p0}, Lio/bidmachine/AdResponse;->subscribeExpireTracker()V

    return-void
.end method

.method static synthetic access$1000(Lio/bidmachine/AdResponse;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lio/bidmachine/AdResponse;->destroy()V

    return-void
.end method

.method static synthetic access$500(Lio/bidmachine/AdResponse;)Lio/bidmachine/models/AdObject;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/bidmachine/AdResponse;->adObject:Lio/bidmachine/models/AdObject;

    return-object p0
.end method

.method static synthetic access$502(Lio/bidmachine/AdResponse;Lio/bidmachine/models/AdObject;)Lio/bidmachine/models/AdObject;
    .locals 0

    .line 35
    iput-object p1, p0, Lio/bidmachine/AdResponse;->adObject:Lio/bidmachine/models/AdObject;

    return-object p1
.end method

.method static synthetic access$600(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/bidmachine/AdResponse;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lio/bidmachine/AdResponse;Lio/bidmachine/TrackEventType;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;)V

    return-void
.end method

.method static synthetic access$800(Lio/bidmachine/AdResponse;Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method static synthetic access$900(Lio/bidmachine/AdResponse;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lio/bidmachine/AdResponse;->unsubscribeExpireTracker()V

    return-void
.end method

.method private canBeUsedInFuture()Z
    .locals 1

    .line 383
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->wasShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private destroy()V
    .locals 3

    .line 320
    iget-object v0, p0, Lio/bidmachine/AdResponse;->TAG:Ljava/lang/String;

    const-string v1, "destroy - %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lio/bidmachine/AdResponseManager;->get()Lio/bidmachine/AdResponseManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/AdResponseManager;->remove(Lio/bidmachine/AdResponse;)V

    .line 324
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->clearAdRequestList()V

    .line 325
    invoke-direct {p0}, Lio/bidmachine/AdResponse;->unsubscribeExpireTracker()V

    .line 326
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    invoke-static {v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->access$300(Lio/bidmachine/AdResponse$AdProcessCallbackComposite;)V

    .line 327
    iget-object v0, p0, Lio/bidmachine/AdResponse;->trackUrlsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 328
    invoke-direct {p0}, Lio/bidmachine/AdResponse;->notifyNetworkClearAuction()V

    .line 330
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    invoke-static {v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->access$400(Lio/bidmachine/AdResponse$AdProcessCallbackComposite;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    sget-object v1, Lio/bidmachine/utils/BMError;->Destroyed:Lio/bidmachine/utils/BMError;

    invoke-direct {p0, v0, v1}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adObject:Lio/bidmachine/models/AdObject;

    if-eqz v0, :cond_1

    .line 334
    sget-object v0, Lio/bidmachine/TrackEventType;->Destroy:Lio/bidmachine/TrackEventType;

    invoke-direct {p0, v0}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;)V

    .line 336
    :cond_1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->trackingObject:Lio/bidmachine/TrackingObject;

    invoke-static {v0}, Lio/bidmachine/BidMachineEvents;->clear(Lio/bidmachine/TrackingObject;)V

    .line 338
    new-instance v0, Lio/bidmachine/AdResponse$2;

    invoke-direct {v0, p0}, Lio/bidmachine/AdResponse$2;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private eventFinish(Lio/bidmachine/TrackEventType;)V
    .locals 1

    const/4 v0, 0x0

    .line 489
    invoke-direct {p0, p1, v0}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method private eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V
    .locals 2

    .line 493
    iget-object v0, p0, Lio/bidmachine/AdResponse;->trackingObject:Lio/bidmachine/TrackingObject;

    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method private extractTrackUrls(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)V
    .locals 3

    .line 471
    iget-object v0, p0, Lio/bidmachine/AdResponse;->trackUrlsMap:Ljava/util/Map;

    sget-object v1, Lio/bidmachine/TrackEventType;->MediationWin:Lio/bidmachine/TrackEventType;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPurl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/bidmachine/OrtbUtils;->addEvent(Ljava/util/Map;Lio/bidmachine/TrackEventType;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lio/bidmachine/AdResponse;->trackUrlsMap:Ljava/util/Map;

    sget-object v1, Lio/bidmachine/TrackEventType;->MediationLoss:Lio/bidmachine/TrackEventType;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getLurl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/bidmachine/OrtbUtils;->addEvent(Ljava/util/Map;Lio/bidmachine/TrackEventType;Ljava/lang/String;)V

    return-void
.end method

.method private findAdCacheControl(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdCacheControl;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 430
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getAdCacheControl()Lio/bidmachine/protobuf/AdCacheControl;

    move-result-object p1

    .line 431
    sget-object v1, Lio/bidmachine/protobuf/AdCacheControl;->UNRECOGNIZED:Lio/bidmachine/protobuf/AdCacheControl;

    if-eq p1, v1, :cond_1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private findAdExtension(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/AdExtension;
    .locals 4

    .line 409
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProtoCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 413
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProto(I)Lcom/explorestack/protobuf/Any;

    move-result-object v2

    .line 414
    const-class v3, Lio/bidmachine/protobuf/AdExtension;

    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/Any;->is(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    const-class v3, Lio/bidmachine/protobuf/AdExtension;

    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/AdExtension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v2

    .line 418
    invoke-static {v2}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private findWinnerNetworkAdUnit(Lio/bidmachine/models/AuctionResult;Lio/bidmachine/NetworkAdapter;)Lio/bidmachine/NetworkAdUnit;
    .locals 5

    .line 441
    invoke-interface {p1}, Lio/bidmachine/models/AuctionResult;->getNetworkParams()Ljava/util/Map;

    move-result-object p1

    .line 442
    const-string v0, "bm_ad_unit_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 443
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 444
    iget-object v1, p0, Lio/bidmachine/AdResponse;->networkAdUnitList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/NetworkAdUnit;

    .line 445
    invoke-virtual {v3}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 451
    new-instance v2, Lio/bidmachine/NetworkAdUnit;

    invoke-direct {v2, p2, p1}, Lio/bidmachine/NetworkAdUnit;-><init>(Lio/bidmachine/NetworkAdapter;Ljava/util/Map;)V

    .line 452
    iget-object p1, p0, Lio/bidmachine/AdResponse;->networkAdUnitList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v2
.end method

.method private notifyNetworkClearAuction()V
    .locals 3

    .line 458
    iget-object v0, p0, Lio/bidmachine/AdResponse;->networkAdUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdResponse;->networkAdUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/NetworkAdUnit;

    .line 463
    :try_start_0
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdUnit;->getNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/bidmachine/NetworkAdapter;->clearAuction(Lio/bidmachine/NetworkAdUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 467
    :cond_1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->networkAdUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private release()V
    .locals 3

    .line 387
    iget-object v0, p0, Lio/bidmachine/AdResponse;->TAG:Ljava/lang/String;

    const-string v1, "release - %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-static {}, Lio/bidmachine/AdResponseManager;->get()Lio/bidmachine/AdResponseManager;

    move-result-object v0

    .line 390
    invoke-direct {p0}, Lio/bidmachine/AdResponse;->canBeUsedInFuture()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lio/bidmachine/AdResponseManager;->contains(Lio/bidmachine/AdResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->clearAdRequestList()V

    .line 392
    sget-object v0, Lio/bidmachine/AdResponseStatus;->Idle:Lio/bidmachine/AdResponseStatus;

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponse;->setStatus(Lio/bidmachine/AdResponseStatus;)V

    .line 393
    new-instance v0, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/bidmachine/AdResponse$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 403
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/AdResponse;->destroy()V

    :goto_0
    return-void
.end method

.method private subscribeExpireTracker()V
    .locals 4

    .line 476
    iget-object v0, p0, Lio/bidmachine/AdResponse;->isExpireTrackerSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lio/bidmachine/AdResponse;->expirationTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdResponse;->isExpireTrackerSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 480
    iget-object v0, p0, Lio/bidmachine/AdResponse;->expiredRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lio/bidmachine/AdResponse;->expirationTimeMs:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private unsubscribeExpireTracker()V
    .locals 2

    .line 484
    iget-object v0, p0, Lio/bidmachine/AdResponse;->isExpireTrackerSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 485
    iget-object v0, p0, Lio/bidmachine/AdResponse;->expiredRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/bidmachine/core/Utils;->cancelBackgroundThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public attachAdRequest(Lio/bidmachine/AdRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest<",
            "***>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdResponse;->TAG:Ljava/lang/String;

    const-string v1, "attachRequest - %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lio/bidmachine/AdResponse;->weakAdRequestList:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public calculateExpirationLeftMs()J
    .locals 6

    .line 154
    iget-wide v0, p0, Lio/bidmachine/AdResponse;->expirationTimeMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lio/bidmachine/AdResponse;->createTimeMs:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public canCache()Z
    .locals 2

    .line 150
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adCacheControl:Lio/bidmachine/protobuf/AdCacheControl;

    sget-object v1, Lio/bidmachine/protobuf/AdCacheControl;->AD_CACHE_CONTROL_ENABLED:Lio/bidmachine/protobuf/AdCacheControl;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method clearAdRequestList()V
    .locals 2

    .line 376
    iget-object v0, p0, Lio/bidmachine/AdResponse;->weakAdRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 377
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdResponse;->weakAdRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method createBidCacheExtensionValue()Lcom/explorestack/protobuf/Value;
    .locals 4

    .line 291
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 293
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/AdResponse;->auctionResult:Lio/bidmachine/models/AuctionResult;

    .line 294
    invoke-interface {v2}, Lio/bidmachine/models/AuctionResult;->getPrice()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 295
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    .line 292
    const-string v2, "price"

    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 297
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 298
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->calculateExpirationLeftMs()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    .line 296
    const-string v2, "exp"

    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 301
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/AdResponse;->responseId:Ljava/lang/String;

    .line 302
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    .line 300
    const-string v2, "request_id"

    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 305
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/AdResponse;->bidId:Ljava/lang/String;

    .line 306
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    .line 304
    const-string v2, "bid_id"

    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lio/bidmachine/AdResponse;->seatBidExt:Lcom/explorestack/protobuf/Struct;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->getFieldsCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 310
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/AdResponse;->seatBidExt:Lcom/explorestack/protobuf/Struct;

    .line 311
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    .line 309
    const-string v2, "seat"

    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 314
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 315
    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/Value$Builder;->setStructValue(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public detachAdRequest(Lio/bidmachine/AdRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest<",
            "***>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdResponse;->TAG:Ljava/lang/String;

    const-string v1, "detachRequest - %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget-object v1, p0, Lio/bidmachine/AdResponse;->weakAdRequestList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 209
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/AdRequest;

    if-eqz v3, :cond_2

    if-ne v3, p1, :cond_1

    .line 211
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_3
    iget-object p1, p0, Lio/bidmachine/AdResponse;->weakAdRequestList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 216
    iget-object p1, p0, Lio/bidmachine/AdResponse;->weakAdRequestList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 217
    invoke-direct {p0}, Lio/bidmachine/AdResponse;->release()V

    :cond_4
    return-void
.end method

.method expireAdRequests(Lio/bidmachine/AdRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest<",
            "***>;)V"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lio/bidmachine/AdResponse;->weakAdRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 368
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/AdRequest;

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 370
    invoke-virtual {v1}, Lio/bidmachine/AdRequest;->processExpired()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAd()Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1

    .line 133
    iget-object v0, p0, Lio/bidmachine/AdResponse;->ad:Lcom/explorestack/protobuf/adcom/Ad;

    return-object v0
.end method

.method public declared-synchronized getAdObject()Lio/bidmachine/models/AdObject;
    .locals 1

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adObject:Lio/bidmachine/models/AdObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .locals 1

    .line 123
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    return-object v0
.end method

.method public getAdsType()Lio/bidmachine/AdsType;
    .locals 1

    .line 128
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    invoke-virtual {v0}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v0

    return-object v0
.end method

.method public getAuctionResult()Lio/bidmachine/models/AuctionResult;
    .locals 1

    .line 138
    iget-object v0, p0, Lio/bidmachine/AdResponse;->auctionResult:Lio/bidmachine/models/AuctionResult;

    return-object v0
.end method

.method public getCreativeFormat()Lio/bidmachine/CreativeFormat;
    .locals 1

    .line 146
    iget-object v0, p0, Lio/bidmachine/AdResponse;->auctionResult:Lio/bidmachine/models/AuctionResult;

    invoke-interface {v0}, Lio/bidmachine/models/AuctionResult;->getCreativeFormat()Lio/bidmachine/CreativeFormat;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 142
    iget-object v0, p0, Lio/bidmachine/AdResponse;->auctionResult:Lio/bidmachine/models/AuctionResult;

    invoke-interface {v0}, Lio/bidmachine/models/AuctionResult;->getPrice()D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getStatus()Lio/bidmachine/AdResponseStatus;
    .locals 1

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/AdResponse;->status:Lio/bidmachine/AdResponseStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTrackUrlListByEvent(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lio/bidmachine/AdResponse;->trackUrlsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getTrackUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adObject:Lio/bidmachine/models/AdObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->getParams()Lio/bidmachine/models/AdObjectParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0, p1}, Lio/bidmachine/models/AdObjectParams;->getTrackUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getWinnerNetworkAdUnit()Lio/bidmachine/NetworkAdUnit;
    .locals 1

    .line 159
    iget-object v0, p0, Lio/bidmachine/AdResponse;->winnerNetworkAdUnit:Lio/bidmachine/NetworkAdUnit;

    return-object v0
.end method

.method public isAdLoaded()Z
    .locals 1

    .line 279
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adObject:Lio/bidmachine/models/AdObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/bidmachine/AdResponse;->adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    invoke-static {v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->access$100(Lio/bidmachine/AdResponse$AdProcessCallbackComposite;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExpired()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lio/bidmachine/AdResponse;->isExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$release$0$io-bidmachine-AdResponse()V
    .locals 1

    .line 395
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adObject:Lio/bidmachine/models/AdObject;

    if-eqz v0, :cond_0

    .line 396
    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->hide()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 399
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized loadAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/BidMachineAd;Lio/bidmachine/AdProcessCallback;)V
    .locals 7

    monitor-enter p0

    .line 225
    :try_start_0
    invoke-virtual {p0, p2}, Lio/bidmachine/AdResponse;->onAdLoadStart(Lio/bidmachine/AdRequest;)V

    .line 226
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-interface {p4}, Lio/bidmachine/AdProcessCallback;->processLoadSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 228
    monitor-exit p0

    return-void

    .line 230
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    invoke-virtual {v0, p4}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->appendCallback(Lio/bidmachine/AdProcessCallback;)V

    .line 231
    iget-object p4, p0, Lio/bidmachine/AdResponse;->adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    invoke-static {p4}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->access$000(Lio/bidmachine/AdResponse$AdProcessCallbackComposite;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p4

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p4, :cond_1

    .line 232
    monitor-exit p0

    return-void

    .line 235
    :cond_1
    :try_start_2
    iget-object p4, p0, Lio/bidmachine/AdResponse;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v0, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    invoke-static {p4, v0}, Lio/bidmachine/BidMachineEvents;->eventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)V

    .line 236
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->isExpired()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 237
    iget-object p1, p0, Lio/bidmachine/AdResponse;->adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    sget-object p2, Lio/bidmachine/utils/BMError;->ResponseExpired:Lio/bidmachine/utils/BMError;

    invoke-virtual {p1, p2}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->processLoadFail(Lio/bidmachine/utils/BMError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 238
    monitor-exit p0

    return-void

    .line 240
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lio/bidmachine/AdResponse;->wasShown()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 241
    iget-object p1, p0, Lio/bidmachine/AdResponse;->adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    sget-object p2, Lio/bidmachine/utils/BMError;->ResponseDuplicated:Lio/bidmachine/utils/BMError;

    invoke-virtual {p1, p2}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->processLoadFail(Lio/bidmachine/utils/BMError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    monitor-exit p0

    return-void

    .line 245
    :cond_3
    :try_start_4
    invoke-virtual {p2}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object p4

    iget-object v0, p0, Lio/bidmachine/AdResponse;->ad:Lcom/explorestack/protobuf/adcom/Ad;

    invoke-virtual {p4, v0}, Lio/bidmachine/AdsType;->findNetworkAdapter(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/NetworkAdapter;

    move-result-object v4

    if-nez v4, :cond_4

    .line 247
    iget-object p1, p0, Lio/bidmachine/AdResponse;->adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    const-string p2, "Failed to get adapter by response"

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->processLoadFail(Lio/bidmachine/utils/BMError;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 250
    :cond_4
    :try_start_5
    invoke-virtual {p2}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object p4

    iget-object v0, p0, Lio/bidmachine/AdResponse;->ad:Lcom/explorestack/protobuf/adcom/Ad;

    invoke-virtual {p4, v0}, Lio/bidmachine/AdsType;->createAdObjectParams(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 251
    invoke-virtual {v5}, Lio/bidmachine/models/AdObjectParams;->isValid()Z

    move-result p4

    if-nez p4, :cond_5

    goto :goto_0

    .line 255
    :cond_5
    iget-object v6, p0, Lio/bidmachine/AdResponse;->adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/BidMachineAd;->createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/models/AdObject;

    move-result-object p3

    if-nez p3, :cond_6

    .line 261
    iget-object p1, p0, Lio/bidmachine/AdResponse;->adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    const-string p2, "Failed to create ad object by response"

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->processLoadFail(Lio/bidmachine/utils/BMError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 264
    :cond_6
    :try_start_6
    invoke-virtual {p2}, Lio/bidmachine/AdRequest;->obtainUnifiedRequestParams()Lio/bidmachine/unified/UnifiedAdRequestParams;

    move-result-object p2

    iget-object p4, p0, Lio/bidmachine/AdResponse;->winnerNetworkAdUnit:Lio/bidmachine/NetworkAdUnit;

    invoke-interface {p3, p1, p2, p4}, Lio/bidmachine/models/AdObject;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkAdUnit;)V

    .line 265
    iput-object p3, p0, Lio/bidmachine/AdResponse;->adObject:Lio/bidmachine/models/AdObject;

    goto :goto_1

    .line 252
    :cond_7
    :goto_0
    iget-object p1, p0, Lio/bidmachine/AdResponse;->adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    const-string p2, "Failed to get parameters by response"

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->processLoadFail(Lio/bidmachine/utils/BMError;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 267
    :try_start_7
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 268
    iget-object p1, p0, Lio/bidmachine/AdResponse;->adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    const-string p2, "Exception when processing response"

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->processLoadFail(Lio/bidmachine/utils/BMError;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 270
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method notifyExpired(Z)V
    .locals 3

    .line 355
    iget-object v0, p0, Lio/bidmachine/AdResponse;->TAG:Ljava/lang/String;

    const-string v1, "notifyExpired - %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lio/bidmachine/AdResponse;->isExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 358
    invoke-direct {p0}, Lio/bidmachine/AdResponse;->unsubscribeExpireTracker()V

    const/4 v0, 0x0

    .line 359
    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponse;->expireAdRequests(Lio/bidmachine/AdRequest;)V

    if-eqz p1, :cond_0

    .line 362
    invoke-direct {p0}, Lio/bidmachine/AdResponse;->destroy()V

    :cond_0
    return-void
.end method

.method public onAdLoadStart(Lio/bidmachine/AdRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest<",
            "***>;)V"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lio/bidmachine/AdResponse;->TAG:Ljava/lang/String;

    const-string v1, "onLoadStart - %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponse;->expireAdRequests(Lio/bidmachine/AdRequest;)V

    return-void
.end method

.method public removeCallback(Lio/bidmachine/AdProcessCallback;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    invoke-virtual {v0, p1}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->removeCallback(Lio/bidmachine/AdProcessCallback;)V

    return-void
.end method

.method public declared-synchronized setStatus(Lio/bidmachine/AdResponseStatus;)V
    .locals 0

    monitor-enter p0

    .line 175
    :try_start_0
    iput-object p1, p0, Lio/bidmachine/AdResponse;->status:Lio/bidmachine/AdResponseStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 499
    iget-object v0, p0, Lio/bidmachine/AdResponse;->auctionResult:Lio/bidmachine/models/AuctionResult;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasShown()Z
    .locals 1

    .line 283
    iget-object v0, p0, Lio/bidmachine/AdResponse;->adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    invoke-static {v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->access$200(Lio/bidmachine/AdResponse$AdProcessCallbackComposite;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
