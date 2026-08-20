.class Lio/bidmachine/BidTokenManager;
.super Ljava/lang/Object;
.source "BidTokenManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createBidToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 20
    invoke-static {p0}, Lio/bidmachine/BidTokenManager;->createRequestTokenPayload(Landroid/content/Context;)Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object p0

    .line 21
    const-string v0, ""

    if-nez p0, :cond_0

    .line 22
    invoke-static {}, Lio/bidmachine/BidTokenManager;->sendFailEvent()V

    return-object v0

    .line 26
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload;->toByteArray()[B

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-static {}, Lio/bidmachine/BidTokenManager;->sendSuccessEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 30
    :catch_0
    invoke-static {}, Lio/bidmachine/BidTokenManager;->sendFailEvent()V

    return-object v0
.end method

.method private static createDeviceDataBuilder(Landroid/content/Context;Lio/bidmachine/BidMachineImpl;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 2

    .line 104
    :try_start_0
    invoke-virtual {p1}, Lio/bidmachine/BidMachineImpl;->getDeviceParams()Lio/bidmachine/DeviceParams;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Lio/bidmachine/BidMachineImpl;->getUserRestrictionParams()Lio/bidmachine/UserRestrictionParams;

    move-result-object p1

    .line 107
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {v0, p0, p1, v1}, Lio/bidmachine/DeviceParams;->fillDeviceData(Landroid/content/Context;Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createRequestTokenPayload(Landroid/content/Context;)Lio/bidmachine/protobuf/RequestTokenPayload;
    .locals 5

    .line 38
    :try_start_0
    invoke-static {}, Lio/bidmachine/BidMachineImpl;->get()Lio/bidmachine/BidMachineImpl;

    move-result-object v0

    .line 40
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload;->newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v1

    .line 43
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v2

    .line 44
    invoke-static {p0}, Lio/bidmachine/core/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    invoke-virtual {v2, v3}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->setAppName(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    .line 49
    :cond_0
    invoke-static {p0}, Lio/bidmachine/core/Utils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 52
    invoke-virtual {v2, v3}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->setAppVer(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    .line 54
    :cond_1
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setAppData(Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 57
    invoke-static {v0}, Lio/bidmachine/BidTokenManager;->createUserDataBuilder(Lio/bidmachine/BidMachineImpl;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 59
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setUserData(Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 63
    :cond_2
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v2

    const-string v3, "BidMachine"

    .line 64
    invoke-virtual {v2, v3}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->setSdk(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v2

    const-string v3, "2.1.5"

    .line 65
    invoke-virtual {v2, v3}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->setSdkver(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setPlacementData(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 69
    invoke-static {p0, v0}, Lio/bidmachine/BidTokenManager;->createDeviceDataBuilder(Landroid/content/Context;Lio/bidmachine/BidMachineImpl;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 71
    invoke-virtual {v1, p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setDeviceData(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 75
    :cond_3
    invoke-static {}, Lio/bidmachine/BidTokenManager;->createSessionDataBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 77
    invoke-virtual {v1, p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setSessionData(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 80
    :cond_4
    invoke-virtual {v1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 82
    invoke-static {p0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static createSessionDataBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;
    .locals 8

    .line 118
    :try_start_0
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v0

    .line 120
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;->newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;

    move-result-object v1

    .line 121
    invoke-virtual {v0}, Lio/bidmachine/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;->setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;

    move-result-object v1

    .line 122
    invoke-virtual {v0}, Lio/bidmachine/SessionManager;->getSessionDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;->setSessionduration(J)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;

    move-result-object v1

    .line 123
    invoke-static {}, Lio/bidmachine/AdsType;->values()[Lio/bidmachine/AdsType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 125
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v6

    .line 126
    invoke-virtual {v0, v5}, Lio/bidmachine/SessionManager;->getSessionAdParams(Lio/bidmachine/AdsType;)Lio/bidmachine/SessionAdParams;

    move-result-object v7

    invoke-virtual {v7, v6}, Lio/bidmachine/SessionAdParams;->fillSessionPlacementData(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;)V

    .line 127
    invoke-virtual {v5}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;->putSessionPlacementData(Ljava/lang/String;Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createUserDataBuilder(Lio/bidmachine/BidMachineImpl;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 1

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/BidMachineImpl;->getUserRestrictionParams()Lio/bidmachine/UserRestrictionParams;

    move-result-object p0

    .line 92
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lio/bidmachine/UserRestrictionParams;->fill(Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static sendFailEvent()V
    .locals 4

    .line 143
    new-instance v0, Lio/bidmachine/SimpleTrackingObject;

    invoke-direct {v0}, Lio/bidmachine/SimpleTrackingObject;-><init>()V

    sget-object v1, Lio/bidmachine/TrackEventType;->GetBidToken:Lio/bidmachine/TrackEventType;

    const-string v2, "BidToken"

    .line 146
    invoke-static {v2}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v2

    const/4 v3, 0x0

    .line 143
    invoke-static {v0, v1, v3, v2}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method private static sendSuccessEvent()V
    .locals 3

    .line 136
    new-instance v0, Lio/bidmachine/SimpleTrackingObject;

    invoke-direct {v0}, Lio/bidmachine/SimpleTrackingObject;-><init>()V

    sget-object v1, Lio/bidmachine/TrackEventType;->GetBidToken:Lio/bidmachine/TrackEventType;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method
