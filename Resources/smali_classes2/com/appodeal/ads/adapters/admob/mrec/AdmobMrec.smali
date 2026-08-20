.class public Lcom/appodeal/ads/adapters/admob/mrec/AdmobMrec;
.super Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec<",
        "Lcom/google/android/gms/ads/AdView;",
        "Lcom/google/android/gms/ads/AdRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdView(Landroid/content/Context;)Lcom/google/android/gms/ads/AdView;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic createAdView(Landroid/content/Context;)Lcom/google/android/gms/ads/BaseAdView;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/adapters/admob/mrec/AdmobMrec;->createAdView(Landroid/content/Context;)Lcom/google/android/gms/ads/AdView;

    move-result-object p1

    return-object p1
.end method
