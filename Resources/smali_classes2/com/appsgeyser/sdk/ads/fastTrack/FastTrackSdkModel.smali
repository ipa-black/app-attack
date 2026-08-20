.class public Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;
.super Ljava/lang/Object;
.source "FastTrackSdkModel.java"


# instance fields
.field private additionalReportingParams:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additional_reporting_params"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_id"
    .end annotation
.end field

.field private bannerPlacementId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_placement_id"
    .end annotation
.end field

.field private bannerPlacementIdMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_placement_id_map"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;"
        }
    .end annotation
.end field

.field private bannerPlacementsRefreshTimerMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_placements_refresh_timer_map"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private contentRating:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_rating"
    .end annotation
.end field

.field private customBannerActivated:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_banner_activated"
    .end annotation
.end field

.field private customFullscreenActivated:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_fullscreen_activated"
    .end annotation
.end field

.field private customRewardedActivated:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_rewarded_activated"
    .end annotation
.end field

.field private defaultBannerRefreshTimer:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_refresh_timer"
    .end annotation
.end field

.field private defaultFullscreenIntensity:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullscreen_intensity"
    .end annotation
.end field

.field private fullscreenFrequencyTimer:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullscreen_frequency_timer"
    .end annotation
.end field

.field private fullscreenPendingDelayTimer:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullscreen_pending_delay_timer"
    .end annotation
.end field

.field private fullscreenPlacementId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullscreen_placement_id"
    .end annotation
.end field

.field private fullscreenPlacementIdMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullscreen_placement_id_map"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;"
        }
    .end annotation
.end field

.field private fullscreenPlacementsFrequencyTimerMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullscreen_placements_frequency_timer_map"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fullscreenPlacementsIntensityMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullscreen_placements_intensity_map"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private nativeAdsPlacementId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "native_ads_placement_id"
    .end annotation
.end field

.field private nativePlacementsActivationMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "native_placements_activation_map"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private publisherIds:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pub_ids"
    .end annotation
.end field

.field private rewardedPlacementsActivationMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rewarded_placements_activation_map"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private rewardedVideoPlacementId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rewarded_video_placement_id"
    .end annotation
.end field

.field private rewardedVideoPlacementIdMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rewarded_video_placement_id_map"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;"
        }
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ZZZLjava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;ZZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 76
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->name:Ljava/lang/String;

    move-object v1, p2

    .line 77
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->appId:Ljava/lang/String;

    move-object v1, p3

    .line 78
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->publisherIds:[Ljava/lang/String;

    move-object v1, p4

    .line 79
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->token:Ljava/lang/String;

    move-object v1, p5

    .line 80
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPlacementId:Ljava/lang/String;

    move-object v1, p6

    .line 81
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->defaultFullscreenIntensity:Ljava/lang/Integer;

    move-object v1, p7

    .line 82
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPlacementsIntensityMap:Ljava/util/Map;

    move-object v1, p8

    .line 83
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPlacementsFrequencyTimerMap:Ljava/util/Map;

    move-object v1, p9

    .line 84
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenFrequencyTimer:Ljava/lang/Integer;

    move-object v1, p10

    .line 85
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPendingDelayTimer:Ljava/lang/Integer;

    move-object v1, p11

    .line 86
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->bannerPlacementId:Ljava/lang/String;

    move-object v1, p12

    .line 87
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->defaultBannerRefreshTimer:Ljava/lang/Integer;

    move-object v1, p13

    .line 88
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->bannerPlacementsRefreshTimerMap:Ljava/util/Map;

    move-object/from16 v1, p14

    .line 89
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->rewardedVideoPlacementId:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 90
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->rewardedPlacementsActivationMap:Ljava/util/Map;

    move-object/from16 v1, p16

    .line 91
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->nativeAdsPlacementId:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 92
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->nativePlacementsActivationMap:Ljava/util/Map;

    move/from16 v1, p18

    .line 93
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->customBannerActivated:Z

    move/from16 v1, p19

    .line 94
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->customFullscreenActivated:Z

    move/from16 v1, p20

    .line 95
    iput-boolean v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->customRewardedActivated:Z

    move-object/from16 v1, p21

    .line 96
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->additionalReportingParams:Ljava/util/Map;

    move-object/from16 v1, p22

    .line 97
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->contentRating:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 98
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPlacementIdMap:Ljava/util/Map;

    move-object/from16 v1, p24

    .line 99
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->bannerPlacementIdMap:Ljava/util/Map;

    move-object/from16 v1, p25

    .line 100
    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->rewardedVideoPlacementIdMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAdditionalReportingParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->additionalReportingParams:Ljava/util/Map;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerPlacementId()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->bannerPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerPlacementIdMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->bannerPlacementIdMap:Ljava/util/Map;

    return-object v0
.end method

.method public getBannerPlacementsRefreshTimerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->bannerPlacementsRefreshTimerMap:Ljava/util/Map;

    return-object v0
.end method

.method public getContentRating()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->contentRating:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultBannerRefreshTimer()Ljava/lang/Integer;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->defaultBannerRefreshTimer:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDefaultFullscreenIntensity()Ljava/lang/Integer;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->defaultFullscreenIntensity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFullscreenFrequencyTimer()Ljava/lang/Integer;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenFrequencyTimer:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFullscreenPendingDelayTimer()Ljava/lang/Integer;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPendingDelayTimer:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFullscreenPlacementId()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public getFullscreenPlacementIdMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPlacementIdMap:Ljava/util/Map;

    return-object v0
.end method

.method public getFullscreenPlacementsFrequencyTimerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPlacementsFrequencyTimerMap:Ljava/util/Map;

    return-object v0
.end method

.method public getFullscreenPlacementsIntensityMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPlacementsIntensityMap:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeAdsPlacementId()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->nativeAdsPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public getNativePlacementsActivationMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->nativePlacementsActivationMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPublisherIds()[Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->publisherIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedPlacementsActivationMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->rewardedPlacementsActivationMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRewardedVideoPlacementId()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->rewardedVideoPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoPlacementIdMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->rewardedVideoPlacementIdMap:Ljava/util/Map;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isCustomBannerActivated()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->customBannerActivated:Z

    return v0
.end method

.method public isCustomFullscreenActivated()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->customFullscreenActivated:Z

    return v0
.end method

.method public isCustomRewardedActivated()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->customRewardedActivated:Z

    return v0
.end method

.method public setAdditionalReportingParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->additionalReportingParams:Ljava/util/Map;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->appId:Ljava/lang/String;

    return-void
.end method

.method public setBannerPlacementId(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->bannerPlacementId:Ljava/lang/String;

    return-void
.end method

.method public setBannerPlacementIdMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;)V"
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->bannerPlacementIdMap:Ljava/util/Map;

    return-void
.end method

.method public setBannerPlacementsRefreshTimerMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->bannerPlacementsRefreshTimerMap:Ljava/util/Map;

    return-void
.end method

.method public setContentRating(Ljava/lang/String;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->contentRating:Ljava/lang/String;

    return-void
.end method

.method public setCustomBannerActivated(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->customBannerActivated:Z

    return-void
.end method

.method public setCustomFullscreenActivated(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->customFullscreenActivated:Z

    return-void
.end method

.method public setCustomRewardedActivated(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->customRewardedActivated:Z

    return-void
.end method

.method public setDefaultBannerRefreshTimer(Ljava/lang/Integer;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->defaultBannerRefreshTimer:Ljava/lang/Integer;

    return-void
.end method

.method public setDefaultFullscreenIntensity(Ljava/lang/Integer;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->defaultFullscreenIntensity:Ljava/lang/Integer;

    return-void
.end method

.method public setFullscreenFrequencyTimer(Ljava/lang/Integer;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenFrequencyTimer:Ljava/lang/Integer;

    return-void
.end method

.method public setFullscreenPendingDelayTimer(Ljava/lang/Integer;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPendingDelayTimer:Ljava/lang/Integer;

    return-void
.end method

.method public setFullscreenPlacementId(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPlacementId:Ljava/lang/String;

    return-void
.end method

.method public setFullscreenPlacementIdMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;)V"
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPlacementIdMap:Ljava/util/Map;

    return-void
.end method

.method public setFullscreenPlacementsFrequencyTimerMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPlacementsFrequencyTimerMap:Ljava/util/Map;

    return-void
.end method

.method public setFullscreenPlacementsIntensityMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->fullscreenPlacementsIntensityMap:Ljava/util/Map;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setNativeAdsPlacementId(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->nativeAdsPlacementId:Ljava/lang/String;

    return-void
.end method

.method public setNativePlacementsActivationMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->nativePlacementsActivationMap:Ljava/util/Map;

    return-void
.end method

.method public setPublisherIds([Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->publisherIds:[Ljava/lang/String;

    return-void
.end method

.method public setRewardedPlacementsActivationMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->rewardedPlacementsActivationMap:Ljava/util/Map;

    return-void
.end method

.method public setRewardedVideoPlacementId(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->rewardedVideoPlacementId:Ljava/lang/String;

    return-void
.end method

.method public setRewardedVideoPlacementIdMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;)V"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->rewardedVideoPlacementIdMap:Ljava/util/Map;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->token:Ljava/lang/String;

    return-void
.end method
