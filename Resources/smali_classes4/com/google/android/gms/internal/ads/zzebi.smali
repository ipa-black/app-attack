.class final Lcom/google/android/gms/internal/ads/zzebi;
.super Lcom/google/android/gms/internal/ads/zzbsc;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field final synthetic zza:Ljava/lang/Object;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:J

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfol;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzcig;

.field final synthetic zzf:Lcom/google/android/gms/internal/ads/zzebj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzebj;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfol;Lcom/google/android/gms/internal/ads/zzcig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzf:Lcom/google/android/gms/internal/ads/zzebj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebi;->zza:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzb:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzc:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzebi;->zze:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbsc;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebi;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzf:Lcom/google/android/gms/internal/ads/zzebj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzb:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzc:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    const/4 v4, 0x0

    .line 2
    invoke-static {v1, v2, v4, p1, v3}, Lcom/google/android/gms/internal/ads/zzebj;->zzk(Lcom/google/android/gms/internal/ads/zzebj;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzf:Lcom/google/android/gms/internal/ads/zzebj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzebj;->zzd(Lcom/google/android/gms/internal/ads/zzebj;)Lcom/google/android/gms/internal/ads/zzdzq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzb:Ljava/lang/String;

    const-string v3, "error"

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzq;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzf:Lcom/google/android/gms/internal/ads/zzebj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzebj;->zzc(Lcom/google/android/gms/internal/ads/zzebj;)Lcom/google/android/gms/internal/ads/zzdlf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzb:Ljava/lang/String;

    const-string v3, "error"

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdlf;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzf:Lcom/google/android/gms/internal/ads/zzebj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzebj;->zze(Lcom/google/android/gms/internal/ads/zzebj;)Lcom/google/android/gms/internal/ads/zzfoy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    .line 5
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzfol;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfol;

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzfol;->zzf(Z)Lcom/google/android/gms/internal/ads/zzfol;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfol;->zzl()Lcom/google/android/gms/internal/ads/zzfop;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfoy;->zzb(Lcom/google/android/gms/internal/ads/zzfop;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zze:Lcom/google/android/gms/internal/ads/zzcig;

    .line 6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzcig;->zzd(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzf()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebi;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzf:Lcom/google/android/gms/internal/ads/zzebj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzb:Ljava/lang/String;

    const-string v3, ""

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzc:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    const/4 v5, 0x1

    .line 2
    invoke-static {v1, v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzebj;->zzk(Lcom/google/android/gms/internal/ads/zzebj;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzf:Lcom/google/android/gms/internal/ads/zzebj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzebj;->zzd(Lcom/google/android/gms/internal/ads/zzebj;)Lcom/google/android/gms/internal/ads/zzdzq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdzq;->zzd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzf:Lcom/google/android/gms/internal/ads/zzebj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzebj;->zzc(Lcom/google/android/gms/internal/ads/zzebj;)Lcom/google/android/gms/internal/ads/zzdlf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdlf;->zzd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzf:Lcom/google/android/gms/internal/ads/zzebj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzebj;->zze(Lcom/google/android/gms/internal/ads/zzebj;)Lcom/google/android/gms/internal/ads/zzfoy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    .line 5
    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/ads/zzfol;->zzf(Z)Lcom/google/android/gms/internal/ads/zzfol;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfol;->zzl()Lcom/google/android/gms/internal/ads/zzfop;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfoy;->zzb(Lcom/google/android/gms/internal/ads/zzfop;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zze:Lcom/google/android/gms/internal/ads/zzcig;

    .line 6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcig;->zzd(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
