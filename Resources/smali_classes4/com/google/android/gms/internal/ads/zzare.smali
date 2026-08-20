.class public final Lcom/google/android/gms/internal/ads/zzare;
.super Lcom/google/android/gms/internal/ads/zzarx;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zzi:Lcom/google/android/gms/internal/ads/zzaqk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaml;IILcom/google/android/gms/internal/ads/zzaqk;)V
    .locals 7

    .line 1
    const-string v3, "Jj1vyuWfy0iUak+iXdGffQYzyyVnoa3nOmSynhrPgns="

    const/16 v6, 0x55

    const-string v2, "DEi5JrQn0pxSuKS2Ij/fpEA7I+0FPLXDsBWBfvVwt/zwZUJJ4fnydbsyET2LCYMF"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzarx;-><init>(Lcom/google/android/gms/internal/ads/zzaqj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaml;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzare;->zzi:Lcom/google/android/gms/internal/ads/zzaqk;

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzare;->zzf:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzare;->zzi:Lcom/google/android/gms/internal/ads/zzaqk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqk;->zzd()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzare;->zzi:Lcom/google/android/gms/internal/ads/zzaqk;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaqk;->zzh()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzare;->zzi:Lcom/google/android/gms/internal/ads/zzaqk;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaqk;->zzb()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzare;->zzi:Lcom/google/android/gms/internal/ads/zzaqk;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaqk;->zzf()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzare;->zze:Lcom/google/android/gms/internal/ads/zzaml;

    .line 6
    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzare;->zze:Lcom/google/android/gms/internal/ads/zzaml;

    const/4 v3, 0x0

    .line 7
    aget-wide v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaml;->zzv(J)Lcom/google/android/gms/internal/ads/zzaml;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzare;->zze:Lcom/google/android/gms/internal/ads/zzaml;

    const/4 v3, 0x1

    .line 8
    aget-wide v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaml;->zzu(J)Lcom/google/android/gms/internal/ads/zzaml;

    .line 9
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
