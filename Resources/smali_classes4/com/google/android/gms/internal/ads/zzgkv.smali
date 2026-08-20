.class final Lcom/google/android/gms/internal/ads/zzgkv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgkj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgke;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgke;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkv;->zza:Lcom/google/android/gms/internal/ads/zzgke;

    return-void
.end method


# virtual methods
.method public final zza([B)Lcom/google/android/gms/internal/ads/zzgkk;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvy;->zzb()[B

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgvy;->zza([B[B)[B

    move-result-object v3

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgvy;->zzc([B)[B

    move-result-object v0

    filled-new-array {v0, p1}, [[B

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgut;->zzb([[B)[B

    move-result-object v5

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgks;->zzb:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgks;->zzd([B)[B

    move-result-object v7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgkv;->zza:Lcom/google/android/gms/internal/ads/zzgke;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgke;->zza()I

    move-result v8

    const-string v4, "eae_prk"

    const-string v6, "shared_secret"

    const/4 v2, 0x0

    .line 7
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzgke;->zzb([B[BLjava/lang/String;[BLjava/lang/String;[BI)[B

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkk;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzgkk;-><init>([B[B)V

    return-object v1
.end method

.method public final zzb()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkv;->zza:Lcom/google/android/gms/internal/ads/zzgke;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgke;->zzc()[B

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgks;->zzf:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgks;->zzb:[B

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Could not determine HPKE KEM ID"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
