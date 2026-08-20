.class public final Lcom/google/android/gms/internal/ads/zzbfi;
.super Lcom/google/android/gms/internal/ads/zzgyd;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzo;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzbfi;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/ads/zzbfy;

.field private zzh:Lcom/google/android/gms/internal/ads/zzbga;

.field private zzi:Lcom/google/android/gms/internal/ads/zzgym;

.field private zzj:Lcom/google/android/gms/internal/ads/zzbgc;

.field private zzk:Lcom/google/android/gms/internal/ads/zzbhm;

.field private zzl:Lcom/google/android/gms/internal/ads/zzbhc;

.field private zzm:Lcom/google/android/gms/internal/ads/zzbgq;

.field private zzn:Lcom/google/android/gms/internal/ads/zzbgs;

.field private zzo:Lcom/google/android/gms/internal/ads/zzgym;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbfi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfi;->zzb:Lcom/google/android/gms/internal/ads/zzbfi;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbfi;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaS(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyd;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbfi;->zzf:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfi;->zzaL()Lcom/google/android/gms/internal/ads/zzgym;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfi;->zzi:Lcom/google/android/gms/internal/ads/zzgym;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfi;->zzaL()Lcom/google/android/gms/internal/ads/zzgym;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfi;->zzo:Lcom/google/android/gms/internal/ads/zzgym;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/ads/zzbfi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfi;->zzb:Lcom/google/android/gms/internal/ads/zzbfi;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzbfi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfi;->zzb:Lcom/google/android/gms/internal/ads/zzbfi;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzbfi;Lcom/google/android/gms/internal/ads/zzbfg;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfg;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbfi;->zze:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbfi;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbfi;->zzd:I

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzbfi;Lcom/google/android/gms/internal/ads/zzbga;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfi;->zzh:Lcom/google/android/gms/internal/ads/zzbga;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbfi;->zzd:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbfi;->zzd:I

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    add-int/lit8 v0, p1, -0x1

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-object v2

    .line 1
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfi;->zzb:Lcom/google/android/gms/internal/ads/zzbfi;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfh;

    .line 4
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzbfh;-><init>(Lcom/google/android/gms/internal/ads/zzbfd;)V

    return-object v0

    .line 1
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfi;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbfi;-><init>()V

    return-object v0

    .line 2
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfg;->zzc()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbgj;->zza:Lcom/google/android/gms/internal/ads/zzgyh;

    const-class v9, Lcom/google/android/gms/internal/ads/zzbfw;

    const-string v15, "zzo"

    const-class v16, Lcom/google/android/gms/internal/ads/zzbhy;

    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v4, "zzf"

    const-string v6, "zzg"

    const-string v7, "zzh"

    const-string v8, "zzi"

    const-string v10, "zzj"

    const-string v11, "zzk"

    const-string v12, "zzl"

    const-string v13, "zzm"

    const-string v14, "zzn"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfi;->zzb:Lcom/google/android/gms/internal/ads/zzbfi;

    const-string v2, "\u0001\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007\u100c\u0000\u0008\u100c\u0001\t\u1009\u0002\n\u1009\u0003\u000b\u001b\u000c\u1009\u0004\r\u1009\u0005\u000e\u1009\u0006\u000f\u1009\u0007\u0010\u1009\u0008\u0011\u001b"

    .line 3
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfi;->zzaP(Lcom/google/android/gms/internal/ads/zzgzn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzbga;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfi;->zzh:Lcom/google/android/gms/internal/ads/zzbga;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbga;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    move-result-object v0

    :cond_0
    return-object v0
.end method
