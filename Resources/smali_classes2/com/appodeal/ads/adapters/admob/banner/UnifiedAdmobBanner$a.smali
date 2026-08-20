.class public final Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdViewType:",
        "Lcom/google/android/gms/ads/BaseAdView;",
        "AdRequestType:",
        "Lcom/google/android/gms/ads/AdRequest;",
        ">",
        "Lcom/google/android/gms/ads/AdListener;"
    }
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner<",
            "TAdViewType;TAdRequestType;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

.field public final c:Lcom/google/android/gms/ads/BaseAdView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdViewType;"
        }
    .end annotation
.end field

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;Lcom/appodeal/ads/unified/UnifiedBannerCallback;Lcom/google/android/gms/ads/BaseAdView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner<",
            "TAdViewType;TAdRequestType;>;",
            "Lcom/appodeal/ads/unified/UnifiedBannerCallback;",
            "TAdViewType;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner$a;->a:Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner$a;->b:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    iput-object p3, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner$a;->c:Lcom/google/android/gms/ads/BaseAdView;

    iput p4, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner$a;->d:I

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner$a;->b:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedBannerCallback;->onAdClicked()V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner$a;->b:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/unified/UnifiedBannerCallback;->printError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner$a;->b:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-static {p1}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;->mapError(Lcom/google/android/gms/ads/LoadAdError;)Lcom/appodeal/ads/networking/LoadingError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/UnifiedBannerCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner$a;->c:Lcom/google/android/gms/ads/BaseAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner$a;->a:Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/unified/UnifiedBanner;->setRefreshOnRotate(Z)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner$a;->b:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner$a;->c:Lcom/google/android/gms/ads/BaseAdView;

    iget v2, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner$a;->d:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/appodeal/ads/unified/UnifiedBannerCallback;->onAdLoaded(Landroid/view/View;II)V

    return-void
.end method
