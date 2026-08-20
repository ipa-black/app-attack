.class public final Lcom/google/android/gms/internal/ads/zzhca;
.super Lcom/google/android/gms/internal/ads/zzgyd;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzo;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgyj;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhca;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Z

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/gms/internal/ads/zzgym;

.field private zzj:I

.field private zzk:Z

.field private zzl:Z

.field private zzm:Z

.field private zzn:Ljava/lang/String;

.field private zzo:I

.field private zzp:I

.field private zzq:I

.field private zzr:Z

.field private zzs:Lcom/google/android/gms/internal/ads/zzgym;

.field private zzt:Z

.field private zzu:J

.field private zzv:Lcom/google/android/gms/internal/ads/zzgyi;

.field private zzw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhbt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhca;->zzb:Lcom/google/android/gms/internal/ads/zzgyj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhca;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhca;->zzd:Lcom/google/android/gms/internal/ads/zzhca;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhca;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaS(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhca;->zzh:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaL()Lcom/google/android/gms/internal/ads/zzgym;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhca;->zzi:Lcom/google/android/gms/internal/ads/zzgym;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhca;->zzn:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhca;->zzaL()Lcom/google/android/gms/internal/ads/zzgym;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhca;->zzs:Lcom/google/android/gms/internal/ads/zzgym;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhca;->zzaI()Lcom/google/android/gms/internal/ads/zzgyi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhca;->zzv:Lcom/google/android/gms/internal/ads/zzgyi;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/ads/zzhca;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhca;->zzd:Lcom/google/android/gms/internal/ads/zzhca;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhca;->zzd:Lcom/google/android/gms/internal/ads/zzhca;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbu;

    .line 3
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhbu;-><init>(Lcom/google/android/gms/internal/ads/zzhbs;)V

    return-object v0

    .line 1
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhca;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhca;-><init>()V

    return-object v0

    .line 2
    :cond_3
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhbz;->zza:Lcom/google/android/gms/internal/ads/zzgyh;

    sget-object v8, Lcom/google/android/gms/internal/ads/zzhby;->zza:Lcom/google/android/gms/internal/ads/zzgyh;

    const-class v18, Lcom/google/android/gms/internal/ads/zzhbx;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbr;->zza()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v22

    const-string v23, "zzw"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v4, "zzg"

    const-string v5, "zzh"

    const-string v6, "zzi"

    const-string v7, "zzj"

    const-string v9, "zzk"

    const-string v10, "zzl"

    const-string v11, "zzm"

    const-string v12, "zzn"

    const-string v13, "zzo"

    const-string v14, "zzp"

    const-string v15, "zzq"

    const-string v16, "zzr"

    const-string v17, "zzs"

    const-string v19, "zzt"

    const-string v20, "zzu"

    const-string v21, "zzv"

    filled-new-array/range {v1 .. v23}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhca;->zzd:Lcom/google/android/gms/internal/ads/zzhca;

    const-string v2, "\u0001\u0012\u0000\u0001\u0001\u0012\u0012\u0000\u0003\u0000\u0001\u100c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u001a\u0005\u100c\u0003\u0006\u1007\u0004\u0007\u1007\u0005\u0008\u1007\u0006\t\u1008\u0007\n\u1004\u0008\u000b\u1004\t\u000c\u1004\n\r\u1007\u000b\u000e\u001b\u000f\u1007\u000c\u0010\u1002\r\u0011,\u0012\u1007\u000e"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhca;->zzaP(Lcom/google/android/gms/internal/ads/zzgzn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
