.class public final Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedNativeParams;Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;Lcom/appodeal/ads/unified/UnifiedNativeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedNativeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$a;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$a;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdClicked()V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$a;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->printError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$a;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-static {p1}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;->mapError(Lcom/google/android/gms/ads/LoadAdError;)Lcom/appodeal/ads/networking/LoadingError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onAdOpened()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$a;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdClicked()V

    return-void
.end method
