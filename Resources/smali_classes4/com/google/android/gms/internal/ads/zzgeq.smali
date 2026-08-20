.class public final Lcom/google/android/gms/internal/ads/zzgeq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Z

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgau;


# direct methods
.method synthetic constructor <init>(ZLcom/google/android/gms/internal/ads/zzgau;Lcom/google/android/gms/internal/ads/zzgep;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzb:Lcom/google/android/gms/internal/ads/zzgau;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgee;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzb:Lcom/google/android/gms/internal/ads/zzgau;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zza:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/android/gms/internal/ads/zzgee;-><init>(Lcom/google/android/gms/internal/ads/zzgap;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
