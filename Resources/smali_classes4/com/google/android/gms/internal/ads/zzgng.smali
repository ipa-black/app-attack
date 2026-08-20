.class public final synthetic Lcom/google/android/gms/internal/ads/zzgng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgkz;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzgng;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgng;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgng;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgng;->zza:Lcom/google/android/gms/internal/ads/zzgng;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgmh;Lcom/google/android/gms/internal/ads/zzghn;)Lcom/google/android/gms/internal/ads/zzggf;
    .locals 7

    const-string v0, "Unable to parse OutputPrefixType: "

    sget v1, Lcom/google/android/gms/internal/ads/zzgnh;->zza:I

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgmf;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzg()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgmf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgmf;->zze()Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxp;->zza()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v2

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgou;->zze(Lcom/google/android/gms/internal/ads/zzgwv;Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzgou;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgou;->zza()I

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgmz;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgmz;-><init>(Lcom/google/android/gms/internal/ads/zzgmy;)V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgou;->zzg()Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgwv;->zzd()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgmz;->zza(I)Lcom/google/android/gms/internal/ads/zzgmz;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgou;->zzf()Lcom/google/android/gms/internal/ads/zzgpa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgpa;->zza()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgmz;->zzb(I)Lcom/google/android/gms/internal/ads/zzgmz;

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgmf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgmf;->zzc()Lcom/google/android/gms/internal/ads/zzguc;

    move-result-object v4

    .line 8
    sget-object v5, Lcom/google/android/gms/internal/ads/zzguc;->zza:Lcom/google/android/gms/internal/ads/zzguc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzguc;->ordinal()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgna;->zzb:Lcom/google/android/gms/internal/ads/zzgna;

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzguc;->zza()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgna;->zzd:Lcom/google/android/gms/internal/ads/zzgna;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgna;->zzc:Lcom/google/android/gms/internal/ads/zzgna;

    goto :goto_0

    .line 8
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgna;->zza:Lcom/google/android/gms/internal/ads/zzgna;

    .line 9
    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzgmz;->zzc(Lcom/google/android/gms/internal/ads/zzgna;)Lcom/google/android/gms/internal/ads/zzgmz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgmz;->zzd()Lcom/google/android/gms/internal/ads/zzgnc;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgms;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgms;-><init>(Lcom/google/android/gms/internal/ads/zzgmr;)V

    .line 10
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzgms;->zzc(Lcom/google/android/gms/internal/ads/zzgnc;)Lcom/google/android/gms/internal/ads/zzgms;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgou;->zzg()Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwv;->zzE()[B

    move-result-object v0

    .line 12
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzgwb;->zzb([BLcom/google/android/gms/internal/ads/zzghn;)Lcom/google/android/gms/internal/ads/zzgwb;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzgms;->zza(Lcom/google/android/gms/internal/ads/zzgwb;)Lcom/google/android/gms/internal/ads/zzgms;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgmf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzf()Ljava/lang/Integer;

    move-result-object p1

    .line 13
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgms;->zzb(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgms;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgms;->zzd()Lcom/google/android/gms/internal/ads/zzgmu;

    move-result-object p1

    return-object p1

    .line 17
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Only version 0 keys are accepted"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyp; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :catch_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Parsing AesCmacKey failed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong type URL in call to AesCmacParameters.parseParameters"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
