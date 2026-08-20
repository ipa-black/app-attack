.class public final Lcom/google/android/gms/internal/ads/zzddf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdhi;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfjg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzchu;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/zzg;

.field private final zze:Lcom/google/android/gms/internal/ads/zzebj;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfoy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfjg;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzebj;Lcom/google/android/gms/internal/ads/zzfoy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddf;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzddf;->zzb:Lcom/google/android/gms/internal/ads/zzfjg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzddf;->zzc:Lcom/google/android/gms/internal/ads/zzchu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzddf;->zzd:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzddf;->zze:Lcom/google/android/gms/internal/ads/zzebj;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzddf;->zzf:Lcom/google/android/gms/internal/ads/zzfoy;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzfix;)V
    .locals 0

    return-void
.end method

.method public final zzbG(Lcom/google/android/gms/internal/ads/zzccb;)V
    .locals 6

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjj;->zzdv:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object p1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddf;->zzd:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzh()Lcom/google/android/gms/internal/ads/zzcgr;

    move-result-object v4

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zza()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddf;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzddf;->zzc:Lcom/google/android/gms/internal/ads/zzchu;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddf;->zzb:Lcom/google/android/gms/internal/ads/zzfjg;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfjg;->zzf:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzddf;->zzf:Lcom/google/android/gms/internal/ads/zzfoy;

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zze;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchu;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcgr;Lcom/google/android/gms/internal/ads/zzfoy;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddf;->zze:Lcom/google/android/gms/internal/ads/zzebj;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzebj;->zzr()V

    return-void
.end method
