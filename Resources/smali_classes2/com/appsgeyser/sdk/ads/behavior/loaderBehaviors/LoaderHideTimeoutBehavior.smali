.class public Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderHideTimeoutBehavior;
.super Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderBehavior;
.source "LoaderHideTimeoutBehavior.java"


# instance fields
.field private final timeOut:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderBehavior;-><init>()V

    .line 10
    iput p1, p0, Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderHideTimeoutBehavior;->timeOut:F

    return-void
.end method


# virtual methods
.method public visit(Lcom/appsgeyser/sdk/ads/AdsLoader;)V
    .locals 1

    .line 15
    iget v0, p0, Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderHideTimeoutBehavior;->timeOut:F

    invoke-virtual {p1, v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->setHideTimeout(F)V

    return-void
.end method
