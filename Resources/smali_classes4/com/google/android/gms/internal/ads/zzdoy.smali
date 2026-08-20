.class public final Lcom/google/android/gms/internal/ads/zzdoy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhep;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhfc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zza:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zzb:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zzc:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zzd:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zze:Lcom/google/android/gms/internal/ads/zzhfc;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zza:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcpj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zzb:Lcom/google/android/gms/internal/ads/zzhfc;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdef;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdef;->zza()Lcom/google/android/gms/internal/ads/zzddx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zzc:Lcom/google/android/gms/internal/ads/zzhfc;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdkt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdkt;->zza()Lcom/google/android/gms/internal/ads/zzdka;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zzd:Lcom/google/android/gms/internal/ads/zzhfc;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdop;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdop;->zza()Lcom/google/android/gms/internal/ads/zzdon;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zze:Lcom/google/android/gms/internal/ads/zzhfc;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzcyk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcyk;->zza()Lcom/google/android/gms/internal/ads/zzdhc;

    move-result-object v4

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpj;->zze()Lcom/google/android/gms/internal/ads/zzczh;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzddx;->zzg()Lcom/google/android/gms/internal/ads/zzddz;

    move-result-object v1

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzczh;->zzi(Lcom/google/android/gms/internal/ads/zzddz;)Lcom/google/android/gms/internal/ads/zzczh;

    .line 4
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzczh;->zzf(Lcom/google/android/gms/internal/ads/zzdka;)Lcom/google/android/gms/internal/ads/zzczh;

    .line 5
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzczh;->zzd(Lcom/google/android/gms/internal/ads/zzdon;)Lcom/google/android/gms/internal/ads/zzczh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeqk;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzeqk;-><init>(Lcom/google/android/gms/internal/ads/zzbke;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzczh;->zze(Lcom/google/android/gms/internal/ads/zzeqk;)Lcom/google/android/gms/internal/ads/zzczh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdaf;

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdaf;-><init>(Lcom/google/android/gms/internal/ads/zzdhc;Lcom/google/android/gms/internal/ads/zzdjj;)V

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzczh;->zzg(Lcom/google/android/gms/internal/ads/zzdaf;)Lcom/google/android/gms/internal/ads/zzczh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcyi;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcyi;-><init>(Landroid/view/ViewGroup;)V

    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzczh;->zzc(Lcom/google/android/gms/internal/ads/zzcyi;)Lcom/google/android/gms/internal/ads/zzczh;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzczh;->zzj()Lcom/google/android/gms/internal/ads/zzczi;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzczi;->zzc()Lcom/google/android/gms/internal/ads/zzdaq;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhex;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
