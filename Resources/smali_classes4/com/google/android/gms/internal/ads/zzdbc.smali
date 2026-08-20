.class public final Lcom/google/android/gms/internal/ads/zzdbc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfix;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfil;

.field private final zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zza:Lcom/google/android/gms/internal/ads/zzfix;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzb:Lcom/google/android/gms/internal/ads/zzfil;

    if-nez p3, :cond_0

    const-string p3, "com.google.ads.mediation.admob.AdMobAdapter"

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfil;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzb:Lcom/google/android/gms/internal/ads/zzfil;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfio;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zza:Lcom/google/android/gms/internal/ads/zzfix;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfix;->zzb:Lcom/google/android/gms/internal/ads/zzfiw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzfio;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfix;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zza:Lcom/google/android/gms/internal/ads/zzfix;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzc:Ljava/lang/String;

    return-object v0
.end method
