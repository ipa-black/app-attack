.class public final Lcom/google/android/gms/internal/ads/zzbgm;
.super Lcom/google/android/gms/internal/ads/zzgyd;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzo;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzbgm;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/ads/zzbhw;

.field private zzj:Lcom/google/android/gms/internal/ads/zzgyl;

.field private zzk:Lcom/google/android/gms/internal/ads/zzbge;

.field private zzl:Lcom/google/android/gms/internal/ads/zzbgh;

.field private zzm:Lcom/google/android/gms/internal/ads/zzbha;

.field private zzn:Lcom/google/android/gms/internal/ads/zzbfi;

.field private zzo:Lcom/google/android/gms/internal/ads/zzbhk;

.field private zzp:Lcom/google/android/gms/internal/ads/zzbir;

.field private zzq:Lcom/google/android/gms/internal/ads/zzbfr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgm;->zzb:Lcom/google/android/gms/internal/ads/zzbgm;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbgm;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaS(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzf:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzh:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaK()Lcom/google/android/gms/internal/ads/zzgyl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzj:Lcom/google/android/gms/internal/ads/zzgyl;

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzbgl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgm;->zzb:Lcom/google/android/gms/internal/ads/zzbgm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaz()Lcom/google/android/gms/internal/ads/zzgxz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgl;

    return-object v0
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/ads/zzbgm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgm;->zzb:Lcom/google/android/gms/internal/ads/zzbgm;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzbgm;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzbgm;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzj:Lcom/google/android/gms/internal/ads/zzgyl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzc()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgyl;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    .line 3
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyl;->zza(I)Lcom/google/android/gms/internal/ads/zzgyl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzj:Lcom/google/android/gms/internal/ads/zzgyl;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzj:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 4
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzau(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzbgm;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaK()Lcom/google/android/gms/internal/ads/zzgyl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzj:Lcom/google/android/gms/internal/ads/zzgyl;

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzbgm;Lcom/google/android/gms/internal/ads/zzbge;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzk:Lcom/google/android/gms/internal/ads/zzbge;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzd:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzd:I

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/ads/zzbgm;Lcom/google/android/gms/internal/ads/zzbfi;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzn:Lcom/google/android/gms/internal/ads/zzbfi;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzd:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzd:I

    return-void
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/ads/zzbgm;Lcom/google/android/gms/internal/ads/zzbhk;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzo:Lcom/google/android/gms/internal/ads/zzbhk;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzd:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzd:I

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/ads/zzbgm;Lcom/google/android/gms/internal/ads/zzbir;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzp:Lcom/google/android/gms/internal/ads/zzbir;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzd:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzd:I

    return-void
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/ads/zzbgm;Lcom/google/android/gms/internal/ads/zzbfr;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzq:Lcom/google/android/gms/internal/ads/zzbfr;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzd:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbfi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzn:Lcom/google/android/gms/internal/ads/zzbfi;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfi;->zzc()Lcom/google/android/gms/internal/ads/zzbfi;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgm;->zzb:Lcom/google/android/gms/internal/ads/zzbgm;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgl;

    .line 3
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzbgl;-><init>(Lcom/google/android/gms/internal/ads/zzbfd;)V

    return-object v0

    .line 1
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgm;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgm;-><init>()V

    return-object v0

    .line 2
    :cond_3
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbgj;->zza:Lcom/google/android/gms/internal/ads/zzgyh;

    const-string v14, "zzp"

    const-string v15, "zzq"

    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v3, "zzf"

    const-string v4, "zzg"

    const-string v5, "zzh"

    const-string v7, "zzi"

    const-string v8, "zzj"

    const-string v9, "zzk"

    const-string v10, "zzl"

    const-string v11, "zzm"

    const-string v12, "zzn"

    const-string v13, "zzo"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgm;->zzb:Lcom/google/android/gms/internal/ads/zzbgm;

    const-string v2, "\u0001\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\t\u1004\u0000\n\u1008\u0001\u000b\u100b\u0002\u000c\u100c\u0003\r\u1009\u0004\u000e\u0015\u000f\u1009\u0005\u0010\u1009\u0006\u0011\u1009\u0007\u0012\u1009\u0008\u0013\u1009\t\u0014\u1009\n\u0015\u1009\u000b"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaP(Lcom/google/android/gms/internal/ads/zzgzn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbge;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzk:Lcom/google/android/gms/internal/ads/zzbge;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbge;->zzc()Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzf:Ljava/lang/String;

    return-object v0
.end method
