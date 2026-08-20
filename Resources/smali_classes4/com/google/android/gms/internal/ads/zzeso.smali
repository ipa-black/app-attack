.class public final Lcom/google/android/gms/internal/ads/zzeso;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdqr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzesb;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdeq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdqr;Lcom/google/android/gms/internal/ads/zzfnt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeso;->zza:Lcom/google/android/gms/internal/ads/zzdqr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzesb;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzesb;-><init>(Lcom/google/android/gms/internal/ads/zzfnt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeso;->zzb:Lcom/google/android/gms/internal/ads/zzesb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqr;->zzg()Lcom/google/android/gms/internal/ads/zzbsu;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzesn;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzesn;-><init>(Lcom/google/android/gms/internal/ads/zzesb;Lcom/google/android/gms/internal/ads/zzbsu;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeso;->zzc:Lcom/google/android/gms/internal/ads/zzdeq;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdeq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeso;->zzc:Lcom/google/android/gms/internal/ads/zzdeq;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdgb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeso;->zzb:Lcom/google/android/gms/internal/ads/zzesb;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzdon;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdon;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeso;->zza:Lcom/google/android/gms/internal/ads/zzdqr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeso;->zzb:Lcom/google/android/gms/internal/ads/zzesb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzesb;->zzc()Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdon;-><init>(Lcom/google/android/gms/internal/ads/zzdqr;Lcom/google/android/gms/ads/internal/client/zzbh;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzesb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeso;->zzb:Lcom/google/android/gms/internal/ads/zzesb;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/ads/internal/client/zzbh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeso;->zzb:Lcom/google/android/gms/internal/ads/zzesb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzesb;->zze(Lcom/google/android/gms/ads/internal/client/zzbh;)V

    return-void
.end method
