.class final Lcom/google/android/gms/internal/ads/zzghu;
.super Lcom/google/android/gms/internal/ads/zzglh;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzghv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzghv;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghu;->zza:Lcom/google/android/gms/internal/ads/zzghv;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzglh;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzgzn;)Lcom/google/android/gms/internal/ads/zzgzn;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgpg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzghy;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzghy;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpg;->zze()Lcom/google/android/gms/internal/ads/zzgpm;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzghx;->zzf(Lcom/google/android/gms/internal/ads/zzgpm;)Lcom/google/android/gms/internal/ads/zzgpj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgno;

    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgno;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgli;->zza()Lcom/google/android/gms/internal/ads/zzglh;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpg;->zzf()Lcom/google/android/gms/internal/ads/zzgsa;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzglh;->zza(Lcom/google/android/gms/internal/ads/zzgzn;)Lcom/google/android/gms/internal/ads/zzgzn;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpd;->zzc()Lcom/google/android/gms/internal/ads/zzgpc;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgpc;->zza(Lcom/google/android/gms/internal/ads/zzgpj;)Lcom/google/android/gms/internal/ads/zzgpc;

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgrx;

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgpc;->zzb(Lcom/google/android/gms/internal/ads/zzgrx;)Lcom/google/android/gms/internal/ads/zzgpc;

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgpc;->zzc(I)Lcom/google/android/gms/internal/ads/zzgpc;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgpd;

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
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgpg;->zzd(Lcom/google/android/gms/internal/ads/zzgwv;Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzgpg;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/16 v1, 0x10

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/16 v4, 0x10

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzghv;->zzg(IIIIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v1

    .line 3
    const-string v2, "AES128_CTR_HMAC_SHA256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/16 v3, 0x10

    const/16 v5, 0x20

    const/16 v6, 0x10

    .line 4
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzghv;->zzg(IIIIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v1

    .line 5
    const-string v2, "AES128_CTR_HMAC_SHA256_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    const/16 v3, 0x20

    const/16 v6, 0x20

    .line 6
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzghv;->zzg(IIIIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v1

    .line 7
    const-string v2, "AES256_CTR_HMAC_SHA256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x3

    .line 8
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzghv;->zzg(IIIIII)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v1

    .line 9
    const-string v2, "AES256_CTR_HMAC_SHA256_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzgzn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgpg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzghy;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzghy;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgli;->zza()Lcom/google/android/gms/internal/ads/zzglh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpg;->zze()Lcom/google/android/gms/internal/ads/zzgpm;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzghx;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzghx;->zze(Lcom/google/android/gms/internal/ads/zzgpm;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgno;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgno;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgli;->zza()Lcom/google/android/gms/internal/ads/zzglh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpg;->zzf()Lcom/google/android/gms/internal/ads/zzgsa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzglh;->zzd(Lcom/google/android/gms/internal/ads/zzgzn;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpg;->zze()Lcom/google/android/gms/internal/ads/zzgpm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpm;->zza()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgvx;->zza(I)V

    return-void
.end method
