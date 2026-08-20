.class final Lcom/google/android/gms/internal/ads/zzacb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaam;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzaam;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzacc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/internal/ads/zzaam;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzb:Lcom/google/android/gms/internal/ads/zzacc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzacb;->zza:Lcom/google/android/gms/internal/ads/zzaam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zza:Lcom/google/android/gms/internal/ads/zzaam;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaam;->zze()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzaak;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zza:Lcom/google/android/gms/internal/ads/zzaam;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaam;->zzg(J)Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaak;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaan;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaak;->zza:Lcom/google/android/gms/internal/ads/zzaan;

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzaan;->zzb:J

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzaan;->zzc:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzb:Lcom/google/android/gms/internal/ads/zzacc;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzacc;->zza(Lcom/google/android/gms/internal/ads/zzacc;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 2
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzaan;-><init>(JJ)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaan;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaak;->zzb:Lcom/google/android/gms/internal/ads/zzaan;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzaan;->zzb:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzaan;->zzc:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzb:Lcom/google/android/gms/internal/ads/zzacc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacc;->zza(Lcom/google/android/gms/internal/ads/zzacc;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzaan;-><init>(JJ)V

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaak;-><init>(Lcom/google/android/gms/internal/ads/zzaan;Lcom/google/android/gms/internal/ads/zzaan;)V

    return-object p2
.end method

.method public final zzh()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zza:Lcom/google/android/gms/internal/ads/zzaam;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaam;->zzh()Z

    move-result v0

    return v0
.end method
