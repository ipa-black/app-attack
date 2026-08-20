.class public final Lcom/google/android/gms/internal/ads/zzans;
.super Lcom/google/android/gms/internal/ads/zzgyd;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzo;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzans;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzgym;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgwv;

.field private zzg:I

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzans;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzans;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzans;->zzb:Lcom/google/android/gms/internal/ads/zzans;

    const-class v1, Lcom/google/android/gms/internal/ads/zzans;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaS(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyd;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzans;->zzaL()Lcom/google/android/gms/internal/ads/zzgym;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzans;->zze:Lcom/google/android/gms/internal/ads/zzgym;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwv;->zzb:Lcom/google/android/gms/internal/ads/zzgwv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzans;->zzf:Lcom/google/android/gms/internal/ads/zzgwv;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzans;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzans;->zzh:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzanr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzans;->zzb:Lcom/google/android/gms/internal/ads/zzans;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaz()Lcom/google/android/gms/internal/ads/zzgxz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzanr;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/ads/zzans;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzans;->zzb:Lcom/google/android/gms/internal/ads/zzans;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzans;Lcom/google/android/gms/internal/ads/zzgwv;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzans;->zze:Lcom/google/android/gms/internal/ads/zzgym;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgym;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaM(Lcom/google/android/gms/internal/ads/zzgym;)Lcom/google/android/gms/internal/ads/zzgym;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzans;->zze:Lcom/google/android/gms/internal/ads/zzgym;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzans;->zze:Lcom/google/android/gms/internal/ads/zzgym;

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzgym;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzans;Lcom/google/android/gms/internal/ads/zzgwv;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzans;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzans;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzans;->zzf:Lcom/google/android/gms/internal/ads/zzgwv;

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzans;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzans;->zzh:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzans;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzans;->zzd:I

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzans;->zzb:Lcom/google/android/gms/internal/ads/zzans;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanr;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzanr;-><init>(Lcom/google/android/gms/internal/ads/zzamk;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzans;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzans;-><init>()V

    return-object p1

    .line 2
    :cond_3
    sget-object v4, Lcom/google/android/gms/internal/ads/zzanm;->zza:Lcom/google/android/gms/internal/ads/zzgyh;

    const-string v5, "zzh"

    sget-object v6, Lcom/google/android/gms/internal/ads/zzank;->zza:Lcom/google/android/gms/internal/ads/zzgyh;

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzans;->zzb:Lcom/google/android/gms/internal/ads/zzans;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\u100a\u0000\u0003\u100c\u0001\u0004\u100c\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzans;->zzaP(Lcom/google/android/gms/internal/ads/zzgzn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
