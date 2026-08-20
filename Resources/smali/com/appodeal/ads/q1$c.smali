.class public abstract Lcom/appodeal/ads/q1$c;
.super Lcom/appodeal/ads/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lcom/appodeal/ads/r<",
        "TAdObjectType;>;AdObjectType:",
        "Lcom/appodeal/ads/l;",
        "RequestParamsType:",
        "Lcom/appodeal/ads/s;",
        ">",
        "Lcom/appodeal/ads/g<",
        "TAdRequestType;TAdObjectType;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/q1$c;

.field public b:Z

.field public c:Z

.field public d:Z

.field public final synthetic e:Lcom/appodeal/ads/q1;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/q1;)V
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-direct {p0}, Lcom/appodeal/ads/g;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/appodeal/ads/q1$c;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/q1$c;->c:Z

    iput-boolean p1, p0, Lcom/appodeal/ads/q1$c;->d:Z

    return-void
.end method

.method public static synthetic a(Lcom/appodeal/ads/q1$c;Lcom/appodeal/ads/q1$c;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/q1$c;->a:Lcom/appodeal/ads/q1$c;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/appodeal/ads/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;TRequestParamsType;>;"
        }
    .end annotation
.end method

.method public final a(Landroid/content/Context;Lcom/appodeal/ads/s;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TRequestParamsType;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/appodeal/ads/q1$c;->a()Lcom/appodeal/ads/u;

    move-result-object v0

    .line 1
    iget-boolean v1, p2, Lcom/appodeal/ads/s;->a:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/u;->b(Landroid/content/Context;Lcom/appodeal/ads/s;)V

    return-void

    .line 3
    :cond_0
    iget-boolean v1, v0, Lcom/appodeal/ads/u;->i:Z

    if-nez v1, :cond_1

    .line 4
    const-string p1, "Request Failed"

    const-string p2, "isn\'t initialized"

    const-string v0, "Interstitial"

    invoke-static {v0, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/appodeal/ads/q1$c;->c:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/appodeal/ads/q1$c;->c:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/appodeal/ads/q1$c;->b:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/q1$c;->d:Z

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5
    iget-boolean v4, v3, Lcom/appodeal/ads/r;->u:Z

    if-eqz v4, :cond_3

    .line 6
    iget-boolean v4, v0, Lcom/appodeal/ads/u;->j:Z

    if-nez v4, :cond_3

    .line 7
    iget-object p1, v3, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p1, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {p1}, Lcom/appodeal/ads/AdUnit;->isPrecache()Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    .line 9
    :cond_2
    invoke-virtual {p0, v1}, Lcom/appodeal/ads/q1$c;->a(Z)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/appodeal/ads/r;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    iget-boolean v1, v0, Lcom/appodeal/ads/u;->j:Z

    if-eqz v1, :cond_5

    .line 11
    :cond_4
    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/u;->b(Landroid/content/Context;Lcom/appodeal/ads/s;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;)V"
        }
    .end annotation

    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_CLOSED:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v0, "Interstitial"

    invoke-static {v0, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p1, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-static {p1}, Lcom/appodeal/ads/q1;->b(Lcom/appodeal/ads/q1;)Lcom/appodeal/ads/InterstitialCallbacks;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-static {p1}, Lcom/appodeal/ads/q1;->b(Lcom/appodeal/ads/q1;)Lcom/appodeal/ads/InterstitialCallbacks;

    move-result-object p1

    invoke-interface {p1}, Lcom/appodeal/ads/InterstitialCallbacks;->onInterstitialClosed()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_CLICKED:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string p3, "Interstitial"

    invoke-static {p3, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p1, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-static {p1}, Lcom/appodeal/ads/q1;->b(Lcom/appodeal/ads/q1;)Lcom/appodeal/ads/InterstitialCallbacks;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-static {p1}, Lcom/appodeal/ads/q1;->b(Lcom/appodeal/ads/q1;)Lcom/appodeal/ads/InterstitialCallbacks;

    move-result-object p1

    invoke-interface {p1}, Lcom/appodeal/ads/InterstitialCallbacks;->onInterstitialClicked()V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/q1$c;->d:Z

    iget-object v0, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-static {v0}, Lcom/appodeal/ads/q1;->a(Lcom/appodeal/ads/q1;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appodeal/ads/q1;->a(Lcom/appodeal/ads/q1;Z)V

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_LOADED:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "isPrecache: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v3, "Interstitial"

    invoke-static {v3, v0, v1, v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object v0, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-static {v0}, Lcom/appodeal/ads/q1;->b(Lcom/appodeal/ads/q1;)Lcom/appodeal/ads/InterstitialCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-static {v0}, Lcom/appodeal/ads/q1;->b(Lcom/appodeal/ads/q1;)Lcom/appodeal/ads/InterstitialCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appodeal/ads/InterstitialCallbacks;->onInterstitialLoaded(Z)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/appodeal/ads/q1$c;->a()Lcom/appodeal/ads/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/u;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/appodeal/ads/q1$c;->c:Z

    .line 2
    invoke-virtual {p0}, Lcom/appodeal/ads/q1$c;->a()Lcom/appodeal/ads/u;

    move-result-object p1

    sget-object p2, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    invoke-virtual {p2}, Lcom/appodeal/ads/context/b;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/u;->c(Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/q1$c;->a:Lcom/appodeal/ads/q1$c;

    invoke-virtual {p1}, Lcom/appodeal/ads/q1$c;->a()Lcom/appodeal/ads/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/appodeal/ads/r;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/appodeal/ads/q1$c;->a:Lcom/appodeal/ads/q1$c;

    invoke-virtual {p1}, Lcom/appodeal/ads/q1$c;->a()Lcom/appodeal/ads/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/u;->p()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    sget-object p1, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_EXPIRED:Ljava/lang/String;

    sget-object p2, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v0, "Interstitial"

    invoke-static {v0, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p1, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-static {p1}, Lcom/appodeal/ads/q1;->b(Lcom/appodeal/ads/q1;)Lcom/appodeal/ads/InterstitialCallbacks;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-static {p1}, Lcom/appodeal/ads/q1;->b(Lcom/appodeal/ads/q1;)Lcom/appodeal/ads/InterstitialCallbacks;

    move-result-object p1

    invoke-interface {p1}, Lcom/appodeal/ads/InterstitialCallbacks;->onInterstitialExpired()V

    :cond_2
    iget-object p1, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-static {p1}, Lcom/appodeal/ads/q1;->c(Lcom/appodeal/ads/q1;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/appodeal/ads/q1;->a(Lcom/appodeal/ads/q1;Z)V

    :cond_3
    return-void
.end method

.method public final b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appodeal/ads/q1$c;->d:Z

    sget-object p2, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_SHOW_FAILED:Ljava/lang/String;

    sget-object p3, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v0, "Interstitial"

    invoke-static {v0, p2, p3}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p2, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-static {p2}, Lcom/appodeal/ads/q1;->b(Lcom/appodeal/ads/q1;)Lcom/appodeal/ads/InterstitialCallbacks;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-static {p2}, Lcom/appodeal/ads/q1;->b(Lcom/appodeal/ads/q1;)Lcom/appodeal/ads/InterstitialCallbacks;

    move-result-object p2

    invoke-interface {p2}, Lcom/appodeal/ads/InterstitialCallbacks;->onInterstitialShowFailed()V

    :cond_0
    iget-object p2, p0, Lcom/appodeal/ads/q1$c;->a:Lcom/appodeal/ads/q1$c;

    iget-boolean p3, p2, Lcom/appodeal/ads/q1$c;->b:Z

    if-eqz p3, :cond_1

    iget-boolean p3, p2, Lcom/appodeal/ads/q1$c;->d:Z

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/appodeal/ads/q1$c;->a()Lcom/appodeal/ads/u;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appodeal/ads/u;->m()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    iput-boolean p1, p0, Lcom/appodeal/ads/q1$c;->c:Z

    iget-object p2, p0, Lcom/appodeal/ads/q1$c;->a:Lcom/appodeal/ads/q1$c;

    iget-boolean p3, p2, Lcom/appodeal/ads/q1$c;->b:Z

    if-eqz p3, :cond_2

    iget-boolean p3, p2, Lcom/appodeal/ads/q1$c;->d:Z

    if-eqz p3, :cond_2

    iput-boolean p1, p2, Lcom/appodeal/ads/q1$c;->c:Z

    :cond_2
    return-void
.end method

.method public final c(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object p2, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_SHOWN:Ljava/lang/String;

    sget-object p3, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v0, "Interstitial"

    invoke-static {v0, p2, p3}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p2, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-static {p2}, Lcom/appodeal/ads/q1;->b(Lcom/appodeal/ads/q1;)Lcom/appodeal/ads/InterstitialCallbacks;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-static {p2}, Lcom/appodeal/ads/q1;->b(Lcom/appodeal/ads/q1;)Lcom/appodeal/ads/InterstitialCallbacks;

    move-result-object p2

    invoke-interface {p2}, Lcom/appodeal/ads/InterstitialCallbacks;->onInterstitialShown()V

    :cond_0
    iget-object p2, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/appodeal/ads/q1;->a(Lcom/appodeal/ads/q1;Z)V

    iput-boolean p3, p0, Lcom/appodeal/ads/q1$c;->b:Z

    iput-boolean p3, p0, Lcom/appodeal/ads/q1$c;->d:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/appodeal/ads/q1$c;->c:Z

    iget-object p3, p0, Lcom/appodeal/ads/q1$c;->a:Lcom/appodeal/ads/q1$c;

    iget-boolean v0, p3, Lcom/appodeal/ads/q1$c;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p3, Lcom/appodeal/ads/q1$c;->d:Z

    if-eqz v0, :cond_1

    iput-boolean p2, p3, Lcom/appodeal/ads/q1$c;->c:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/appodeal/ads/q1$c;->a()Lcom/appodeal/ads/u;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appodeal/ads/u;->d()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getCode()I

    move-result p2

    invoke-static {p2}, Lcom/appodeal/ads/q4;->e(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/appodeal/ads/q1$c;->a:Lcom/appodeal/ads/q1$c;

    invoke-virtual {p2}, Lcom/appodeal/ads/q1$c;->a()Lcom/appodeal/ads/u;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appodeal/ads/u;->d()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getCode()I

    move-result p3

    invoke-static {p3}, Lcom/appodeal/ads/q4;->f(I)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/appodeal/ads/q1$c;->a(Z)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/appodeal/ads/r;->q()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/appodeal/ads/q1;->a()Lcom/appodeal/ads/q1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/q1;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/appodeal/ads/q1$c;->a()Lcom/appodeal/ads/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/appodeal/ads/r;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/q1$c;->a()Lcom/appodeal/ads/u;

    move-result-object p1

    sget-object p2, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    invoke-virtual {p2}, Lcom/appodeal/ads/context/b;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/u;->c(Landroid/content/Context;)V

    :cond_4
    return-void
.end method

.method public final d(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appodeal/ads/q1$c;->d:Z

    iget-object p2, p0, Lcom/appodeal/ads/q1$c;->a:Lcom/appodeal/ads/q1$c;

    iget-boolean v0, p2, Lcom/appodeal/ads/q1$c;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/appodeal/ads/q1$c;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/appodeal/ads/q1$c;->a()Lcom/appodeal/ads/u;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appodeal/ads/u;->m()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    iput-boolean p1, p0, Lcom/appodeal/ads/q1$c;->c:Z

    sget-object p2, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_LOAD_FAILED:Ljava/lang/String;

    sget-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v1, "Interstitial"

    invoke-static {v1, p2, v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iget-object p2, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-static {p2}, Lcom/appodeal/ads/q1;->b(Lcom/appodeal/ads/q1;)Lcom/appodeal/ads/InterstitialCallbacks;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/appodeal/ads/q1$c;->e:Lcom/appodeal/ads/q1;

    invoke-static {p2}, Lcom/appodeal/ads/q1;->b(Lcom/appodeal/ads/q1;)Lcom/appodeal/ads/InterstitialCallbacks;

    move-result-object p2

    invoke-interface {p2}, Lcom/appodeal/ads/InterstitialCallbacks;->onInterstitialFailedToLoad()V

    :cond_1
    iget-object p2, p0, Lcom/appodeal/ads/q1$c;->a:Lcom/appodeal/ads/q1$c;

    iget-boolean v0, p2, Lcom/appodeal/ads/q1$c;->b:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/appodeal/ads/q1$c;->d:Z

    if-eqz v0, :cond_2

    iput-boolean p1, p2, Lcom/appodeal/ads/q1$c;->c:Z

    :cond_2
    return-void
.end method

.method public final e(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {p1}, Lcom/appodeal/ads/AdUnit;->isPrecache()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/q1$c;->a(Z)V

    return-void
.end method
