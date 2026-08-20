.class final Lcom/google/android/gms/internal/ads/zzgjq;
.super Lcom/google/android/gms/internal/ads/zzglh;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgjr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgjr;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjq;->zza:Lcom/google/android/gms/internal/ads/zzgjr;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgre;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgre;->zze()Lcom/google/android/gms/internal/ads/zzgrh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgrh;->zzf()Lcom/google/android/gms/internal/ads/zzgrq;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgrq;->zzg()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgka;->zzc(I)I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgvc;->zzk(I)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgvc;->zzc(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 6
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 7
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgrn;->zzd()Lcom/google/android/gms/internal/ads/zzgrm;

    move-result-object v2

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgrm;->zzb(I)Lcom/google/android/gms/internal/ads/zzgrm;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgre;->zze()Lcom/google/android/gms/internal/ads/zzgrh;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgrm;->zza(Lcom/google/android/gms/internal/ads/zzgrh;)Lcom/google/android/gms/internal/ads/zzgrm;

    .line 11
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzv([B)Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgrm;->zzc(Lcom/google/android/gms/internal/ads/zzgwv;)Lcom/google/android/gms/internal/ads/zzgrm;

    .line 12
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzv([B)Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgrm;->zzd(Lcom/google/android/gms/internal/ads/zzgwv;)Lcom/google/android/gms/internal/ads/zzgrm;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgrn;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgrk;->zzc()Lcom/google/android/gms/internal/ads/zzgrj;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgrj;->zzc(I)Lcom/google/android/gms/internal/ads/zzgrj;

    .line 16
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgrj;->zzb(Lcom/google/android/gms/internal/ads/zzgrn;)Lcom/google/android/gms/internal/ads/zzgrj;

    .line 17
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzv([B)Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgrj;->zza(Lcom/google/android/gms/internal/ads/zzgwv;)Lcom/google/android/gms/internal/ads/zzgrj;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgrk;

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

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgre;->zzd(Lcom/google/android/gms/internal/ads/zzgwv;Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzgre;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "AES128_GCM"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzggq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggp;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjr;->zzg()[B

    move-result-object v6

    const/4 v7, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    .line 3
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzgjr;->zzh(IIILcom/google/android/gms/internal/ads/zzggp;[BI)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v2

    .line 4
    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzggq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjr;->zzg()[B

    move-result-object v8

    const/4 v9, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x3

    .line 6
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzgjr;->zzh(IIILcom/google/android/gms/internal/ads/zzggp;[BI)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v2

    .line 7
    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_RAW"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzggq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjr;->zzg()[B

    move-result-object v8

    const/4 v9, 0x1

    const/4 v6, 0x4

    .line 9
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzgjr;->zzh(IIILcom/google/android/gms/internal/ads/zzggp;[BI)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v2

    .line 10
    const-string v3, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzggq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjr;->zzg()[B

    move-result-object v8

    const/4 v9, 0x3

    .line 12
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzgjr;->zzh(IIILcom/google/android/gms/internal/ads/zzggp;[BI)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v2

    .line 13
    const-string v3, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM_RAW"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzggq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjr;->zzg()[B

    move-result-object v8

    .line 15
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzgjr;->zzh(IIILcom/google/android/gms/internal/ads/zzggp;[BI)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v1

    .line 16
    const-string v2, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_COMPRESSED_WITHOUT_PREFIX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v1, "AES128_CTR_HMAC_SHA256"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzggq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggp;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjr;->zzg()[B

    move-result-object v6

    const/4 v7, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    .line 18
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzgjr;->zzh(IIILcom/google/android/gms/internal/ads/zzggp;[BI)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v2

    .line 19
    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzggq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjr;->zzg()[B

    move-result-object v8

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x3

    .line 21
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzgjr;->zzh(IIILcom/google/android/gms/internal/ads/zzggp;[BI)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v2

    .line 22
    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzggq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjr;->zzg()[B

    move-result-object v8

    const/4 v9, 0x1

    const/4 v6, 0x4

    .line 24
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzgjr;->zzh(IIILcom/google/android/gms/internal/ads/zzggp;[BI)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v2

    .line 25
    const-string v3, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzggq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjr;->zzg()[B

    move-result-object v8

    const/4 v9, 0x3

    .line 27
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzgjr;->zzh(IIILcom/google/android/gms/internal/ads/zzggp;[BI)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v1

    .line 28
    const-string v2, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgre;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgre;->zze()Lcom/google/android/gms/internal/ads/zzgrh;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgka;->zza(Lcom/google/android/gms/internal/ads/zzgrh;)V

    return-void
.end method
