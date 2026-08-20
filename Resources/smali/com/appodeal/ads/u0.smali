.class public final Lcom/appodeal/ads/u0;
.super Lcom/appodeal/ads/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/g<",
        "Lcom/appodeal/ads/w0;",
        "Lcom/appodeal/ads/v0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/BannerCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/w0;

    check-cast p2, Lcom/appodeal/ads/v0;

    .line 1
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_CLICKED:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string p3, "Banner"

    invoke-static {p3, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p1, p0, Lcom/appodeal/ads/u0;->a:Lcom/appodeal/ads/BannerCallbacks;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/appodeal/ads/BannerCallbacks;->onBannerClicked()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 1

    check-cast p1, Lcom/appodeal/ads/w0;

    check-cast p2, Lcom/appodeal/ads/v0;

    .line 1
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_EXPIRED:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v0, "Banner"

    invoke-static {v0, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p1, p0, Lcom/appodeal/ads/u0;->a:Lcom/appodeal/ads/BannerCallbacks;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/appodeal/ads/BannerCallbacks;->onBannerExpired()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/w0;

    check-cast p2, Lcom/appodeal/ads/v0;

    .line 2
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_SHOW_FAILED:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string p3, "Banner"

    invoke-static {p3, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p1, p0, Lcom/appodeal/ads/u0;->a:Lcom/appodeal/ads/BannerCallbacks;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/appodeal/ads/BannerCallbacks;->onBannerShowFailed()V

    :cond_0
    return-void
.end method

.method public final c(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/w0;

    check-cast p2, Lcom/appodeal/ads/v0;

    .line 1
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_SHOWN:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string p3, "Banner"

    invoke-static {p3, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p1, p0, Lcom/appodeal/ads/u0;->a:Lcom/appodeal/ads/BannerCallbacks;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/appodeal/ads/BannerCallbacks;->onBannerShown()V

    :cond_0
    return-void
.end method

.method public final d(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 1

    check-cast p1, Lcom/appodeal/ads/w0;

    check-cast p2, Lcom/appodeal/ads/v0;

    .line 1
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_LOAD_FAILED:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v0, "Banner"

    invoke-static {v0, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p1, p0, Lcom/appodeal/ads/u0;->a:Lcom/appodeal/ads/BannerCallbacks;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/appodeal/ads/BannerCallbacks;->onBannerFailedToLoad()V

    :cond_0
    return-void
.end method

.method public final e(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 3

    check-cast p1, Lcom/appodeal/ads/w0;

    check-cast p2, Lcom/appodeal/ads/v0;

    .line 1
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_LOADED:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/appodeal/ads/v0;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/appodeal/ads/l;->isPrecache()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "height: %sdp, isPrecache: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v2, "Banner"

    invoke-static {v2, p1, v0, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p1, p0, Lcom/appodeal/ads/u0;->a:Lcom/appodeal/ads/BannerCallbacks;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/appodeal/ads/v0;->m()I

    move-result v0

    invoke-virtual {p2}, Lcom/appodeal/ads/l;->isPrecache()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/appodeal/ads/BannerCallbacks;->onBannerLoaded(IZ)V

    :cond_0
    return-void
.end method
