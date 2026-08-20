.class final Lcom/google/android/gms/internal/ads/zzepm;
.super Lcom/google/android/gms/internal/ads/zzcdb;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdgt;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdel;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzdfu;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzdml;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzepn;Lcom/google/android/gms/internal/ads/zzdgt;Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzdfu;Lcom/google/android/gms/internal/ads/zzdml;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepm;->zza:Lcom/google/android/gms/internal/ads/zzdgt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzepm;->zzb:Lcom/google/android/gms/internal/ads/zzdel;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzepm;->zzc:Lcom/google/android/gms/internal/ads/zzdfu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzepm;->zzd:Lcom/google/android/gms/internal/ads/zzdml;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepm;->zzb:Lcom/google/android/gms/internal/ads/zzdel;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdel;->onAdClicked()V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepm;->zza:Lcom/google/android/gms/internal/ads/zzdgt;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdgt;->zzf(I)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 0

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepm;->zzc:Lcom/google/android/gms/internal/ads/zzdfu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfu;->zzb()V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepm;->zza:Lcom/google/android/gms/internal/ads/zzdgt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgt;->zzb()V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 0

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzcdd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepm;->zzd:Lcom/google/android/gms/internal/ads/zzdml;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdml;->zza(Lcom/google/android/gms/internal/ads/zzcdd;)V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepm;->zzc:Lcom/google/android/gms/internal/ads/zzdfu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfu;->zze()V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepm;->zzd:Lcom/google/android/gms/internal/ads/zzdml;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdml;->zzc()V

    return-void
.end method
