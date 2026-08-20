.class public final Lcom/google/android/gms/internal/ads/zzeoc;
.super Lcom/google/android/gms/internal/ads/zzeob;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcpj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzddx;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzeqk;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdka;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdon;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdhc;

.field private final zzg:Landroid/view/ViewGroup;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdjj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcpj;Lcom/google/android/gms/internal/ads/zzddx;Lcom/google/android/gms/internal/ads/zzeqk;Lcom/google/android/gms/internal/ads/zzdka;Lcom/google/android/gms/internal/ads/zzdon;Lcom/google/android/gms/internal/ads/zzdhc;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzdjj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeob;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zza:Lcom/google/android/gms/internal/ads/zzcpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzb:Lcom/google/android/gms/internal/ads/zzddx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzc:Lcom/google/android/gms/internal/ads/zzeqk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzd:Lcom/google/android/gms/internal/ads/zzdka;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zze:Lcom/google/android/gms/internal/ads/zzdon;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzf:Lcom/google/android/gms/internal/ads/zzdhc;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzg:Landroid/view/ViewGroup;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzh:Lcom/google/android/gms/internal/ads/zzdjj;

    return-void
.end method


# virtual methods
.method protected final zzc(Lcom/google/android/gms/internal/ads/zzfjg;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zza:Lcom/google/android/gms/internal/ads/zzcpj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpj;->zze()Lcom/google/android/gms/internal/ads/zzczh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzb:Lcom/google/android/gms/internal/ads/zzddx;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzddx;->zzf(Lcom/google/android/gms/internal/ads/zzfjg;)Lcom/google/android/gms/internal/ads/zzddx;

    .line 3
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzddx;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzddx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzddx;->zzg()Lcom/google/android/gms/internal/ads/zzddz;

    move-result-object p1

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzczh;->zzi(Lcom/google/android/gms/internal/ads/zzddz;)Lcom/google/android/gms/internal/ads/zzczh;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzd:Lcom/google/android/gms/internal/ads/zzdka;

    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzczh;->zzf(Lcom/google/android/gms/internal/ads/zzdka;)Lcom/google/android/gms/internal/ads/zzczh;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzc:Lcom/google/android/gms/internal/ads/zzeqk;

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzczh;->zze(Lcom/google/android/gms/internal/ads/zzeqk;)Lcom/google/android/gms/internal/ads/zzczh;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zze:Lcom/google/android/gms/internal/ads/zzdon;

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzczh;->zzd(Lcom/google/android/gms/internal/ads/zzdon;)Lcom/google/android/gms/internal/ads/zzczh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdaf;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzf:Lcom/google/android/gms/internal/ads/zzdhc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzh:Lcom/google/android/gms/internal/ads/zzdjj;

    invoke-direct {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzdaf;-><init>(Lcom/google/android/gms/internal/ads/zzdhc;Lcom/google/android/gms/internal/ads/zzdjj;)V

    .line 8
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzczh;->zzg(Lcom/google/android/gms/internal/ads/zzdaf;)Lcom/google/android/gms/internal/ads/zzczh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcyi;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzg:Landroid/view/ViewGroup;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcyi;-><init>(Landroid/view/ViewGroup;)V

    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzczh;->zzc(Lcom/google/android/gms/internal/ads/zzcyi;)Lcom/google/android/gms/internal/ads/zzczh;

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzczh;->zzj()Lcom/google/android/gms/internal/ads/zzczi;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzczi;->zzd()Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbu;->zzj()Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdbu;->zzi(Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1
.end method
