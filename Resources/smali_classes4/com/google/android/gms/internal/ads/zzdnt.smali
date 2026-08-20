.class public final Lcom/google/android/gms/internal/ads/zzdnt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdgt;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdls;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgt;Lcom/google/android/gms/internal/ads/zzdls;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zza:Lcom/google/android/gms/internal/ads/zzdgt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zzb:Lcom/google/android/gms/internal/ads/zzdls;

    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zza:Lcom/google/android/gms/internal/ads/zzdgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgt;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zzb:Lcom/google/android/gms/internal/ads/zzdls;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdls;->zzb()V

    return-void
.end method

.method public final zzbE()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zza:Lcom/google/android/gms/internal/ads/zzdgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgt;->zzbE()V

    return-void
.end method

.method public final zzbM()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zza:Lcom/google/android/gms/internal/ads/zzdgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgt;->zzbM()V

    return-void
.end method

.method public final zzbs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zza:Lcom/google/android/gms/internal/ads/zzdgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgt;->zzbs()V

    return-void
.end method

.method public final zze()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zza:Lcom/google/android/gms/internal/ads/zzdgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgt;->zze()V

    return-void
.end method

.method public final zzf(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zza:Lcom/google/android/gms/internal/ads/zzdgt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdgt;->zzf(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zzb:Lcom/google/android/gms/internal/ads/zzdls;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdls;->zza()V

    return-void
.end method
