.class final Lcom/google/android/gms/internal/ads/zzgkb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzguw;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I

.field private zzc:Lcom/google/android/gms/internal/ads/zzgqb;

.field private zzd:Lcom/google/android/gms/internal/ads/zzgpd;

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzgqn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgtb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgtb;->zzg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zza:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzghp;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgtb;->zzf()Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxp;->zza()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqe;->zze(Lcom/google/android/gms/internal/ads/zzgwv;Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzgqe;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzghm;->zzd(Lcom/google/android/gms/internal/ads/zzgtb;)Lcom/google/android/gms/internal/ads/zzgzn;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgqb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzc:Lcom/google/android/gms/internal/ads/zzgqb;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqe;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzb:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyp; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 6
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzghp;->zza:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    if-eqz v1, :cond_1

    .line 9
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgtb;->zzf()Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxp;->zza()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgpg;->zzd(Lcom/google/android/gms/internal/ads/zzgwv;Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzgpg;

    move-result-object v0

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzghm;->zzd(Lcom/google/android/gms/internal/ads/zzgtb;)Lcom/google/android/gms/internal/ads/zzgzn;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgpd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzd:Lcom/google/android/gms/internal/ads/zzgpd;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpg;->zze()Lcom/google/android/gms/internal/ads/zzgpm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpm;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zze:I

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpg;->zzf()Lcom/google/android/gms/internal/ads/zzgsa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgsa;->zza()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zze:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzb:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzgyp; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 14
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 15
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgjm;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgtb;->zzf()Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxp;->zza()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqq;->zze(Lcom/google/android/gms/internal/ads/zzgwv;Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzgqq;

    move-result-object v0

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzghm;->zzd(Lcom/google/android/gms/internal/ads/zzgtb;)Lcom/google/android/gms/internal/ads/zzgzn;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgqn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzf:Lcom/google/android/gms/internal/ads/zzgqn;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzb:I
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzgyp; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 20
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 21
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v1, "unsupported AEAD DEM key type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzb:I

    return v0
.end method

.method public final zzb([B)Lcom/google/android/gms/internal/ads/zzgkx;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzb:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zza:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzghp;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqb;->zzc()Lcom/google/android/gms/internal/ads/zzgqa;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzc:Lcom/google/android/gms/internal/ads/zzgqb;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgxz;->zzai(Lcom/google/android/gms/internal/ads/zzgyd;)Lcom/google/android/gms/internal/ads/zzgxz;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzb:I

    .line 5
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgwv;->zzw([BII)Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgqa;->zza(Lcom/google/android/gms/internal/ads/zzgwv;)Lcom/google/android/gms/internal/ads/zzgqa;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgqb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zza:Ljava/lang/String;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgfw;

    .line 7
    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzghm;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgzn;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgfw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgkx;-><init>(Lcom/google/android/gms/internal/ads/zzgfw;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zza:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzghp;->zza:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zze:I

    .line 9
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzb:I

    .line 10
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpj;->zzc()Lcom/google/android/gms/internal/ads/zzgpi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzd:Lcom/google/android/gms/internal/ads/zzgpd;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgpd;->zzf()Lcom/google/android/gms/internal/ads/zzgpj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxz;->zzai(Lcom/google/android/gms/internal/ads/zzgyd;)Lcom/google/android/gms/internal/ads/zzgxz;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwv;->zzv([B)Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgpi;->zza(Lcom/google/android/gms/internal/ads/zzgwv;)Lcom/google/android/gms/internal/ads/zzgpi;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgpj;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgrx;->zzc()Lcom/google/android/gms/internal/ads/zzgrw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzd:Lcom/google/android/gms/internal/ads/zzgpd;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgpd;->zzg()Lcom/google/android/gms/internal/ads/zzgrx;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxz;->zzai(Lcom/google/android/gms/internal/ads/zzgyd;)Lcom/google/android/gms/internal/ads/zzgxz;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzv([B)Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgrw;->zza(Lcom/google/android/gms/internal/ads/zzgwv;)Lcom/google/android/gms/internal/ads/zzgrw;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgrx;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpd;->zzc()Lcom/google/android/gms/internal/ads/zzgpc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzd:Lcom/google/android/gms/internal/ads/zzgpd;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgpd;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgpc;->zzc(I)Lcom/google/android/gms/internal/ads/zzgpc;

    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgpc;->zza(Lcom/google/android/gms/internal/ads/zzgpj;)Lcom/google/android/gms/internal/ads/zzgpc;

    .line 22
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgpc;->zzb(Lcom/google/android/gms/internal/ads/zzgrx;)Lcom/google/android/gms/internal/ads/zzgpc;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgpd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zza:Ljava/lang/String;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgfw;

    .line 24
    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzghm;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgzn;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgfw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgkx;-><init>(Lcom/google/android/gms/internal/ads/zzgfw;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zza:Ljava/lang/String;

    .line 25
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgjm;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqn;->zzc()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzf:Lcom/google/android/gms/internal/ads/zzgqn;

    .line 27
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgxz;->zzai(Lcom/google/android/gms/internal/ads/zzgyd;)Lcom/google/android/gms/internal/ads/zzgxz;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzb:I

    .line 28
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgwv;->zzw([BII)Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->zza(Lcom/google/android/gms/internal/ads/zzgwv;)Lcom/google/android/gms/internal/ads/zzgqm;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgqn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zza:Ljava/lang/String;

    const-class v2, Lcom/google/android/gms/internal/ads/zzggc;

    .line 30
    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzghm;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgzn;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzggc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgkx;-><init>(Lcom/google/android/gms/internal/ads/zzggc;)V

    return-object v0

    .line 31
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
