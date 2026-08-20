.class public abstract Lcom/appodeal/ads/unified/UnifiedAdCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAdClicked()V
.end method

.method public abstract onAdClicked(Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V
.end method

.method public abstract onAdExpired()V
.end method

.method public abstract onAdInfoRequested(Landroid/os/Bundle;)V
.end method

.method public abstract onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V
.end method

.method public abstract onAdShowFailed()V
.end method

.method public abstract printError(Ljava/lang/String;Ljava/lang/Object;)V
.end method
