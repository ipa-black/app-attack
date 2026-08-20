.class public final synthetic Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# instance fields
.field public final synthetic f$0:Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative;

.field public final synthetic f$1:Lcom/appodeal/ads/unified/UnifiedNativeCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative;Lcom/appodeal/ads/unified/UnifiedNativeCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$$ExternalSyntheticLambda0;->f$0:Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$$ExternalSyntheticLambda0;->f$1:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    return-void
.end method


# virtual methods
.method public final onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$$ExternalSyntheticLambda0;->f$0:Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative$$ExternalSyntheticLambda0;->f$1:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-virtual {v0, v1, p1}, Lcom/appodeal/ads/adapters/admob/native_ad/UnifiedAdmobNative;->lambda$load$0$com-appodeal-ads-adapters-admob-native_ad-UnifiedAdmobNative(Lcom/appodeal/ads/unified/UnifiedNativeCallback;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method
