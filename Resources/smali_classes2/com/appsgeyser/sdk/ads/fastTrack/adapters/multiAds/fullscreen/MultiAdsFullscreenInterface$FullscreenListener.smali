.class public interface abstract Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;
.super Ljava/lang/Object;
.source "MultiAdsFullscreenInterface.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FullscreenListener"
.end annotation


# virtual methods
.method public abstract onFullscreenClicked()V
.end method

.method public abstract onFullscreenClosed()V
.end method

.method public abstract onFullscreenError(Ljava/lang/String;)V
.end method

.method public abstract onFullscreenLoaded()V
.end method

.method public abstract onFullscreenOpened()V
.end method
