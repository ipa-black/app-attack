.class final Lcom/google/android/gms/internal/ads/zzgjn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzggc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzghi;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgok;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgok;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzghi;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjn;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghi;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzglt;->zza()Lcom/google/android/gms/internal/ads/zzglt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzglt;->zzb()Lcom/google/android/gms/internal/ads/zzgol;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzglq;->zza(Lcom/google/android/gms/internal/ads/zzghi;)Lcom/google/android/gms/internal/ads/zzgoq;

    move-result-object p1

    const-string v1, "encrypt"

    .line 4
    const-string v2, "daead"

    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzgol;->zza(Lcom/google/android/gms/internal/ads/zzgoq;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgok;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjn;->zzb:Lcom/google/android/gms/internal/ads/zzgok;

    const-string v1, "decrypt"

    .line 5
    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzgol;->zza(Lcom/google/android/gms/internal/ads/zzgoq;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgok;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjn;->zzc:Lcom/google/android/gms/internal/ads/zzgok;

    return-void

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzglq;->zza:Lcom/google/android/gms/internal/ads/zzgok;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjn;->zzb:Lcom/google/android/gms/internal/ads/zzgok;

    goto :goto_0
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjn;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghi;->zza()Lcom/google/android/gms/internal/ads/zzghe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghe;->zzf()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjn;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzghi;->zza()Lcom/google/android/gms/internal/ads/zzghe;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzghe;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzggc;

    .line 3
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzggc;->zza([B[B)[B

    move-result-object p2

    filled-new-array {v0, p2}, [[B

    move-result-object p2

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgut;->zzb([[B)[B

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjn;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghi;->zza()Lcom/google/android/gms/internal/ads/zzghe;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghe;->zza()I

    array-length p1, p1

    return-object p2
.end method
