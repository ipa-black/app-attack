.class public interface abstract Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface$BannerListener;
.super Ljava/lang/Object;
.source "MultiAdsBannerInterface.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BannerListener"
.end annotation


# virtual methods
.method public abstract onBannerClicked()V
.end method

.method public abstract onBannerError(Ljava/lang/String;)V
.end method

.method public abstract onBannerLoaded()V
.end method
