.class public final Lcom/google/android/gms/internal/ads/zzbhf;
.super Lcom/google/android/gms/internal/ads/zzgyd;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzo;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgyj;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzbhf;


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:I

.field private zzh:J

.field private zzi:J

.field private zzj:Lcom/google/android/gms/internal/ads/zzgyi;

.field private zzk:Lcom/google/android/gms/internal/ads/zzbha;

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:I

.field private zzr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbhd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzb:Lcom/google/android/gms/internal/ads/zzgyj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbhf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzd:Lcom/google/android/gms/internal/ads/zzbhf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbhf;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaS(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyd;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhf;->zzaI()Lcom/google/android/gms/internal/ads/zzgyi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzj:Lcom/google/android/gms/internal/ads/zzgyi;

    return-void
.end method

.method static synthetic zzA(Lcom/google/android/gms/internal/ads/zzbhf;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzm:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    return-void
.end method

.method static synthetic zzB(Lcom/google/android/gms/internal/ads/zzbhf;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzn:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    return-void
.end method

.method static synthetic zzC(Lcom/google/android/gms/internal/ads/zzbhf;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzp:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    return-void
.end method

.method public static zzg()Lcom/google/android/gms/internal/ads/zzbhe;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzd:Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaz()Lcom/google/android/gms/internal/ads/zzgxz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhe;

    return-object v0
.end method

.method static synthetic zzh()Lcom/google/android/gms/internal/ads/zzbhf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzd:Lcom/google/android/gms/internal/ads/zzbhf;

    return-object v0
.end method

.method public static zzi([B)Lcom/google/android/gms/internal/ads/zzbhf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyp;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzd:Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaE(Lcom/google/android/gms/internal/ads/zzgyd;[B)Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbhf;

    return-object p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/ads/zzbhf;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzf:J

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/ads/zzbhf;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzh:J

    return-void
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/ads/zzbhf;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzi:J

    return-void
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/ads/zzbhf;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzj:Lcom/google/android/gms/internal/ads/zzgyi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgyi;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaJ(Lcom/google/android/gms/internal/ads/zzgyi;)Lcom/google/android/gms/internal/ads/zzgyi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzj:Lcom/google/android/gms/internal/ads/zzgyi;

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzj:Lcom/google/android/gms/internal/ads/zzgyi;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfu;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyi;->zzh(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/ads/zzbhf;Lcom/google/android/gms/internal/ads/zzbha;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzk:Lcom/google/android/gms/internal/ads/zzbha;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    return-void
.end method

.method static synthetic zzq(Lcom/google/android/gms/internal/ads/zzbhf;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzo:I

    return-void
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/ads/zzbhf;Lcom/google/android/gms/internal/ads/zzbhj;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbhj;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzq:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    return-void
.end method

.method static synthetic zzs(Lcom/google/android/gms/internal/ads/zzbhf;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzr:J

    return-void
.end method

.method static synthetic zzy(Lcom/google/android/gms/internal/ads/zzbhf;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    return-void
.end method

.method static synthetic zzz(Lcom/google/android/gms/internal/ads/zzbhf;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzl:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zze:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzo:I

    return v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzd:Lcom/google/android/gms/internal/ads/zzbhf;

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhe;

    .line 5
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzbhe;-><init>(Lcom/google/android/gms/internal/ads/zzbfd;)V

    return-object v0

    .line 1
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhf;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbhf;-><init>()V

    return-object v0

    .line 2
    :cond_3
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbgj;->zza:Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfu;->zzc()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v8

    sget-object v15, Lcom/google/android/gms/internal/ads/zzbgj;->zza:Lcom/google/android/gms/internal/ads/zzgyh;

    move-object/from16 v18, v15

    move-object v11, v15

    move-object v13, v15

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhj;->zzc()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v20

    const-string v21, "zzr"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v5, "zzh"

    const-string v6, "zzi"

    const-string v7, "zzj"

    const-string v9, "zzk"

    const-string v10, "zzl"

    const-string v12, "zzm"

    const-string v14, "zzn"

    const-string v16, "zzo"

    const-string v17, "zzp"

    const-string v19, "zzq"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhf;->zzd:Lcom/google/android/gms/internal/ads/zzbhf;

    const-string v2, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001\u1002\u0000\u0002\u100c\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u001e\u0006\u1009\u0004\u0007\u100c\u0005\u0008\u100c\u0006\t\u100c\u0007\n\u1004\u0008\u000b\u100c\t\u000c\u100c\n\r\u1002\u000b"

    .line 4
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzaP(Lcom/google/android/gms/internal/ads/zzgzn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzi:J

    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzh:J

    return-wide v0
.end method

.method public final zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzf:J

    return-wide v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzbha;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzk:Lcom/google/android/gms/internal/ads/zzbha;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbha;->zzd()Lcom/google/android/gms/internal/ads/zzbha;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/internal/ads/zzbhj;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzq:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbhj;->zzb(I)Lcom/google/android/gms/internal/ads/zzbhj;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhj;->zza:Lcom/google/android/gms/internal/ads/zzbhj;

    :cond_0
    return-object v0
.end method

.method public final zzk()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzj:Lcom/google/android/gms/internal/ads/zzgyi;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhf;->zzb:Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgyj;)V

    return-object v0
.end method

.method public final zzt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzm:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgk;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final zzu()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzn:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgk;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final zzv()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzp:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgk;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final zzw()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzg:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgk;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final zzx()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzl:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgk;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
