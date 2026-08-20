.class public final Lcom/google/android/gms/internal/ads/zzhcw;
.super Lcom/google/android/gms/internal/ads/zzgyd;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzo;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhcw;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzhcv;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgym;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgwv;

.field private zzh:Lcom/google/android/gms/internal/ads/zzgwv;

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzgwv;

.field private zzk:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhcw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhcw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhcw;->zzb:Lcom/google/android/gms/internal/ads/zzhcw;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhcw;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaS(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyd;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzk:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcw;->zzaL()Lcom/google/android/gms/internal/ads/zzgym;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzf:Lcom/google/android/gms/internal/ads/zzgym;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwv;->zzb:Lcom/google/android/gms/internal/ads/zzgwv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzg:Lcom/google/android/gms/internal/ads/zzgwv;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwv;->zzb:Lcom/google/android/gms/internal/ads/zzgwv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzh:Lcom/google/android/gms/internal/ads/zzgwv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzj:Lcom/google/android/gms/internal/ads/zzgwv;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/ads/zzhcw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcw;->zzb:Lcom/google/android/gms/internal/ads/zzhcw;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    const/4 p3, 0x4

    const/4 v0, 0x0

    if-eq p1, p3, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    :goto_0
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzk:B

    return-object v0

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhcw;->zzb:Lcom/google/android/gms/internal/ads/zzhcw;

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhct;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzhct;-><init>(Lcom/google/android/gms/internal/ads/zzhbs;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhcw;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhcw;-><init>()V

    return-object p1

    .line 2
    :cond_4
    const-class v3, Lcom/google/android/gms/internal/ads/zzhco;

    const-string v6, "zzi"

    const-string v7, "zzj"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v4, "zzg"

    const-string v5, "zzh"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhcw;->zzb:Lcom/google/android/gms/internal/ads/zzhcw;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003\u0006\u100a\u0004"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzhcw;->zzaP(Lcom/google/android/gms/internal/ads/zzgzn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzk:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
