.class final Lcom/google/android/gms/internal/ads/zzbuw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbqq;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbux;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbtz;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcig;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbux;Lcom/google/android/gms/internal/ads/zzbtz;Lcom/google/android/gms/internal/ads/zzcig;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuw;->zza:Lcom/google/android/gms/internal/ads/zzbux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbuw;->zzb:Lcom/google/android/gms/internal/ads/zzbtz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbuw;->zzc:Lcom/google/android/gms/internal/ads/zzcig;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuw;->zzc:Lcom/google/android/gms/internal/ads/zzcig;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbui;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbui;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcig;->zze(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuw;->zzc:Lcom/google/android/gms/internal/ads/zzcig;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbui;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbui;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcig;->zze(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuw;->zzb:Lcom/google/android/gms/internal/ads/zzbtz;

    .line 3
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbtz;->zzb()V

    return-void

    :catchall_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuw;->zzb:Lcom/google/android/gms/internal/ads/zzbtz;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtz;->zzb()V

    .line 4
    throw p1

    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuw;->zzb:Lcom/google/android/gms/internal/ads/zzbtz;

    goto :goto_1
.end method

.method public final zzb(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuw;->zzc:Lcom/google/android/gms/internal/ads/zzcig;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbuw;->zza:Lcom/google/android/gms/internal/ads/zzbux;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbux;->zzc(Lcom/google/android/gms/internal/ads/zzbux;)Lcom/google/android/gms/internal/ads/zzbul;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbul;->zza(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcig;->zzd(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuw;->zzb:Lcom/google/android/gms/internal/ads/zzbtz;

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbtz;->zzb()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuw;->zzc:Lcom/google/android/gms/internal/ads/zzcig;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcig;->zze(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuw;->zzb:Lcom/google/android/gms/internal/ads/zzbtz;

    goto :goto_0

    .line 2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuw;->zzb:Lcom/google/android/gms/internal/ads/zzbtz;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtz;->zzb()V

    .line 4
    throw p1

    .line 3
    :catch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuw;->zzb:Lcom/google/android/gms/internal/ads/zzbtz;

    goto :goto_0
.end method
