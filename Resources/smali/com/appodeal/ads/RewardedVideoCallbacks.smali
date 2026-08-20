.class public interface abstract Lcom/appodeal/ads/RewardedVideoCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0003H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u001a\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0006H&J\u0008\u0010\u0010\u001a\u00020\u0003H&J\u0008\u0010\u0011\u001a\u00020\u0003H&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/appodeal/ads/RewardedVideoCallbacks;",
        "",
        "onRewardedVideoClicked",
        "",
        "onRewardedVideoClosed",
        "finished",
        "",
        "onRewardedVideoExpired",
        "onRewardedVideoFailedToLoad",
        "onRewardedVideoFinished",
        "amount",
        "",
        "currency",
        "",
        "onRewardedVideoLoaded",
        "isPrecache",
        "onRewardedVideoShowFailed",
        "onRewardedVideoShown",
        "apd_public"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onRewardedVideoClicked()V
.end method

.method public abstract onRewardedVideoClosed(Z)V
.end method

.method public abstract onRewardedVideoExpired()V
.end method

.method public abstract onRewardedVideoFailedToLoad()V
.end method

.method public abstract onRewardedVideoFinished(DLjava/lang/String;)V
.end method

.method public abstract onRewardedVideoLoaded(Z)V
.end method

.method public abstract onRewardedVideoShowFailed()V
.end method

.method public abstract onRewardedVideoShown()V
.end method
