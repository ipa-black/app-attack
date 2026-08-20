.class Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;
.super Ljava/lang/Object;
.source "IronSourceRewardedListener.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;


# instance fields
.field private final callback:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

.field private isAvailableStateReceived:Z

.field private final localInstanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;Z)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->localInstanceId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->callback:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    .line 25
    iput-boolean p3, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->isAvailableStateReceived:Z

    return-void
.end method


# virtual methods
.method public onRewardedVideoAdClicked(Ljava/lang/String;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->localInstanceId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->callback:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed(Ljava/lang/String;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->localInstanceId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->callback:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->localInstanceId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 57
    iget-boolean p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->isAvailableStateReceived:Z

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->callback:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdExpired()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 61
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->callback:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 61
    invoke-virtual {p1, v0, v1}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->printError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->callback:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p2

    invoke-static {p2}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->mapError(I)Lcom/appodeal/ads/LoadingError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdLoadFailed(Lcom/appodeal/ads/LoadingError;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->callback:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdLoadFailed(Lcom/appodeal/ads/LoadingError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRewardedVideoAdLoadSuccess(Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->localInstanceId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    iget-boolean p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->isAvailableStateReceived:Z

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->callback:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdExpired()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->isAvailableStateReceived:Z

    .line 49
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->callback:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdLoaded()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRewardedVideoAdOpened(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->localInstanceId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->callback:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdShown()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdRewarded(Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->localInstanceId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->callback:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdFinished()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->localInstanceId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 82
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->callback:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    .line 83
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 82
    invoke-virtual {p1, v0, p2}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->printError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;->callback:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdShowFailed()V

    :cond_1
    return-void
.end method
