.class public final Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdViewType:",
        "Lcom/google/android/gms/ads/BaseAdView;",
        ">",
        "Lcom/google/android/gms/ads/AdListener;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/ads/BaseAdView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdViewType;"
        }
    .end annotation
.end field

.field public final b:Lcom/appodeal/ads/unified/UnifiedMrecCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/BaseAdView;Lcom/appodeal/ads/unified/UnifiedMrecCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdViewType;",
            "Lcom/appodeal/ads/unified/UnifiedMrecCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    iput-object p2, p0, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec$a;->b:Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    iput-object p1, p0, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec$a;->a:Lcom/google/android/gms/ads/BaseAdView;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec$a;->b:Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedMrecCallback;->onAdClicked()V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec$a;->b:Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/unified/UnifiedMrecCallback;->printError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec$a;->b:Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    invoke-static {p1}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;->mapError(Lcom/google/android/gms/ads/LoadAdError;)Lcom/appodeal/ads/networking/LoadingError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/UnifiedMrecCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec$a;->b:Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec$a;->a:Lcom/google/android/gms/ads/BaseAdView;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/unified/UnifiedMrecCallback;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method
