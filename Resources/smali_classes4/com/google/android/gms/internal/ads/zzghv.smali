.class public final Lcom/google/android/gms/internal/ads/zzghv;
.super Lcom/google/android/gms/internal/ads/zzgli;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzgmd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzght;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgfw;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzght;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/zzgpd;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzgli;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzgmd;)V

    return-void
.end method

.method static bridge synthetic zzg(IIIIII)Lcom/google/android/gms/internal/ads/zzglg;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzglg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpm;->zzc()Lcom/google/android/gms/internal/ads/zzgpl;

    move-result-object p2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpp;->zzc()Lcom/google/android/gms/internal/ads/zzgpo;

    move-result-object p4

    const/16 v0, 0x10

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzgpo;->zza(I)Lcom/google/android/gms/internal/ads/zzgpo;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzgpp;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/zzgpl;->zzb(Lcom/google/android/gms/internal/ads/zzgpp;)Lcom/google/android/gms/internal/ads/zzgpl;

    .line 3
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzgpl;->zza(I)Lcom/google/android/gms/internal/ads/zzgpl;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgpm;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgsa;->zzc()Lcom/google/android/gms/internal/ads/zzgrz;

    move-result-object p2

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgsd;->zzc()Lcom/google/android/gms/internal/ads/zzgsc;

    move-result-object p4

    const/4 v0, 0x5

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzgsc;->zzb(I)Lcom/google/android/gms/internal/ads/zzgsc;

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/zzgsc;->zza(I)Lcom/google/android/gms/internal/ads/zzgsc;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzgsd;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzgrz;->zzb(Lcom/google/android/gms/internal/ads/zzgsd;)Lcom/google/android/gms/internal/ads/zzgrz;

    const/16 p3, 0x20

    .line 7
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzgrz;->zza(I)Lcom/google/android/gms/internal/ads/zzgrz;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgsa;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpg;->zza()Lcom/google/android/gms/internal/ads/zzgpf;

    move-result-object p3

    .line 10
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzgpf;->zza(Lcom/google/android/gms/internal/ads/zzgpm;)Lcom/google/android/gms/internal/ads/zzgpf;

    .line 11
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzgpf;->zzb(Lcom/google/android/gms/internal/ads/zzgsa;)Lcom/google/android/gms/internal/ads/zzgpf;

    .line 12
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgpg;

    invoke-direct {p1, p0, p5}, Lcom/google/android/gms/internal/ads/zzglg;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzglh;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzghu;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgpg;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzghu;-><init>(Lcom/google/android/gms/internal/ads/zzghv;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgsv;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsv;->zzb:Lcom/google/android/gms/internal/ads/zzgsv;

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgpd;->zze(Lcom/google/android/gms/internal/ads/zzgwv;Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzgpd;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgpd;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpd;->zza()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvx;->zzb(II)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzghy;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzghy;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpd;->zzf()Lcom/google/android/gms/internal/ads/zzgpj;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzghy;->zzh(Lcom/google/android/gms/internal/ads/zzgpj;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgno;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgno;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpd;->zzg()Lcom/google/android/gms/internal/ads/zzgrx;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgno;->zzh(Lcom/google/android/gms/internal/ads/zzgrx;)V

    return-void
.end method

.method public final zzf()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
