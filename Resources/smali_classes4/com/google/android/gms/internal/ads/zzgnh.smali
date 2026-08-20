.class final Lcom/google/android/gms/internal/ads/zzgnh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgwa;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgmc;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgly;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzglf;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzglb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgwa;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgnh;->zzb:Lcom/google/android/gms/internal/ads/zzgwa;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgnd;->zza:Lcom/google/android/gms/internal/ads/zzgnd;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgnc;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgmg;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgmc;->zza(Lcom/google/android/gms/internal/ads/zzgma;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgmc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgnh;->zzc:Lcom/google/android/gms/internal/ads/zzgmc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgne;->zza:Lcom/google/android/gms/internal/ads/zzgne;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgmg;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgly;->zza(Lcom/google/android/gms/internal/ads/zzglw;Lcom/google/android/gms/internal/ads/zzgwa;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgly;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgnh;->zzd:Lcom/google/android/gms/internal/ads/zzgly;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgnf;->zza:Lcom/google/android/gms/internal/ads/zzgnf;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgmu;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgmf;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzglf;->zza(Lcom/google/android/gms/internal/ads/zzgld;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzglf;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgnh;->zze:Lcom/google/android/gms/internal/ads/zzglf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgng;->zza:Lcom/google/android/gms/internal/ads/zzgng;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgmf;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzglb;->zzb(Lcom/google/android/gms/internal/ads/zzgkz;Lcom/google/android/gms/internal/ads/zzgwa;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzglb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgnh;->zzf:Lcom/google/android/gms/internal/ads/zzglb;

    return-void
.end method

.method public static zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzglu;->zzb()Lcom/google/android/gms/internal/ads/zzglu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgnh;->zzc:Lcom/google/android/gms/internal/ads/zzgmc;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzglu;->zzf(Lcom/google/android/gms/internal/ads/zzgmc;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgnh;->zzd:Lcom/google/android/gms/internal/ads/zzgly;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzglu;->zze(Lcom/google/android/gms/internal/ads/zzgly;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgnh;->zze:Lcom/google/android/gms/internal/ads/zzglf;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzglu;->zzd(Lcom/google/android/gms/internal/ads/zzglf;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgnh;->zzf:Lcom/google/android/gms/internal/ads/zzglb;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzglu;->zzc(Lcom/google/android/gms/internal/ads/zzglb;)V

    return-void
.end method
