.class public Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lcom/google/android/gms/ads/AdRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final isMuted:Ljava/lang/Boolean;

.field public final key:Ljava/lang/String;

.field public final request:Lcom/google/android/gms/ads/AdRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestType;"
        }
    .end annotation
.end field

.field public final useAdaptiveBanner:Z

.field public final useSmartBanner:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdRequest;Ljava/lang/String;Ljava/lang/Boolean;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->isMuted:Ljava/lang/Boolean;

    iput-boolean p4, p0, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->useAdaptiveBanner:Z

    iput-boolean p5, p0, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->useSmartBanner:Z

    iput-object p1, p0, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->request:Lcom/google/android/gms/ads/AdRequest;

    return-void
.end method
