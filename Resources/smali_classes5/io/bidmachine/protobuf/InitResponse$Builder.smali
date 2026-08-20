.class public final Lio/bidmachine/protobuf/InitResponse$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "InitResponse.java"

# interfaces
.implements Lio/bidmachine/protobuf/InitResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/InitResponse$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/InitResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private adCacheControl_:I

.field private adCacheMaxAge_:I

.field private adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation
.end field

.field private adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            "Lio/bidmachine/protobuf/AdNetwork$Builder;",
            "Lio/bidmachine/protobuf/AdNetworkOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private adNetworksLoadingTimeout_:I

.field private adNetworks_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private adRequestTmax_:I

.field private bitField0_:I

.field private endpoint_:Ljava/lang/Object;

.field private eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation
.end field

.field private sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

.field private sessionResetAfter_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 805
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1067
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 1144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 1415
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    const/4 v0, 0x0

    .line 1697
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 806
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 811
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1067
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 1144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 1415
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    const/4 p1, 0x0

    .line 1697
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 812
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/InitResponse$1;)V
    .locals 0

    .line 765
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/InitResponse$1;)V
    .locals 0

    .line 765
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;-><init>()V

    return-void
.end method

.method private ensureAdNetworksIsMutable()V
    .locals 2

    .line 1417
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1418
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 1419
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureEventIsMutable()V
    .locals 2

    .line 1146
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1147
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 1148
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            "Lio/bidmachine/protobuf/AdNetwork$Builder;",
            "Lio/bidmachine/protobuf/AdNetworkOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1642
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1643
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1647
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1648
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1649
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 1651
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 771
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitResponse_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1371
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1372
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1376
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1377
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1378
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 1380
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getSdkAnalyticConfigFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2077
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2078
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2080
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v1

    .line 2081
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2082
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2083
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 2085
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .line 1786
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 1787
    sget-object v0, Lio/bidmachine/protobuf/InitResponse$AdCachePlacementControlDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .line 1794
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    .line 1795
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 1796
    sget-object v0, Lio/bidmachine/protobuf/InitResponse$AdCachePlacementControlDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    .line 1799
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1800
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    .line 1802
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 816
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 818
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAdNetworks(ILio/bidmachine/protobuf/AdNetwork$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1539
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1540
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 1541
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1544
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAdNetworks(ILio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1508
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1510
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1512
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 1513
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1514
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1516
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAdNetworks(Lio/bidmachine/protobuf/AdNetwork$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1525
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1526
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 1527
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1528
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1530
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAdNetworks(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1491
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1493
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1495
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 1496
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1497
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1499
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAdNetworksBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 2

    .line 1621
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1622
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v1

    .line 1621
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object v0
.end method

.method public addAdNetworksBuilder(I)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 2

    .line 1629
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1630
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v1

    .line 1629
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public addAllAdNetworks(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;)",
            "Lio/bidmachine/protobuf/InitResponse$Builder;"
        }
    .end annotation

    .line 1553
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1554
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 1555
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1557
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1559
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllEvent(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;)",
            "Lio/bidmachine/protobuf/InitResponse$Builder;"
        }
    .end annotation

    .line 1282
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1283
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1284
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1286
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1288
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addEvent(ILcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1268
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1269
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1270
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1271
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1273
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addEvent(ILcom/explorestack/protobuf/adcom/Ad$Event;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1237
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1239
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1241
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1242
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1243
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1245
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addEvent(Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1254
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1255
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1256
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1257
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1259
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addEvent(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1220
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1224
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1225
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1228
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addEventBuilder()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2

    .line 1350
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1351
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v1

    .line 1350
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object v0
.end method

.method public addEventBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2

    .line 1358
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1359
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v1

    .line 1358
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 947
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->build()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->build()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/InitResponse;
    .locals 2

    .line 871
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->buildPartial()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    .line 872
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitResponse;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 873
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->buildPartial()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->buildPartial()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/InitResponse;
    .locals 2

    .line 880
    new-instance v0, Lio/bidmachine/protobuf/InitResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/InitResponse;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/InitResponse$1;)V

    .line 882
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$402(Lio/bidmachine/protobuf/InitResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 884
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 885
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 886
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 888
    :cond_0
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$502(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 890
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$502(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;

    .line 892
    :goto_0
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sessionResetAfter_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$602(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 893
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    .line 894
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 895
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 896
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 898
    :cond_2
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$702(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 900
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$702(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;

    .line 902
    :goto_1
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksLoadingTimeout_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$802(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 903
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$902(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 904
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheMaxAge_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1002(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 905
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1102(Lio/bidmachine/protobuf/InitResponse;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 906
    invoke-static {v0}, Lio/bidmachine/protobuf/InitResponse;->access$1100(Lio/bidmachine/protobuf/InitResponse;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 907
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adRequestTmax_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1202(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 908
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 909
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1302(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig;

    goto :goto_2

    .line 911
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1302(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 913
    :goto_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clear()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clear()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clear()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clear()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 2

    .line 823
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 824
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 826
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 827
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 828
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    goto :goto_0

    .line 830
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    const/4 v0, 0x0

    .line 832
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sessionResetAfter_:I

    .line 834
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 835
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 836
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    goto :goto_1

    .line 838
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 840
    :goto_1
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksLoadingTimeout_:I

    .line 842
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 844
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheMaxAge_:I

    .line 846
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->clear()V

    .line 847
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adRequestTmax_:I

    .line 849
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 850
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    goto :goto_2

    .line 852
    :cond_2
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 853
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_2
    return-object p0
.end method

.method public clearAdCacheControl()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1746
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 1747
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAdCacheMaxAge()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1777
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheMaxAge_:I

    .line 1778
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAdCachePlacementControl()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1880
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1881
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearAdNetworks()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1567
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1568
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 1569
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 1570
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1572
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearAdNetworksLoadingTimeout()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1692
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksLoadingTimeout_:I

    .line 1693
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAdRequestTmax()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1964
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adRequestTmax_:I

    .line 1965
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearEndpoint()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1122
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->getDefaultInstance()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitResponse;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 1123
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearEvent()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1296
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1297
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 1298
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 1299
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1301
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 930
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 935
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public clearSdkAnalyticConfig()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 2

    .line 2042
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2043
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 2044
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 2046
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 2047
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearSessionResetAfter()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1409
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sessionResetAfter_:I

    .line 1410
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 919
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public containsAdCachePlacementControl(Ljava/lang/String;)Z
    .locals 1

    .line 1819
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1820
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAdCacheControl()Lio/bidmachine/protobuf/AdCacheControl;
    .locals 1

    .line 1723
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/AdCacheControl;->valueOf(I)Lio/bidmachine/protobuf/AdCacheControl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1724
    sget-object v0, Lio/bidmachine/protobuf/AdCacheControl;->UNRECOGNIZED:Lio/bidmachine/protobuf/AdCacheControl;

    :cond_0
    return-object v0
.end method

.method public getAdCacheControlValue()I
    .locals 1

    .line 1703
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    return v0
.end method

.method public getAdCacheMaxAge()I
    .locals 1

    .line 1758
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheMaxAge_:I

    return v0
.end method

.method public getAdCachePlacementControl()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdCachePlacementControlMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAdCachePlacementControlCount()I
    .locals 1

    .line 1806
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getAdCachePlacementControlMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .line 1840
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAdCachePlacementControlOrDefault(Ljava/lang/String;Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 2

    .line 1854
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1856
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1857
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lio/bidmachine/protobuf/AdCachePlacementControl;

    :cond_0
    return-object p2
.end method

.method public getAdCachePlacementControlOrThrow(Ljava/lang/String;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 2

    .line 1870
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1872
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1873
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1876
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p1

    .line 1874
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getAdNetworks(I)Lio/bidmachine/protobuf/AdNetwork;
    .locals 1

    .line 1450
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1451
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork;

    return-object p1

    .line 1453
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork;

    return-object p1
.end method

.method public getAdNetworksBuilder(I)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1594
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public getAdNetworksBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork$Builder;",
            ">;"
        }
    .end annotation

    .line 1637
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdNetworksCount()I
    .locals 1

    .line 1440
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1441
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1443
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getAdNetworksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;"
        }
    .end annotation

    .line 1430
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1431
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1433
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdNetworksLoadingTimeout()I
    .locals 1

    .line 1665
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksLoadingTimeout_:I

    return v0
.end method

.method public getAdNetworksOrBuilder(I)Lio/bidmachine/protobuf/AdNetworkOrBuilder;
    .locals 1

    .line 1601
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1602
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetworkOrBuilder;

    return-object p1

    .line 1603
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetworkOrBuilder;

    return-object p1
.end method

.method public getAdNetworksOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/AdNetworkOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1611
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1612
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1614
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdRequestTmax()I
    .locals 1

    .line 1945
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adRequestTmax_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/InitResponse;
    .locals 1

    .line 866
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->getDefaultInstance()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 861
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitResponse_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 2

    .line 1073
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 1074
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1075
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1077
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1078
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    return-object v0

    .line 1081
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEndpointBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1090
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 1091
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1092
    check-cast v0, Ljava/lang/String;

    .line 1093
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1095
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    return-object v0

    .line 1098
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1

    .line 1179
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1180
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p1

    .line 1182
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p1
.end method

.method public getEventBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 1323
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public getEventBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            ">;"
        }
    .end annotation

    .line 1366
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventCount()I
    .locals 1

    .line 1169
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1170
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1172
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation

    .line 1159
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1160
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1162
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventOrBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;
    .locals 1

    .line 1330
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1331
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;

    return-object p1

    .line 1332
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;

    return-object p1
.end method

.method public getEventOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1340
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1341
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1343
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMutableAdCachePlacementControl()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1905
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1

    .line 1984
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1985
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1987
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object v0
.end method

.method public getSdkAnalyticConfigBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 2057
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    .line 2058
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getSdkAnalyticConfigFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object v0
.end method

.method public getSdkAnalyticConfigOrBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;
    .locals 1

    .line 2064
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2065
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;

    return-object v0

    .line 2067
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-nez v0, :cond_1

    .line 2068
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSessionResetAfter()I
    .locals 1

    .line 1390
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sessionResetAfter_:I

    return v0
.end method

.method public hasSdkAnalyticConfig()Z
    .locals 1

    .line 1977
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 799
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitResponse_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/InitResponse;

    const-class v2, Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 800
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 779
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 781
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map field number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected internalGetMutableMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 790
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 792
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map field number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 765
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 765
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 765
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 765
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1054
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->access$1800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1060
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/protobuf/InitResponse$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1056
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/InitResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1057
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 1060
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1062
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 951
    instance-of v0, p1, Lio/bidmachine/protobuf/InitResponse;

    if-eqz v0, :cond_0

    .line 952
    check-cast p1, Lio/bidmachine/protobuf/InitResponse;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1

    .line 954
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 3

    .line 960
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->getDefaultInstance()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 961
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 962
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$400(Lio/bidmachine/protobuf/InitResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 963
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    .line 965
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 966
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 967
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 968
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 969
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    goto :goto_0

    .line 971
    :cond_2
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 972
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 974
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_2

    .line 977
    :cond_3
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 978
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 979
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 980
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 981
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 982
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 984
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 985
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 987
    :cond_5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 991
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getSessionResetAfter()I

    move-result v0

    if-eqz v0, :cond_7

    .line 992
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getSessionResetAfter()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setSessionResetAfter(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 994
    :cond_7
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_9

    .line 995
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 996
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 997
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 998
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    goto :goto_3

    .line 1000
    :cond_8
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 1001
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1003
    :goto_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_4

    .line 1006
    :cond_9
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1007
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1008
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 1009
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1010
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 1011
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 1013
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1014
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_a
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 1016
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1020
    :cond_c
    :goto_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksLoadingTimeout()I

    move-result v0

    if-eqz v0, :cond_d

    .line 1021
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksLoadingTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setAdNetworksLoadingTimeout(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1023
    :cond_d
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$900(Lio/bidmachine/protobuf/InitResponse;)I

    move-result v0

    if-eqz v0, :cond_e

    .line 1024
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdCacheControlValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setAdCacheControlValue(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1026
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdCacheMaxAge()I

    move-result v0

    if-eqz v0, :cond_f

    .line 1027
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdCacheMaxAge()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setAdCacheMaxAge(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1029
    :cond_f
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 1030
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$1600(Lio/bidmachine/protobuf/InitResponse;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 1029
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 1031
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdRequestTmax()I

    move-result v0

    if-eqz v0, :cond_10

    .line 1032
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdRequestTmax()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setAdRequestTmax(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1034
    :cond_10
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasSdkAnalyticConfig()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1035
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeSdkAnalyticConfig(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1037
    :cond_11
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$1700(Lio/bidmachine/protobuf/InitResponse;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1038
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeSdkAnalyticConfig(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 2024
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2025
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-eqz v0, :cond_0

    .line 2027
    invoke-static {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->newBuilder(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    goto :goto_0

    .line 2029
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 2031
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_1

    .line 2033
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 2096
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public putAdCachePlacementControl(Ljava/lang/String;Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1917
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1918
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1919
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1920
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putAllAdCachePlacementControl(Ljava/util/Map;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;)",
            "Lio/bidmachine/protobuf/InitResponse$Builder;"
        }
    .end annotation

    .line 1933
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1934
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public removeAdCachePlacementControl(Ljava/lang/String;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1894
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1895
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1896
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeAdNetworks(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1580
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1581
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 1582
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1585
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeEvent(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1309
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1310
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1311
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1312
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1314
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setAdCacheControl(Lio/bidmachine/protobuf/AdCacheControl;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1733
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1736
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCacheControl;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 1737
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdCacheControlValue(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1712
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 1713
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdCacheMaxAge(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1767
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheMaxAge_:I

    .line 1768
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdNetworks(ILio/bidmachine/protobuf/AdNetwork$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1478
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1479
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 1480
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1481
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1483
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAdNetworks(ILio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1461
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1463
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1465
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 1466
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1469
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAdNetworksLoadingTimeout(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1678
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksLoadingTimeout_:I

    .line 1679
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdRequestTmax(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1954
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adRequestTmax_:I

    .line 1955
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setEndpoint(Ljava/lang/String;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1112
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 1113
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setEndpointBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1136
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$1900(Lcom/explorestack/protobuf/ByteString;)V

    .line 1138
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 1139
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setEvent(ILcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1207
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1208
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1209
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1210
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1212
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setEvent(ILcom/explorestack/protobuf/adcom/Ad$Event;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1190
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1192
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1194
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1195
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1196
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 1198
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 925
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitResponse$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitResponse$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 941
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public setSdkAnalyticConfig(Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 2011
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2012
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 2013
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 2015
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setSdkAnalyticConfig(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1994
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1996
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1998
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 1999
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    goto :goto_0

    .line 2001
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setSessionResetAfter(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1399
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sessionResetAfter_:I

    .line 1400
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 765
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 2090
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method
