.class public abstract Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec;
.super Lcom/appodeal/ads/unified/UnifiedMrec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdViewType:",
        "Lcom/google/android/gms/ads/BaseAdView;",
        "AdRequestType:",
        "Lcom/google/android/gms/ads/AdRequest;",
        ">",
        "Lcom/appodeal/ads/unified/UnifiedMrec<",
        "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams<",
        "TAdRequestType;>;>;"
    }
.end annotation


# instance fields
.field private adView:Lcom/google/android/gms/ads/BaseAdView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdViewType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedMrec;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createAdView(Landroid/content/Context;)Lcom/google/android/gms/ads/BaseAdView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TAdViewType;"
        }
    .end annotation
.end method

.method public bridge synthetic load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedMrecParams;

    check-cast p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedMrecParams;Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;Lcom/appodeal/ads/unified/UnifiedMrecCallback;)V

    return-void
.end method

.method public load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedMrecParams;Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;Lcom/appodeal/ads/unified/UnifiedMrecCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/unified/UnifiedMrecParams;",
            "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams<",
            "TAdRequestType;>;",
            "Lcom/appodeal/ads/unified/UnifiedMrecCallback;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec;->createAdView(Landroid/content/Context;)Lcom/google/android/gms/ads/BaseAdView;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec;->adView:Lcom/google/android/gms/ads/BaseAdView;

    iget-object p2, p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec;->adView:Lcom/google/android/gms/ads/BaseAdView;

    sget-object p2, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    iget-object p1, p0, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec;->adView:Lcom/google/android/gms/ads/BaseAdView;

    new-instance p2, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec$a;

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec;->adView:Lcom/google/android/gms/ads/BaseAdView;

    invoke-direct {p2, v0, p4}, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec$a;-><init>(Lcom/google/android/gms/ads/BaseAdView;Lcom/appodeal/ads/unified/UnifiedMrecCallback;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object p1, p0, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec;->adView:Lcom/google/android/gms/ads/BaseAdView;

    iget-object p2, p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->request:Lcom/google/android/gms/ads/AdRequest;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec;->adView:Lcom/google/android/gms/ads/BaseAdView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec;->adView:Lcom/google/android/gms/ads/BaseAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->destroy()V

    iput-object v1, p0, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec;->adView:Lcom/google/android/gms/ads/BaseAdView;

    :cond_0
    return-void
.end method
