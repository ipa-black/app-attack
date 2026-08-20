.class public final Lcom/google/android/gms/internal/ads/zzgjr;
.super Lcom/google/android/gms/internal/ads/zzgme;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# static fields
.field private static final zza:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgjr;->zza:[B

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzgmd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgjp;

    const-class v2, Lcom/google/android/gms/internal/ads/zzggd;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgjp;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/zzgrk;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgrn;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgme;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzgmd;)V

    return-void
.end method

.method static bridge synthetic zzg()[B
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjr;->zza:[B

    return-object v0
.end method

.method static bridge synthetic zzh(IIILcom/google/android/gms/internal/ads/zzggp;[BI)Lcom/google/android/gms/internal/ads/zzglg;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzglg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgre;->zza()Lcom/google/android/gms/internal/ads/zzgrd;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgrq;->zza()Lcom/google/android/gms/internal/ads/zzgrp;

    move-result-object v0

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgrp;->zzb(I)Lcom/google/android/gms/internal/ads/zzgrp;

    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgrp;->zzc(I)Lcom/google/android/gms/internal/ads/zzgrp;

    .line 5
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzgwv;->zzv([B)Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzgrp;->zza(Lcom/google/android/gms/internal/ads/zzgwv;)Lcom/google/android/gms/internal/ads/zzgrp;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzgrq;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgtb;->zza()Lcom/google/android/gms/internal/ads/zzgta;

    move-result-object v0

    .line 8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzggp;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgta;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgta;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzggp;->zzc()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgwv;->zzv([B)Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgta;->zzc(Lcom/google/android/gms/internal/ads/zzgwv;)Lcom/google/android/gms/internal/ads/zzgta;

    .line 10
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzggp;->zzd()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/ads/zzguc;->zze:Lcom/google/android/gms/internal/ads/zzguc;

    goto :goto_0

    .line 12
    :cond_0
    sget-object p3, Lcom/google/android/gms/internal/ads/zzguc;->zzd:Lcom/google/android/gms/internal/ads/zzguc;

    goto :goto_0

    .line 13
    :cond_1
    sget-object p3, Lcom/google/android/gms/internal/ads/zzguc;->zzc:Lcom/google/android/gms/internal/ads/zzguc;

    goto :goto_0

    .line 14
    :cond_2
    sget-object p3, Lcom/google/android/gms/internal/ads/zzguc;->zzb:Lcom/google/android/gms/internal/ads/zzguc;

    .line 10
    :goto_0
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzgta;->zza(Lcom/google/android/gms/internal/ads/zzguc;)Lcom/google/android/gms/internal/ads/zzgta;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzgtb;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgrb;->zza()Lcom/google/android/gms/internal/ads/zzgra;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzgra;->zza(Lcom/google/android/gms/internal/ads/zzgtb;)Lcom/google/android/gms/internal/ads/zzgra;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzgrb;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgrh;->zzc()Lcom/google/android/gms/internal/ads/zzgrg;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzgrg;->zzb(Lcom/google/android/gms/internal/ads/zzgrq;)Lcom/google/android/gms/internal/ads/zzgrg;

    .line 19
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzgrg;->zza(Lcom/google/android/gms/internal/ads/zzgrb;)Lcom/google/android/gms/internal/ads/zzgrg;

    .line 20
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgrg;->zzc(I)Lcom/google/android/gms/internal/ads/zzgrg;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgrh;

    .line 22
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgrd;->zza(Lcom/google/android/gms/internal/ads/zzgrh;)Lcom/google/android/gms/internal/ads/zzgrd;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgre;

    invoke-direct {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzglg;-><init>(Ljava/lang/Object;I)V

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzglh;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgre;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgjq;-><init>(Lcom/google/android/gms/internal/ads/zzgjr;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgsv;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsv;->zzc:Lcom/google/android/gms/internal/ads/zzgsv;

    return-object v0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzgwv;)Lcom/google/android/gms/internal/ads/zzgzn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyp;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxp;->zza()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgrk;->zze(Lcom/google/android/gms/internal/ads/zzgwv;Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzgrk;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    return-object v0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzgzn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgrk;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgrk;->zzg()Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwv;->zzD()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgrk;->zza()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvx;->zzb(II)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgrk;->zzf()Lcom/google/android/gms/internal/ads/zzgrn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgrn;->zzc()Lcom/google/android/gms/internal/ads/zzgrh;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgka;->zza(Lcom/google/android/gms/internal/ads/zzgrh;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ECIES private key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
