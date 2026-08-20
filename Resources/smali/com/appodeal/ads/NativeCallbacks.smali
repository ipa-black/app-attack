.class public interface abstract Lcom/appodeal/ads/NativeCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0008\u0010\u0007\u001a\u00020\u0003H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0012\u0010\t\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/appodeal/ads/NativeCallbacks;",
        "",
        "onNativeClicked",
        "",
        "nativeAd",
        "Lcom/appodeal/ads/NativeAd;",
        "onNativeExpired",
        "onNativeFailedToLoad",
        "onNativeLoaded",
        "onNativeShowFailed",
        "onNativeShown",
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
.method public abstract onNativeClicked(Lcom/appodeal/ads/NativeAd;)V
.end method

.method public abstract onNativeExpired()V
.end method

.method public abstract onNativeFailedToLoad()V
.end method

.method public abstract onNativeLoaded()V
.end method

.method public abstract onNativeShowFailed(Lcom/appodeal/ads/NativeAd;)V
.end method

.method public abstract onNativeShown(Lcom/appodeal/ads/NativeAd;)V
.end method
