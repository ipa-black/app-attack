.class public final Lcom/google/android/gms/internal/ads/zzenz;
.super Lcom/google/android/gms/internal/ads/zzeob;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcpj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdon;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzddx;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdka;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcpj;Lcom/google/android/gms/internal/ads/zzdon;Lcom/google/android/gms/internal/ads/zzddx;Lcom/google/android/gms/internal/ads/zzdka;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeob;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenz;->zza:Lcom/google/android/gms/internal/ads/zzcpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzenz;->zzb:Lcom/google/android/gms/internal/ads/zzdon;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzenz;->zzc:Lcom/google/android/gms/internal/ads/zzddx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzenz;->zzd:Lcom/google/android/gms/internal/ads/zzdka;

    return-void
.end method


# virtual methods
.method protected final zzc(Lcom/google/android/gms/internal/ads/zzfjg;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenz;->zza:Lcom/google/android/gms/internal/ads/zzcpj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpj;->zzh()Lcom/google/android/gms/internal/ads/zzdor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenz;->zzc:Lcom/google/android/gms/internal/ads/zzddx;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzddx;->zzf(Lcom/google/android/gms/internal/ads/zzfjg;)Lcom/google/android/gms/internal/ads/zzddx;

    .line 3
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzddx;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzddx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzddx;->zzg()Lcom/google/android/gms/internal/ads/zzddz;

    move-result-object p1

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdor;->zzf(Lcom/google/android/gms/internal/ads/zzddz;)Lcom/google/android/gms/internal/ads/zzdor;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzenz;->zzd:Lcom/google/android/gms/internal/ads/zzdka;

    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdor;->zze(Lcom/google/android/gms/internal/ads/zzdka;)Lcom/google/android/gms/internal/ads/zzdor;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzenz;->zzb:Lcom/google/android/gms/internal/ads/zzdon;

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdor;->zzd(Lcom/google/android/gms/internal/ads/zzdon;)Lcom/google/android/gms/internal/ads/zzdor;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcyi;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcyi;-><init>(Landroid/view/ViewGroup;)V

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdor;->zzc(Lcom/google/android/gms/internal/ads/zzcyi;)Lcom/google/android/gms/internal/ads/zzdor;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdor;->zzg()Lcom/google/android/gms/internal/ads/zzdos;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdos;->zza()Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbu;->zzj()Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdbu;->zzi(Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1
.end method
