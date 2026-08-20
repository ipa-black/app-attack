.class Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;
.super Ljava/lang/Object;
.source "AdColonyRewardListenerWrapper.java"

# interfaces
.implements Lcom/adcolony/sdk/AdColonyRewardListener;


# static fields
.field private static volatile instance:Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;->listeners:Ljava/util/List;

    return-void
.end method

.method static get()Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;
    .locals 2

    .line 19
    sget-object v0, Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;->instance:Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;->instance:Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;

    invoke-direct {v1}, Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;-><init>()V

    sput-object v1, Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;->instance:Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;

    .line 23
    sget-object v1, Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;->instance:Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;

    invoke-static {v1}, Lcom/adcolony/sdk/AdColony;->setRewardListener(Lcom/adcolony/sdk/AdColonyRewardListener;)Z

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;->instance:Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;

    return-object v0
.end method


# virtual methods
.method addListener(Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onReward(Lcom/adcolony/sdk/AdColonyReward;)V
    .locals 4

    .line 42
    iget-object v0, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;

    .line 43
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->getZoneID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->getZoneId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v1, p1}, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->onReward(Lcom/adcolony/sdk/AdColonyReward;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeListener(Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
