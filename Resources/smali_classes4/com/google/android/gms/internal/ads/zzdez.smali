.class public final Lcom/google/android/gms/internal/ads/zzdez;
.super Lcom/google/android/gms/internal/ads/zzdjx;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzder;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdjx;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdew;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdew;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdjx;->zzo(Lcom/google/android/gms/internal/ads/zzdjw;)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdex;->zza:Lcom/google/android/gms/internal/ads/zzdex;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdjx;->zzo(Lcom/google/android/gms/internal/ads/zzdjw;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzdod;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdey;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdey;-><init>(Lcom/google/android/gms/internal/ads/zzdod;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdjx;->zzo(Lcom/google/android/gms/internal/ads/zzdjw;)V

    return-void
.end method
