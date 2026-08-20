.class public Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;
.super Ljava/lang/Object;
.source "RewardedAdHelper.java"


# instance fields
.field private configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

.field private context:Landroid/content/Context;

.field private currentlyLoadingSdkIndex:I

.field private indexOfLoadedSdk:I

.field private loadingProcess:Z

.field private noVideoAvailable:Z

.field private pendingListener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

.field private progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

.field private rewardedVideoFacades:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->currentlyLoadingSdkIndex:I

    const/4 v1, -0x1

    .line 32
    iput v1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->indexOfLoadedSdk:I

    .line 33
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->noVideoAvailable:Z

    .line 34
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->loadingProcess:Z

    .line 40
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    .line 41
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->context:Landroid/content/Context;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->rewardedVideoFacades:Ljava/util/ArrayList;

    .line 43
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->indexOfLoadedSdk:I

    return p1
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->currentlyLoadingSdkIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->currentlyLoadingSdkIndex:I

    return p1
.end method

.method static synthetic access$108(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)I
    .locals 2

    .line 26
    iget v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->currentlyLoadingSdkIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->currentlyLoadingSdkIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->loadingProcess:Z

    return p1
.end method

.method static synthetic access$300(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->pendingListener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->createDefaultListener(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->preloadVideo()V

    return-void
.end method

.method static synthetic access$700(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->rewardedVideoFacades:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$802(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->noVideoAvailable:Z

    return p1
.end method

.method private createDefaultListener(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;
    .locals 1

    .line 128
    new-instance v0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$3;-><init>(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)V

    return-object v0
.end method

.method private init()V
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getRewardedVideoSdk()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "appnextSdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->rewardedVideoFacades:Ljava/util/ArrayList;

    new-instance v2, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    invoke-direct {v2, v3, v4}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;-><init>(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->rewardedVideoFacades:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 58
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->rewardedVideoFacades:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$1;-><init>(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    :cond_3
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->preloadVideo()V

    return-void
.end method

.method private preloadVideo()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->rewardedVideoFacades:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->loadingProcess:Z

    .line 72
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->rewardedVideoFacades:Ljava/util/ArrayList;

    iget v1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->currentlyLoadingSdkIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;

    .line 73
    new-instance v1, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;

    invoke-direct {v1, p0, v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;-><init>(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;)V

    invoke-interface {v0, v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;->setListener(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)V

    .line 123
    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;->loadRewardedVideo()V

    :cond_0
    return-void
.end method


# virtual methods
.method public loadRewardedVideo(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)V
    .locals 2

    .line 167
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->noVideoAvailable:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->indexOfLoadedSdk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->loadingProcess:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-boolean v1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->loadingProcess:Z

    if-eqz v1, :cond_1

    .line 170
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->pendingListener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    .line 171
    new-instance p1, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 172
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->show()V

    goto :goto_1

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->rewardedVideoFacades:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;

    .line 175
    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;->isVideoLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->createDefaultListener(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;->setListener(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)V

    .line 177
    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;->onVideoLoaded()V

    goto :goto_1

    .line 179
    :cond_2
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->preloadVideo()V

    .line 180
    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->loadRewardedVideo(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)V

    goto :goto_1

    .line 168
    :cond_3
    :goto_0
    const-string v0, "No video available at the moment"

    invoke-interface {p1, v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;->onVideoError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->rewardedVideoFacades:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;

    .line 213
    invoke-interface {v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->rewardedVideoFacades:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;

    .line 201
    invoke-interface {v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->rewardedVideoFacades:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;

    .line 207
    invoke-interface {v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->context:Landroid/content/Context;

    return-void
.end method

.method public showRewardedVideo()V
    .locals 3

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "indexOfLoadedSdk = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->indexOfLoadedSdk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rewardedVideoFacades.get(indexOfLoadedSdk).isVideoLoaded() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->rewardedVideoFacades:Ljava/util/ArrayList;

    iget v2, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->indexOfLoadedSdk:I

    .line 188
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;

    invoke-interface {v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;->isVideoLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v1, "RewVideoCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->indexOfLoadedSdk:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->rewardedVideoFacades:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;->isVideoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->rewardedVideoFacades:Ljava/util/ArrayList;

    iget v1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->indexOfLoadedSdk:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;

    .line 191
    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;->showRewardedVideo()V

    :cond_0
    return-void
.end method
