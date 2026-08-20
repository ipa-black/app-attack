.class final Lcom/google/android/gms/internal/ads/zzgko;
.super Lcom/google/android/gms/internal/ads/zzglh;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgkp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgkp;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgko;->zza:Lcom/google/android/gms/internal/ads/zzgkp;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzglh;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzgzn;)Lcom/google/android/gms/internal/ads/zzgzn;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgsi;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgsi;->zze()Lcom/google/android/gms/internal/ads/zzgsl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgsl;->zzg()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Invalid KEM"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgsi;->zze()Lcom/google/android/gms/internal/ads/zzgsl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgsl;->zzg()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgks;->zzg(I)I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgvc;->zzk(I)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgvc;->zzc(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    .line 6
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzgvc;->zzl(IILjava/security/spec/ECPoint;)[B

    move-result-object v0

    .line 7
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvy;->zzb()[B

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgvy;->zzc([B)[B

    move-result-object v0

    .line 10
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgsr;->zzd()Lcom/google/android/gms/internal/ads/zzgsq;

    move-result-object v2

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgsq;->zzc(I)Lcom/google/android/gms/internal/ads/zzgsq;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgsi;->zze()Lcom/google/android/gms/internal/ads/zzgsl;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgsq;->zza(Lcom/google/android/gms/internal/ads/zzgsl;)Lcom/google/android/gms/internal/ads/zzgsq;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwv;->zzv([B)Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgsq;->zzb(Lcom/google/android/gms/internal/ads/zzgwv;)Lcom/google/android/gms/internal/ads/zzgsq;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgsr;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgso;->zzc()Lcom/google/android/gms/internal/ads/zzgsn;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgsn;->zzc(I)Lcom/google/android/gms/internal/ads/zzgsn;

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgsn;->zzb(Lcom/google/android/gms/internal/ads/zzgsr;)Lcom/google/android/gms/internal/ads/zzgsn;

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzv([B)Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgsn;->zza(Lcom/google/android/gms/internal/ads/zzgwv;)Lcom/google/android/gms/internal/ads/zzgsn;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgso;

    return-object p1
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzgwv;)Lcom/google/android/gms/internal/ads/zzgzn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyp;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxp;->zza()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgsi;->zzd(Lcom/google/android/gms/internal/ads/zzgwv;Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzgsi;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Ljava/util/Map;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 2
    invoke-static {v1, v1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v3

    .line 3
    const-string v4, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW"

    .line 4
    invoke-static {v1, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v4

    .line 5
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    .line 6
    invoke-static {v1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v4

    .line 7
    const-string v5, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW"

    .line 8
    invoke-static {v1, v1, v3, v1}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v5

    .line 9
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x5

    .line 10
    invoke-static {v1, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v5

    .line 11
    const-string v6, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305_RAW"

    .line 12
    invoke-static {v1, v1, v4, v1}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v6

    .line 13
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM"

    .line 14
    invoke-static {v3, v1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v6

    .line 15
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW"

    .line 16
    invoke-static {v3, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v6

    .line 17
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM"

    .line 18
    invoke-static {v3, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v6

    .line 19
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW"

    .line 20
    invoke-static {v3, v1, v3, v1}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v6

    .line 21
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM"

    .line 22
    invoke-static {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v6

    .line 23
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM_RAW"

    .line 24
    invoke-static {v4, v3, v1, v1}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v6

    .line 25
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM"

    .line 26
    invoke-static {v4, v3, v3, v2}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v6

    .line 27
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM_RAW"

    .line 28
    invoke-static {v4, v3, v3, v1}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v6

    .line 29
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x6

    .line 30
    invoke-static {v5, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v6

    .line 31
    const-string v7, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM_RAW"

    .line 32
    invoke-static {v5, v4, v1, v1}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v7

    .line 33
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM"

    .line 34
    invoke-static {v5, v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v2

    .line 35
    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM_RAW"

    .line 36
    invoke-static {v5, v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzgkp;->zzg(IIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v1

    .line 37
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzgzn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgsi;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgsi;->zze()Lcom/google/android/gms/internal/ads/zzgsl;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgks;->zza(Lcom/google/android/gms/internal/ads/zzgsl;)V

    return-void
.end method
