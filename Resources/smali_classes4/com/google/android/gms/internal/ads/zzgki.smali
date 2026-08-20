.class final Lcom/google/android/gms/internal/ads/zzgki;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgge;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzgsr;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgkj;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgkf;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgke;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgki;->zza:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgsr;Lcom/google/android/gms/internal/ads/zzgkj;Lcom/google/android/gms/internal/ads/zzgke;Lcom/google/android/gms/internal/ads/zzgkf;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgki;->zzb:Lcom/google/android/gms/internal/ads/zzgsr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgki;->zzc:Lcom/google/android/gms/internal/ads/zzgkj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgki;->zze:Lcom/google/android/gms/internal/ads/zzgke;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgki;->zzd:Lcom/google/android/gms/internal/ads/zzgkf;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzgsr;)Lcom/google/android/gms/internal/ads/zzgki;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsr;->zzh()Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwv;->zzD()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsr;->zzc()Lcom/google/android/gms/internal/ads/zzgsl;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgkm;->zzb(Lcom/google/android/gms/internal/ads/zzgsl;)Lcom/google/android/gms/internal/ads/zzgkj;

    move-result-object v3

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgkm;->zzc(Lcom/google/android/gms/internal/ads/zzgsl;)Lcom/google/android/gms/internal/ads/zzgke;

    move-result-object v4

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgkm;->zza(Lcom/google/android/gms/internal/ads/zzgsl;)Lcom/google/android/gms/internal/ads/zzgkf;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgki;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgki;-><init>(Lcom/google/android/gms/internal/ads/zzgsr;Lcom/google/android/gms/internal/ads/zzgkj;Lcom/google/android/gms/internal/ads/zzgke;Lcom/google/android/gms/internal/ads/zzgkf;[B)V

    return-object v0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HpkePublicKey.public_key is empty."

    .line 2
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 1
    new-array p2, p2, [B

    :cond_0
    move-object v5, p2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgki;->zzb:Lcom/google/android/gms/internal/ads/zzgsr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgki;->zzc:Lcom/google/android/gms/internal/ads/zzgkj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgki;->zze:Lcom/google/android/gms/internal/ads/zzgke;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgki;->zzd:Lcom/google/android/gms/internal/ads/zzgkf;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgsr;->zzh()Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgwv;->zzE()[B

    move-result-object p2

    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzgkj;->zza([B)Lcom/google/android/gms/internal/ads/zzgkk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgkk;->zza()[B

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgkk;->zzb()[B

    move-result-object v1

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgkg;->zzc([B[BLcom/google/android/gms/internal/ads/zzgkj;Lcom/google/android/gms/internal/ads/zzgke;Lcom/google/android/gms/internal/ads/zzgkf;[B)Lcom/google/android/gms/internal/ads/zzgkg;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgki;->zza:[B

    .line 3
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzgkg;->zzb([B[B)[B

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgkg;->zza()[B

    move-result-object p2

    filled-new-array {p2, p1}, [[B

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgut;->zzb([[B)[B

    move-result-object p1

    return-object p1
.end method
