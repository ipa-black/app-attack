.class final Lcom/google/android/gms/internal/ads/zzbtq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbqd;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbue;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbta;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbuf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbuf;Lcom/google/android/gms/internal/ads/zzbue;Lcom/google/android/gms/internal/ads/zzbta;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzc:Lcom/google/android/gms/internal/ads/zzbuf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zza:Lcom/google/android/gms/internal/ads/zzbue;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzb:Lcom/google/android/gms/internal/ads/zzbta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbug;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzc:Lcom/google/android/gms/internal/ads/zzbuf;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbuf;->zzf(Lcom/google/android/gms/internal/ads/zzbuf;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zza:Lcom/google/android/gms/internal/ads/zzbue;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcin;->zze()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zza:Lcom/google/android/gms/internal/ads/zzbue;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcin;->zze()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzc:Lcom/google/android/gms/internal/ads/zzbuf;

    const/4 v0, 0x0

    .line 5
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbuf;->zzh(Lcom/google/android/gms/internal/ads/zzbuf;I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzb:Lcom/google/android/gms/internal/ads/zzbta;

    const-string v0, "/log"

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbqc;->zzg:Lcom/google/android/gms/internal/ads/zzbqd;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbta;->zzq(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqd;)V

    const-string v0, "/result"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbqc;->zzo:Lcom/google/android/gms/internal/ads/zzbqr;

    .line 7
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbta;->zzq(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqd;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zza:Lcom/google/android/gms/internal/ads/zzbue;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzb:Lcom/google/android/gms/internal/ads/zzbta;

    .line 8
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzcin;->zzh(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zzc:Lcom/google/android/gms/internal/ads/zzbuf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtq;->zza:Lcom/google/android/gms/internal/ads/zzbue;

    .line 9
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbuf;->zzg(Lcom/google/android/gms/internal/ads/zzbuf;Lcom/google/android/gms/internal/ads/zzbue;)V

    const-string p2, "Successfully loaded JS Engine."

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 11
    monitor-exit p1

    return-void

    .line 4
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 11
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
