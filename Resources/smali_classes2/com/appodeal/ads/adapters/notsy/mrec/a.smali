.class public final Lcom/appodeal/ads/adapters/notsy/mrec/a;
.super Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/adapters/admob/mrec/UnifiedAdmobMrec<",
        "Lcom/google/android/gms/ads/admanager/AdManagerAdView;",
        "Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;",
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
.method public final createAdView(Landroid/content/Context;)Lcom/google/android/gms/ads/BaseAdView;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
