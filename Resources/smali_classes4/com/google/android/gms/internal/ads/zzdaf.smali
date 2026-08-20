.class public final Lcom/google/android/gms/internal/ads/zzdaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdhc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdjj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdhc;Lcom/google/android/gms/internal/ads/zzdjj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaf;->zza:Lcom/google/android/gms/internal/ads/zzdhc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdaf;->zzb:Lcom/google/android/gms/internal/ads/zzdjj;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdhc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaf;->zza:Lcom/google/android/gms/internal/ads/zzdhc;

    return-object v0
.end method

.method final zzb()Lcom/google/android/gms/internal/ads/zzdjj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaf;->zzb:Lcom/google/android/gms/internal/ads/zzdjj;

    return-object v0
.end method

.method final zzc()Lcom/google/android/gms/internal/ads/zzdlu;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaf;->zzb:Lcom/google/android/gms/internal/ads/zzdjj;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlu;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcib;->zzf:Lcom/google/android/gms/internal/ads/zzgfc;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdlu;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdlu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdae;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdae;-><init>(Lcom/google/android/gms/internal/ads/zzdaf;)V

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcib;->zzf:Lcom/google/android/gms/internal/ads/zzgfc;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdlu;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
