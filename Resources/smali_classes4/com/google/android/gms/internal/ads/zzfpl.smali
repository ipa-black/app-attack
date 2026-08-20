.class public final Lcom/google/android/gms/internal/ads/zzfpl;
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

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzhfc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zza:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zzb:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zzc:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zzd:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zze:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zzf:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zzg:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zzh:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zzi:Lcom/google/android/gms/internal/ads/zzhfc;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zza:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeoj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zzb:Lcom/google/android/gms/internal/ads/zzhfc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcqa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqa;->zza()Lcom/google/android/gms/internal/ads/zzchu;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zzc:Lcom/google/android/gms/internal/ads/zzhfc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdec;->zza()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zzd:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zze:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zzf:Lcom/google/android/gms/internal/ads/zzhfc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzded;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzded;->zza()Lcom/google/android/gms/internal/ads/zzfiy;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zzg:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzfiz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zzh:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/common/util/Clock;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zzi:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/internal/ads/zzapj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpk;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzfpk;-><init>(Lcom/google/android/gms/internal/ads/zzeoj;Lcom/google/android/gms/internal/ads/zzchu;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfiy;Lcom/google/android/gms/internal/ads/zzfiz;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzapj;)V

    return-object v0
.end method
