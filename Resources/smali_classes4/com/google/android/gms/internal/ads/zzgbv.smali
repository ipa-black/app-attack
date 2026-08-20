.class final Lcom/google/android/gms/internal/ads/zzgbv;
.super Lcom/google/android/gms/internal/ads/zzgbu;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgbw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgbw;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbv;->zza:Lcom/google/android/gms/internal/ads/zzgbw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgbu;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgbf;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbv;->zza:Lcom/google/android/gms/internal/ads/zzgbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgbw;->zza()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgbt;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgbt;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgby;

    .line 2
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgby;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzfyu;)V

    return-object v2
.end method
