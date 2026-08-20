.class public Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;
.super Ljava/lang/Object;
.source "MultiAdsBannerManager.java"


# instance fields
.field private adViewContainer:Landroid/widget/RelativeLayout;

.field private backfillAdView:Lcom/appsgeyser/sdk/ads/AdView;

.field private final bannerAdaptersArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerBaseAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final bannerPlacementIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;"
        }
    .end annotation
.end field

.field private bannerRefreshRate:Ljava/lang/Integer;

.field private bannerViewContainer:Landroid/view/ViewGroup;

.field private context:Landroid/content/Context;

.field private currentlyLoadingAdapterIndex:I

.field private handler:Landroid/os/Handler;

.field private final nextAdapterTryLoadBannerRunnable:Ljava/lang/Runnable;

.field private noBannerAvailable:Z

.field private progressBar:Landroid/widget/ProgressBar;

.field private final refreshBannerRunnable:Ljava/lang/Runnable;

.field private final tryLoadSdkBannerAgainRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/util/Map;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->currentlyLoadingAdapterIndex:I

    .line 35
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->noBannerAvailable:Z

    .line 188
    new-instance v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager$$ExternalSyntheticLambda1;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->refreshBannerRunnable:Ljava/lang/Runnable;

    .line 193
    new-instance v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager$$ExternalSyntheticLambda2;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->nextAdapterTryLoadBannerRunnable:Ljava/lang/Runnable;

    .line 199
    new-instance v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager$$ExternalSyntheticLambda3;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->tryLoadSdkBannerAgainRunnable:Ljava/lang/Runnable;

    .line 48
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerPlacementIdMap:Ljava/util/Map;

    .line 49
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->context:Landroid/content/Context;

    .line 50
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->handler:Landroid/os/Handler;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerAdaptersArrayList:Ljava/util/ArrayList;

    .line 52
    invoke-direct {p0, p3}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->init(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->currentlyLoadingAdapterIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->currentlyLoadingAdapterIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;)Landroid/widget/ProgressBar;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;)Ljava/lang/Runnable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->nextAdapterTryLoadBannerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->adViewContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;)Ljava/lang/Runnable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->refreshBannerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;)Ljava/lang/Integer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerRefreshRate:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerAdaptersArrayList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$702(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->noBannerAvailable:Z

    return p1
.end method

.method static synthetic access$800(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->loadBanner()V

    return-void
.end method

.method static synthetic access$900(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;)Ljava/lang/Runnable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->tryLoadSdkBannerAgainRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private init(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerPlacementIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v3}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_1
    move v2, v5

    goto :goto_2

    :sswitch_0
    const-string v2, "appnextSdk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    goto :goto_2

    :sswitch_1
    const-string v2, "facebookSdk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    goto :goto_2

    :sswitch_2
    const-string v2, "unitySdk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_3
    const-string v4, "admobSdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :sswitch_4
    const-string v2, "appodealSdk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerAdaptersArrayList:Ljava/util/ArrayList;

    new-instance v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppnextAdapter;

    iget-object v4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->context:Landroid/content/Context;

    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-direct {v3, v4, v1, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppnextAdapter;-><init>(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;Ljava/util/HashMap;)V

    .line 72
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerAdaptersArrayList:Ljava/util/ArrayList;

    new-instance v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerFacebookAdapter;

    iget-object v4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->context:Landroid/content/Context;

    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-direct {v3, v4, v1, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerFacebookAdapter;-><init>(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;Ljava/util/HashMap;)V

    .line 78
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 84
    :pswitch_2
    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerAdaptersArrayList:Ljava/util/ArrayList;

    new-instance v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;

    iget-object v4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->context:Landroid/content/Context;

    .line 85
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-direct {v3, v4, v1, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerUnityAdapter;-><init>(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;Ljava/util/HashMap;)V

    .line 84
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 66
    :pswitch_3
    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerAdaptersArrayList:Ljava/util/ArrayList;

    new-instance v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;

    iget-object v4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->context:Landroid/content/Context;

    .line 67
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-direct {v3, v4, v1, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;-><init>(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;Ljava/util/HashMap;)V

    .line 66
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 60
    :pswitch_4
    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerAdaptersArrayList:Ljava/util/ArrayList;

    new-instance v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;

    iget-object v4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->context:Landroid/content/Context;

    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-direct {v3, v4, v1, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;-><init>(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;Ljava/util/HashMap;)V

    .line 60
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 92
    :cond_6
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerAdaptersArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v2, :cond_7

    .line 93
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerAdaptersArrayList:Ljava/util/ArrayList;

    new-instance v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x70d1e200 -> :sswitch_4
        -0x39749d03 -> :sswitch_3
        -0x1161437b -> :sswitch_2
        0x391b6b94 -> :sswitch_1
        0x4e5fff06 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$init$0(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerBaseAdapter;Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerBaseAdapter;)I
    .locals 0

    .line 94
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerBaseAdapter;->getPriority()I

    move-result p1

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerBaseAdapter;->getPriority()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private loadBanner()V
    .locals 5

    .line 125
    const-string v0, "Banner load attempt"

    const-string v1, "multiAdsTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerAdaptersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->adViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 128
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->noBannerAvailable:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v0, :cond_2

    iget v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->currentlyLoadingAdapterIndex:I

    iget-object v4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerAdaptersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    const-string v0, "SDK banner load attempt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->backfillAdView:Lcom/appsgeyser/sdk/ads/AdView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 145
    invoke-static {v0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->setAdView(Lcom/appsgeyser/sdk/ads/AdView;)V

    .line 146
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->backfillAdView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/ads/AdView;->onPause()V

    .line 147
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->backfillAdView:Lcom/appsgeyser/sdk/ads/AdView;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->adViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerAdaptersArrayList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->currentlyLoadingAdapterIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface;

    .line 152
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager$1;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;)V

    invoke-interface {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface;->setListener(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface$BannerListener;)V

    .line 183
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->adViewContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface;->loadBanner(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 129
    :cond_2
    :goto_0
    const-string v0, "SDK banners unavailable, proceeding to HTML"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 131
    new-instance v0, Lcom/appsgeyser/sdk/ads/AdView;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsgeyser/sdk/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->backfillAdView:Lcom/appsgeyser/sdk/ads/AdView;

    .line 132
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->context:Landroid/content/Context;

    .line 134
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 136
    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 137
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->backfillAdView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/appsgeyser/sdk/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->adViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->backfillAdView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->backfillAdView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-static {v0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->setAdView(Lcom/appsgeyser/sdk/ads/AdView;)V

    .line 140
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->adViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->backfillAdView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->onResume()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public initBannerView(Landroid/view/ViewGroup;Ljava/lang/Integer;)V
    .locals 3

    .line 100
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerRefreshRate:Ljava/lang/Integer;

    .line 101
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerViewContainer:Landroid/view/ViewGroup;

    .line 103
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->context:Landroid/content/Context;

    .line 106
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x42480000    # 50.0f

    .line 105
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, -0x1

    invoke-direct {p2, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 107
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->progressBar:Landroid/widget/ProgressBar;

    .line 108
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 112
    new-instance p2, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->adViewContainer:Landroid/widget/RelativeLayout;

    .line 113
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 115
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 116
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->adViewContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 117
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->adViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->adViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 121
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->loadBanner()V

    return-void
.end method

.method synthetic lambda$new$1$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-banner-MultiAdsBannerManager()V
    .locals 2

    .line 189
    const-string v0, "multiAdsTag"

    const-string v1, "Attempting to refresh banner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->loadBanner()V

    return-void
.end method

.method synthetic lambda$new$2$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-banner-MultiAdsBannerManager()V
    .locals 2

    .line 194
    const-string v0, "multiAdsTag"

    const-string v1, "Banner load failed, proceeding to next adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->currentlyLoadingAdapterIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->currentlyLoadingAdapterIndex:I

    .line 196
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->loadBanner()V

    return-void
.end method

.method synthetic lambda$new$3$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-banner-MultiAdsBannerManager()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->noBannerAvailable:Z

    .line 201
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->loadBanner()V

    .line 202
    const-string v0, "multiAdsTag"

    const-string v1, "Banner loading block disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerAdaptersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface;

    .line 223
    invoke-interface {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->refreshBannerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerAdaptersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface;

    .line 211
    invoke-interface {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface;->onPause()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerManager;->bannerAdaptersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface;

    .line 217
    invoke-interface {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method
