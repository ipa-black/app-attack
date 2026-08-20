.class Lcom/appsgeyser/sdk/ads/AdsHeaderReceiver;
.super Ljava/lang/Object;
.source "AdsHeaderReceiver.java"

# interfaces
.implements Lcom/appsgeyser/sdk/ads/AdsLoader$AdsLoadingFinishedListener;
.implements Lcom/appsgeyser/sdk/ads/AdsLoader$HeadersReceiver;


# instance fields
.field private final adView:Lcom/appsgeyser/sdk/ads/AdView;

.field private final adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

.field private lastResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/AdView;Lcom/appsgeyser/sdk/ads/AdsLoader;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/AdsHeaderReceiver;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    .line 18
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsHeaderReceiver;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    return-void
.end method

.method private applyBehaviors(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appsgeyser/sdk/ads/behavior/BehaviorVisitor;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/sdk/ads/behavior/BehaviorVisitor;

    .line 37
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdsHeaderReceiver;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-virtual {v1, v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->acceptBehavior(Lcom/appsgeyser/sdk/ads/behavior/BehaviorVisitor;)V

    .line 38
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdsHeaderReceiver;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/appsgeyser/sdk/ads/AdView;->acceptBehavior(Lcom/appsgeyser/sdk/ads/behavior/BehaviorVisitor;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onAdHeadersReceived(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsHeaderReceiver;->lastResponseHeaders:Ljava/util/Map;

    const/4 p1, 0x1

    return p1
.end method

.method public onAdLoadFinished()V
    .locals 2

    .line 30
    new-instance v0, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdsHeaderReceiver;->lastResponseHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory;->createPostloadBehaviors(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 32
    invoke-direct {p0, v0}, Lcom/appsgeyser/sdk/ads/AdsHeaderReceiver;->applyBehaviors(Ljava/util/List;)V

    return-void
.end method
