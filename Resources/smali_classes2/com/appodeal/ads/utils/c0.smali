.class public abstract Lcom/appodeal/ads/utils/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/utils/app/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;Lcom/appodeal/ads/utils/app/AppState;)V
.end method

.method public abstract a(Landroid/content/res/Configuration;)V
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    sget-object p2, Lcom/appodeal/ads/utils/app/AppState;->Created:Lcom/appodeal/ads/utils/app/AppState;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/utils/c0;->a(Landroid/app/Activity;Lcom/appodeal/ads/utils/app/AppState;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/utils/app/AppState;->Destroyed:Lcom/appodeal/ads/utils/app/AppState;

    invoke-virtual {p0, p1, v0}, Lcom/appodeal/ads/utils/c0;->a(Landroid/app/Activity;Lcom/appodeal/ads/utils/app/AppState;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/utils/app/AppState;->Paused:Lcom/appodeal/ads/utils/app/AppState;

    invoke-virtual {p0, p1, v0}, Lcom/appodeal/ads/utils/c0;->a(Landroid/app/Activity;Lcom/appodeal/ads/utils/app/AppState;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/utils/app/AppState;->Resumed:Lcom/appodeal/ads/utils/app/AppState;

    invoke-virtual {p0, p1, v0}, Lcom/appodeal/ads/utils/c0;->a(Landroid/app/Activity;Lcom/appodeal/ads/utils/app/AppState;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/utils/app/AppState;->Started:Lcom/appodeal/ads/utils/app/AppState;

    invoke-virtual {p0, p1, v0}, Lcom/appodeal/ads/utils/c0;->a(Landroid/app/Activity;Lcom/appodeal/ads/utils/app/AppState;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/utils/app/AppState;->Stopped:Lcom/appodeal/ads/utils/app/AppState;

    invoke-virtual {p0, p1, v0}, Lcom/appodeal/ads/utils/c0;->a(Landroid/app/Activity;Lcom/appodeal/ads/utils/app/AppState;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/utils/c0;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method
