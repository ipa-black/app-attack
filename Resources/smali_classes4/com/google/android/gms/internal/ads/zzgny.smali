.class public final synthetic Lcom/google/android/gms/internal/ads/zzgny;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgkz;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzgny;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgny;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgny;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgny;->zza:Lcom/google/android/gms/internal/ads/zzgny;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgmh;Lcom/google/android/gms/internal/ads/zzghn;)Lcom/google/android/gms/internal/ads/zzggf;
    .locals 12

    const-string v0, "Unable to parse OutputPrefixType: "

    const-string v1, "Unable to parse HashType: "

    sget v2, Lcom/google/android/gms/internal/ads/zzgnz;->zza:I

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgmf;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgmf;->zzg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2
    :try_start_0
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgmf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgmf;->zze()Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxp;->zza()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v3

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgrx;->zzf(Lcom/google/android/gms/internal/ads/zzgwv;Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzgrx;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgrx;->zza()I

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgnq;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzgnq;-><init>(Lcom/google/android/gms/internal/ads/zzgnp;)V

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgrx;->zzh()Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgwv;->zzd()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzgnq;->zzb(I)Lcom/google/android/gms/internal/ads/zzgnq;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgrx;->zzg()Lcom/google/android/gms/internal/ads/zzgsd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgsd;->zza()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzgnq;->zzc(I)Lcom/google/android/gms/internal/ads/zzgnq;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgrx;->zzg()Lcom/google/android/gms/internal/ads/zzgsd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgsd;->zzg()I

    move-result v5

    .line 9
    sget-object v6, Lcom/google/android/gms/internal/ads/zzguc;->zza:Lcom/google/android/gms/internal/ads/zzguc;

    add-int/lit8 v6, v5, -0x2

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v6, v10, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    if-eq v6, v7, :cond_1

    const/4 v11, 0x5

    if-ne v6, v11, :cond_0

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgnr;->zzb:Lcom/google/android/gms/internal/ads/zzgnr;

    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 22
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgru;->zza(I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgnr;->zze:Lcom/google/android/gms/internal/ads/zzgnr;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgnr;->zzc:Lcom/google/android/gms/internal/ads/zzgnr;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgnr;->zzd:Lcom/google/android/gms/internal/ads/zzgnr;

    goto :goto_0

    .line 9
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgnr;->zza:Lcom/google/android/gms/internal/ads/zzgnr;

    .line 8
    :goto_0
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzgnq;->zza(Lcom/google/android/gms/internal/ads/zzgnr;)Lcom/google/android/gms/internal/ads/zzgnq;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgmf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzc()Lcom/google/android/gms/internal/ads/zzguc;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzguc;->ordinal()I

    move-result v5

    if-eq v5, v10, :cond_8

    if-eq v5, v9, :cond_7

    if-eq v5, v8, :cond_6

    if-ne v5, v7, :cond_5

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgns;->zzb:Lcom/google/android/gms/internal/ads/zzgns;

    goto :goto_1

    .line 19
    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzguc;->zza()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgns;->zzd:Lcom/google/android/gms/internal/ads/zzgns;

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgns;->zzc:Lcom/google/android/gms/internal/ads/zzgns;

    goto :goto_1

    .line 10
    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgns;->zza:Lcom/google/android/gms/internal/ads/zzgns;

    .line 11
    :goto_1
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzgnq;->zzd(Lcom/google/android/gms/internal/ads/zzgns;)Lcom/google/android/gms/internal/ads/zzgnq;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgnq;->zze()Lcom/google/android/gms/internal/ads/zzgnu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgnj;

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzgnj;-><init>(Lcom/google/android/gms/internal/ads/zzgni;)V

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgnj;->zzc(Lcom/google/android/gms/internal/ads/zzgnu;)Lcom/google/android/gms/internal/ads/zzgnj;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgrx;->zzh()Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwv;->zzE()[B

    move-result-object v0

    .line 15
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzgwb;->zzb([BLcom/google/android/gms/internal/ads/zzghn;)Lcom/google/android/gms/internal/ads/zzgwb;

    move-result-object p2

    .line 16
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzgnj;->zzb(Lcom/google/android/gms/internal/ads/zzgwb;)Lcom/google/android/gms/internal/ads/zzgnj;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgmf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzf()Ljava/lang/Integer;

    move-result-object p1

    .line 17
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgnj;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgnj;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgnj;->zzd()Lcom/google/android/gms/internal/ads/zzgnl;

    move-result-object p1

    return-object p1

    .line 23
    :cond_9
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Only version 0 keys are accepted"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyp; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :catch_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Parsing HmacKey failed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong type URL in call to HmacParameters.parseParameters"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
