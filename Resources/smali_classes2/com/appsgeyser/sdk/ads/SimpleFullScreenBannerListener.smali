.class public Lcom/appsgeyser/sdk/ads/SimpleFullScreenBannerListener;
.super Ljava/lang/Object;
.source "SimpleFullScreenBannerListener.java"

# interfaces
.implements Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 25
    const-string v0, "on_exit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 26
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onAdHided(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 32
    const-string v0, "on_exit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 33
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onLoadFinished(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)V
    .locals 0

    .line 20
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->show()V

    return-void
.end method

.method public onLoadStarted()V
    .locals 0

    return-void
.end method
