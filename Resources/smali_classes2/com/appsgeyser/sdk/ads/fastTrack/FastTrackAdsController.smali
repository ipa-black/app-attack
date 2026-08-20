.class public Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;
.super Ljava/lang/Object;
.source "FastTrackAdsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;,
        Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;,
        Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeViewReadyListenerWrapper;,
        Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeAdRequestWrapper;,
        Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeBannerViewPlacementWrapper;
    }
.end annotation


# static fields
.field public static final fastTrackLogTag:Ljava/lang/String; = "fastTrackTag"

.field private static instance:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;


# instance fields
.field private adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

.field private bannerActivityTmp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private bannerPlacementTagTmp:Ljava/lang/String;

.field private bannerViewContainerTmp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private bannerViewPlacementPublishSubject:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject<",
            "Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private consentPendingBlocker:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject<",
            "Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private fullscreenListenerPublishSubject:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject<",
            "Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;",
            ">;"
        }
    .end annotation
.end field

.field private fullscreenPendingLoadTag:Ljava/lang/String;

.field private fullscreenPendingPlacementTag:Ljava/lang/String;

.field private fullscreenPendingUseFrequencyTimer:Z

.field private isActive:Z

.field private isNativeEnable:Z

.field private nativeAdRequestWrapperBehaviorSubject:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject<",
            "Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeAdRequestWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private nativeViewReadyListenerWrapperBehaviorSubject:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject<",
            "Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeViewReadyListenerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ze9H-X9yIZ57LJaJwjitLYvMrvQ(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->init(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->consentPendingBlocker:Lrx/subjects/BehaviorSubject;

    .line 51
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenListenerPublishSubject:Lrx/subjects/BehaviorSubject;

    .line 52
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerViewPlacementPublishSubject:Lrx/subjects/BehaviorSubject;

    .line 54
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->nativeViewReadyListenerWrapperBehaviorSubject:Lrx/subjects/BehaviorSubject;

    .line 55
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->nativeAdRequestWrapperBehaviorSubject:Lrx/subjects/BehaviorSubject;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerActivityTmp:Ljava/lang/ref/WeakReference;

    .line 58
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerViewContainerTmp:Ljava/lang/ref/WeakReference;

    .line 59
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerPlacementTagTmp:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;
    .locals 2

    const-class v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->instance:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    invoke-direct {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;-><init>()V

    sput-object v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->instance:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    .line 68
    :cond_0
    sget-object v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->instance:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hideSmallBanner()V
    .locals 2

    .line 181
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda2;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private init(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;)V
    .locals 6

    .line 84
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getConfigPhp()Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fastTrackTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getConfigPhp()Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getActiveAdsSDK()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "appnextSdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_1
    const-string v3, "htmlSdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_2
    const-string v3, "facebookSdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_3
    const-string v3, "unitySdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "multiAdsSdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_5
    const-string v3, "admobSdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move v5, v4

    goto :goto_0

    :sswitch_6
    const-string v3, "appodealSdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown adsAdapter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " . Disabling ads controller."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackDisabledAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackDisabledAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    goto/16 :goto_1

    .line 94
    :pswitch_0
    const-string v2, "initializing appnext adsAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    goto :goto_1

    .line 115
    :pswitch_1
    const-string v2, "initializing html adsAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    goto :goto_1

    .line 99
    :pswitch_2
    const-string v2, "initializing facebook adsAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    goto :goto_1

    .line 104
    :pswitch_3
    const-string v2, "initializing unity adsAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    goto :goto_1

    .line 120
    :pswitch_4
    const-string v2, "initializing multiAds adsAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    goto :goto_1

    .line 88
    :pswitch_5
    const-string v2, "initializing admob adsAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    .line 90
    iput-boolean v4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isNativeEnable:Z

    goto :goto_1

    .line 109
    :pswitch_6
    const-string v2, "initializing appodeal adsAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    .line 111
    iput-boolean v4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isNativeEnable:Z

    .line 131
    :goto_1
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenListenerPublishSubject:Lrx/subjects/BehaviorSubject;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda3;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;)V

    .line 132
    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 133
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerViewPlacementPublishSubject:Lrx/subjects/BehaviorSubject;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda4;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;)V

    .line 134
    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 139
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->nativeViewReadyListenerWrapperBehaviorSubject:Lrx/subjects/BehaviorSubject;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda5;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;)V

    .line 140
    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 141
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->nativeAdRequestWrapperBehaviorSubject:Lrx/subjects/BehaviorSubject;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda6;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;)V

    .line 142
    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 144
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->getInstance()Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->getDisableAdsActiveFlag()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->setActive(Z)V

    .line 146
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->getInstance()Lcom/appsgeyser/sdk/inapp/PurchaseController;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda7;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->subscribeDisableAdsStatus(Lrx/functions/Action1;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70d1e200 -> :sswitch_6
        -0x39749d03 -> :sswitch_5
        -0x2f17fffd -> :sswitch_4
        -0x1161437b -> :sswitch_3
        0x391b6b94 -> :sswitch_2
        0x49ac988f -> :sswitch_1
        0x4e5fff06 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setActive(Z)V
    .locals 2

    .line 165
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isActive:Z

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerViewContainerTmp:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerActivityTmp:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerPlacementTagTmp:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerActivityTmp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerPlacementTagTmp:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->setBannerViewContainer(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerViewContainerTmp:Ljava/lang/ref/WeakReference;

    .line 170
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerActivityTmp:Ljava/lang/ref/WeakReference;

    .line 171
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerPlacementTagTmp:Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->hideSmallBanner()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public consentRequestProcessFinished()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->consentPendingBlocker:Lrx/subjects/BehaviorSubject;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;)V

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public getNativeAds(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 298
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isActive:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->getNativeAds(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 301
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getNativeStepByPlacementTag(Ljava/lang/String;)I
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->getNativeStepByPlacementTag(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getRewardedPlacementActivationStatus(Ljava/lang/String;)Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isActive:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->getRewardedVideoActivationStatus(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isActive()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isActive:Z

    return v0
.end method

.method public isNativeEnable()Z
    .locals 1

    .line 381
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isNativeEnable:Z

    return v0
.end method

.method public isNativePlacementActive(Ljava/lang/String;)Z
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->isNativePlacementActive(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$hideSmallBanner$6$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerViewPlacementPublishSubject:Lrx/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lrx/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerViewPlacementPublishSubject:Lrx/subjects/BehaviorSubject;

    .line 183
    invoke-virtual {v0}, Lrx/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->bannerViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerViewPlacementPublishSubject:Lrx/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lrx/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->bannerViewContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 185
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->onPause()V

    :cond_0
    return-void
.end method

.method synthetic lambda$init$0$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->setFullscreenListener(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;)V

    return-void
.end method

.method synthetic lambda$init$1$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    .line 135
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->getBannerViewContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 136
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->getPlacementTag()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 134
    invoke-virtual {v0, v1, v2, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->initBannerView(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$init$2$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeViewReadyListenerWrapper;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeViewReadyListenerWrapper;->getListener()Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$NativeViewReadyListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->setNativeViewReadyListener(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$NativeViewReadyListener;)V

    return-void
.end method

.method synthetic lambda$init$3$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeAdRequestWrapper;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->sendNativeViewRequest()V

    return-void
.end method

.method synthetic lambda$init$4$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController(Lcom/appsgeyser/sdk/inapp/models/statuses/Status;Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;)V
    .locals 2

    .line 148
    instance-of v0, p1, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    if-eqz v0, :cond_3

    .line 149
    check-cast p1, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    .line 150
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeatureActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeaturePurchased()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->setActive(Z)V

    .line 151
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeatureActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeaturePurchased()Z

    move-result p1

    if-nez p1, :cond_3

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingLoadTag:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 154
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingPlacementTag:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingUseFrequencyTimer:Z

    .line 153
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->showFullscreen(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method synthetic lambda$init$5$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;Lcom/appsgeyser/sdk/inapp/models/statuses/Status;)V
    .locals 2

    .line 147
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p2, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda8;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Lcom/appsgeyser/sdk/inapp/models/statuses/Status;Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$showFullscreen$7$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->showFullscreen(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    .line 207
    const-string p1, "fastTrackTag"

    const-string p2, "attempt to show fullscreen"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->onResume(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public requestInit(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getActiveAdsSDK()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->consentPendingBlocker:Lrx/subjects/BehaviorSubject;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;

    invoke-direct {v1, p0, p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_0
    const-string p1, "fastTrackTag"

    const-string p2, "ads requestInit cancelled, incorrect config"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendNativeViewRequest()V
    .locals 3

    .line 417
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isActive:Z

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->nativeAdRequestWrapperBehaviorSubject:Lrx/subjects/BehaviorSubject;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeAdRequestWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeAdRequestWrapper;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$1;)V

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setBannerViewContainer(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0, p1, p2, v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->setBannerViewContainer(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public setBannerViewContainer(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 240
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 241
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isActive:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerViewPlacementPublishSubject:Lrx/subjects/BehaviorSubject;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Landroid/view/ViewGroup;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    :cond_0
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerActivityTmp:Ljava/lang/ref/WeakReference;

    .line 245
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerViewContainerTmp:Ljava/lang/ref/WeakReference;

    .line 246
    const-string p1, "onStart"

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerPlacementTagTmp:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public setFullscreenListener(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenListenerPublishSubject:Lrx/subjects/BehaviorSubject;

    invoke-virtual {v0, p1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setNativeViewReadyListener(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$NativeViewReadyListener;)V
    .locals 2

    .line 411
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isActive:Z

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->nativeViewReadyListenerWrapperBehaviorSubject:Lrx/subjects/BehaviorSubject;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeViewReadyListenerWrapper;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeViewReadyListenerWrapper;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$NativeViewReadyListener;)V

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public showFullscreen(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 191
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->showFullscreen(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public showFullscreen(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->showFullscreen(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public showFullscreen(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 8

    .line 199
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isActive:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->isConsentRequestProcessActive()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 201
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {v0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->setContext(Landroid/content/Context;)V

    .line 202
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    new-instance v1, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-direct {v1, p2}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->setProgressDialog(Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V

    .line 204
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 205
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda1;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda1;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingLoadTag:Ljava/lang/String;

    .line 210
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingPlacementTag:Ljava/lang/String;

    .line 211
    iput-boolean p4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingUseFrequencyTimer:Z

    goto :goto_0

    .line 213
    :cond_1
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingLoadTag:Ljava/lang/String;

    .line 214
    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingPlacementTag:Ljava/lang/String;

    .line 215
    iput-boolean p4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingUseFrequencyTimer:Z

    .line 216
    const-string p1, "fastTrackTag"

    const-string p2, "fasttrack controller not activated"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public showPendingFullscreen(Landroid/content/Context;)V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingLoadTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingPlacementTag:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingUseFrequencyTimer:Z

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->showFullscreen(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0, p1, v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;)V

    return-void
.end method

.method public showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 259
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isActive:Z

    const-string v1, "fastTrackTag"

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;)V

    .line 261
    const-string p1, "attempt to show rewardedVideo"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :cond_0
    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoDeactivated()V

    .line 264
    const-string p1, "fasttrack controller not activated"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public showRewardedVideoWithDialog(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 276
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isActive:Z

    const-string v1, "fastTrackTag"

    if-eqz v0, :cond_0

    .line 277
    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->showRewardedVideoWithDialog(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string p1, "attempt to show rewardedVideo with dialog"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_0
    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoDeactivated()V

    .line 282
    const-string p1, "fasttrack controller not activated"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
