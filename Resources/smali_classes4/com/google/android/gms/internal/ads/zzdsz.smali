.class public final synthetic Lcom/google/android/gms/internal/ads/zzdsz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdy;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdth;

.field public final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzq;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfil;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfio;

.field public final synthetic zze:Ljava/lang/String;

.field public final synthetic zzf:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdth;Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfio;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zza:Lcom/google/android/gms/internal/ads/zzdth;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzb:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzc:Lcom/google/android/gms/internal/ads/zzfil;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzd:Lcom/google/android/gms/internal/ads/zzfio;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zza:Lcom/google/android/gms/internal/ads/zzdth;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzb:Lcom/google/android/gms/ads/internal/client/zzq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzc:Lcom/google/android/gms/internal/ads/zzfil;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzd:Lcom/google/android/gms/internal/ads/zzfio;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zze:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzf:Ljava/lang/String;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdth;->zzb(Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfio;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1
.end method
