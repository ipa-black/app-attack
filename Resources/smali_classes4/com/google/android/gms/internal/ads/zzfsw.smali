.class public final Lcom/google/android/gms/internal/ads/zzfsw;
.super Lcom/google/android/gms/internal/ads/zzgyd;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzo;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgyj;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzfsw;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzgyi;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfst;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfst;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfsw;->zzb:Lcom/google/android/gms/internal/ads/zzgyj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfsw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfsw;->zzd:Lcom/google/android/gms/internal/ads/zzfsw;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfsw;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaS(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyd;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfsw;->zzaI()Lcom/google/android/gms/internal/ads/zzgyi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsw;->zzf:Lcom/google/android/gms/internal/ads/zzgyi;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsw;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsw;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsw;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfsv;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfsw;->zzd:Lcom/google/android/gms/internal/ads/zzfsw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaz()Lcom/google/android/gms/internal/ads/zzgxz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfsv;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/ads/zzfsw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfsw;->zzd:Lcom/google/android/gms/internal/ads/zzfsw;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzfsw;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfsw;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfsw;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsw;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzfsw;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsw;->zzf:Lcom/google/android/gms/internal/ads/zzgyi;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgyi;->zzc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaJ(Lcom/google/android/gms/internal/ads/zzgyi;)Lcom/google/android/gms/internal/ads/zzgyi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsw;->zzf:Lcom/google/android/gms/internal/ads/zzgyi;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfsw;->zzf:Lcom/google/android/gms/internal/ads/zzgyi;

    const/4 p1, 0x2

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyi;->zzh(I)V

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfsw;->zzd:Lcom/google/android/gms/internal/ads/zzfsw;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfsv;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzfsv;-><init>(Lcom/google/android/gms/internal/ads/zzfst;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfsw;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfsw;-><init>()V

    return-object p1

    .line 2
    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfsu;->zza:Lcom/google/android/gms/internal/ads/zzgyh;

    const-string v4, "zzh"

    const-string v5, "zzi"

    const-string v0, "zze"

    const-string v1, "zzf"

    const-string v3, "zzg"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfsw;->zzd:Lcom/google/android/gms/internal/ads/zzfsw;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002\u1008\u0000\u0003\u1008\u0001\u0004\u1008\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzfsw;->zzaP(Lcom/google/android/gms/internal/ads/zzgzn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
