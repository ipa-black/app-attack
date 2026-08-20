.class public final Lcom/appodeal/ads/p4;
.super Lcom/appodeal/ads/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/g<",
        "Lcom/appodeal/ads/n4;",
        "Lcom/appodeal/ads/m4;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/RewardedVideoCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 3

    check-cast p1, Lcom/appodeal/ads/n4;

    check-cast p2, Lcom/appodeal/ads/m4;

    .line 2
    sget-object p2, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_CLOSED:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/appodeal/ads/r;->s()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "finished: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v2, "RewardedVideo"

    invoke-static {v2, p2, v0, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p2, p0, Lcom/appodeal/ads/p4;->a:Lcom/appodeal/ads/RewardedVideoCallbacks;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/appodeal/ads/r;->s()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/appodeal/ads/RewardedVideoCallbacks;->onRewardedVideoClosed(Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/n4;

    check-cast p2, Lcom/appodeal/ads/m4;

    .line 1
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_CLICKED:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string p3, "RewardedVideo"

    invoke-static {p3, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p1, p0, Lcom/appodeal/ads/p4;->a:Lcom/appodeal/ads/RewardedVideoCallbacks;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/appodeal/ads/RewardedVideoCallbacks;->onRewardedVideoClicked()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 1

    check-cast p1, Lcom/appodeal/ads/n4;

    check-cast p2, Lcom/appodeal/ads/m4;

    .line 1
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_EXPIRED:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v0, "RewardedVideo"

    invoke-static {v0, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p1, p0, Lcom/appodeal/ads/p4;->a:Lcom/appodeal/ads/RewardedVideoCallbacks;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/appodeal/ads/RewardedVideoCallbacks;->onRewardedVideoExpired()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/n4;

    check-cast p2, Lcom/appodeal/ads/m4;

    .line 2
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_SHOW_FAILED:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string p3, "RewardedVideo"

    invoke-static {p3, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p1, p0, Lcom/appodeal/ads/p4;->a:Lcom/appodeal/ads/RewardedVideoCallbacks;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/appodeal/ads/RewardedVideoCallbacks;->onRewardedVideoShowFailed()V

    :cond_0
    return-void
.end method

.method public final c(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 2

    check-cast p1, Lcom/appodeal/ads/n4;

    check-cast p2, Lcom/appodeal/ads/m4;

    .line 1
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_FINISHED:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v0, "RewardedVideo"

    invoke-static {v0, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p1, p0, Lcom/appodeal/ads/p4;->a:Lcom/appodeal/ads/RewardedVideoCallbacks;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/appodeal/ads/o4;->c()D

    move-result-wide v0

    invoke-static {}, Lcom/appodeal/ads/o4;->d()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/appodeal/ads/RewardedVideoCallbacks;->onRewardedVideoFinished(DLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/n4;

    check-cast p2, Lcom/appodeal/ads/m4;

    .line 2
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_SHOWN:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string p3, "RewardedVideo"

    invoke-static {p3, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p1, p0, Lcom/appodeal/ads/p4;->a:Lcom/appodeal/ads/RewardedVideoCallbacks;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/appodeal/ads/RewardedVideoCallbacks;->onRewardedVideoShown()V

    :cond_0
    return-void
.end method

.method public final d(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 1

    check-cast p1, Lcom/appodeal/ads/n4;

    check-cast p2, Lcom/appodeal/ads/m4;

    .line 1
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_LOAD_FAILED:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v0, "RewardedVideo"

    invoke-static {v0, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p1, p0, Lcom/appodeal/ads/p4;->a:Lcom/appodeal/ads/RewardedVideoCallbacks;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/appodeal/ads/RewardedVideoCallbacks;->onRewardedVideoFailedToLoad()V

    :cond_0
    return-void
.end method

.method public final e(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 3

    check-cast p1, Lcom/appodeal/ads/n4;

    check-cast p2, Lcom/appodeal/ads/m4;

    .line 1
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_LOADED:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/appodeal/ads/l;->isPrecache()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "isPrecache: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v2, "RewardedVideo"

    invoke-static {v2, p1, v0, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p1, p0, Lcom/appodeal/ads/p4;->a:Lcom/appodeal/ads/RewardedVideoCallbacks;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/appodeal/ads/l;->isPrecache()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/appodeal/ads/RewardedVideoCallbacks;->onRewardedVideoLoaded(Z)V

    :cond_0
    return-void
.end method
