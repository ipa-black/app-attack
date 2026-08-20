.class public final Lcom/appodeal/ads/adapters/meta/native_ad/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/meta/native_ad/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

.field public final synthetic b:Lcom/appodeal/ads/adapters/meta/native_ad/a;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/adapters/meta/native_ad/a;Lcom/appodeal/ads/unified/UnifiedNativeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$a;->b:Lcom/appodeal/ads/adapters/meta/native_ad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$a;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$a;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdClicked()V

    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 4

    :try_start_0
    check-cast p1, Lcom/facebook/ads/NativeAdBase;

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$a;->b:Lcom/appodeal/ads/adapters/meta/native_ad/a;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appodeal/ads/adapters/meta/native_ad/a;->a(Lcom/appodeal/ads/adapters/meta/native_ad/a;Lcom/facebook/ads/NativeAdBase$Image;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$a;->b:Lcom/appodeal/ads/adapters/meta/native_ad/a;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appodeal/ads/adapters/meta/native_ad/a;->a(Lcom/appodeal/ads/adapters/meta/native_ad/a;Lcom/facebook/ads/NativeAdBase$Image;)Ljava/lang/String;

    move-result-object v1

    instance-of v2, p1, Lcom/facebook/ads/NativeBannerAd;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$a;->b:Lcom/appodeal/ads/adapters/meta/native_ad/a;

    new-instance v3, Lcom/appodeal/ads/adapters/meta/native_ad/a$c;

    check-cast p1, Lcom/facebook/ads/NativeBannerAd;

    invoke-direct {v3, p1, v1, v0}, Lcom/appodeal/ads/adapters/meta/native_ad/a$c;-><init>(Lcom/facebook/ads/NativeBannerAd;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v2, v3}, Lcom/appodeal/ads/adapters/meta/native_ad/a;->a(Lcom/appodeal/ads/adapters/meta/native_ad/a;Lcom/appodeal/ads/adapters/meta/native_ad/a$d;)V

    goto :goto_1

    :cond_0
    instance-of v2, p1, Lcom/facebook/ads/NativeAd;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$a;->b:Lcom/appodeal/ads/adapters/meta/native_ad/a;

    new-instance v3, Lcom/appodeal/ads/adapters/meta/native_ad/a$b;

    check-cast p1, Lcom/facebook/ads/NativeAd;

    invoke-direct {v3, p1, v1, v0}, Lcom/appodeal/ads/adapters/meta/native_ad/a$b;-><init>(Lcom/facebook/ads/NativeAd;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$a;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$a;->b:Lcom/appodeal/ads/adapters/meta/native_ad/a;

    invoke-static {v0}, Lcom/appodeal/ads/adapters/meta/native_ad/a;->a(Lcom/appodeal/ads/adapters/meta/native_ad/a;)Lcom/appodeal/ads/adapters/meta/native_ad/a$d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdLoaded(Lcom/appodeal/ads/unified/UnifiedNativeAd;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$a;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    sget-object v0, Lcom/appodeal/ads/networking/LoadingError;->NoFill:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$a;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    sget-object v0, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_2
    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->destroy()V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$a;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->printError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/native_ad/a$a;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-static {p2}, Lcom/appodeal/ads/adapters/meta/MetaNetwork;->mapError(Lcom/facebook/ads/AdError;)Lcom/appodeal/ads/networking/LoadingError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method

.method public final onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method
