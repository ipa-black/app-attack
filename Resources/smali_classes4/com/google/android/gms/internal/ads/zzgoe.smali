.class final Lcom/google/android/gms/internal/ads/zzgoe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzggz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzghi;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgok;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgok;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzghi;Lcom/google/android/gms/internal/ads/zzgod;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghi;->zzf()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzglt;->zza()Lcom/google/android/gms/internal/ads/zzglt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzglt;->zzb()Lcom/google/android/gms/internal/ads/zzgol;

    move-result-object p2

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzglq;->zza(Lcom/google/android/gms/internal/ads/zzghi;)Lcom/google/android/gms/internal/ads/zzgoq;

    move-result-object p1

    const-string v0, "compute"

    .line 4
    const-string v1, "mac"

    invoke-interface {p2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzgol;->zza(Lcom/google/android/gms/internal/ads/zzgoq;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgok;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zzb:Lcom/google/android/gms/internal/ads/zzgok;

    const-string v0, "verify"

    .line 5
    invoke-interface {p2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzgol;->zza(Lcom/google/android/gms/internal/ads/zzgoq;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgok;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zzc:Lcom/google/android/gms/internal/ads/zzgok;

    return-void

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzglq;->zza:Lcom/google/android/gms/internal/ads/zzgok;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zzb:Lcom/google/android/gms/internal/ads/zzgok;

    goto :goto_0
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    .line 3
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 4
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzghi;->zze([B)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzghe;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzghe;->zzd()Lcom/google/android/gms/internal/ads/zzguc;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzguc;->zzc:Lcom/google/android/gms/internal/ads/zzguc;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzguc;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgof;->zze()[B

    move-result-object v3

    filled-new-array {p2, v3}, [[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgut;->zzb([[B)[B

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, p2

    .line 9
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzghe;->zze()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzggz;

    invoke-interface {v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzggz;->zza([B[B)V

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzghe;->zza()I
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgof;->zzd()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "tag prefix matches a key, but cannot verify: "

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.google.crypto.tink.mac.MacWrapper$WrappedMac"

    const-string v6, "verifyMac"

    invoke-virtual {v3, v4, v5, v6, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzggb;->zza:[B

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzghi;->zze([B)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzghe;

    .line 14
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzghe;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzggz;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzggz;->zza([B[B)V

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzghe;->zza()I
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 16
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "tag too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghi;->zza()Lcom/google/android/gms/internal/ads/zzghe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghe;->zzd()Lcom/google/android/gms/internal/ads/zzguc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzguc;->zzc:Lcom/google/android/gms/internal/ads/zzguc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzguc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgof;->zze()[B

    move-result-object v0

    filled-new-array {p1, v0}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgut;->zzb([[B)[B

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghi;->zza()Lcom/google/android/gms/internal/ads/zzghe;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghe;->zzf()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzghi;->zza()Lcom/google/android/gms/internal/ads/zzghe;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzghe;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzggz;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzggz;->zzb([B)[B

    move-result-object p1

    filled-new-array {v0, p1}, [[B

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgut;->zzb([[B)[B

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghi;->zza()Lcom/google/android/gms/internal/ads/zzghe;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghe;->zza()I

    return-object p1
.end method
