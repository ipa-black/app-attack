.class public final Lcom/google/android/gms/internal/ads/zzckp;
.super Lcom/google/android/gms/internal/ads/zzcjd;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/gms/internal/ads/zzcjn;


# instance fields
.field private final zzd:Lcom/google/android/gms/internal/ads/zzcjx;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcjy;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcjw;

.field private zzg:Lcom/google/android/gms/internal/ads/zzcjc;

.field private zzh:Landroid/view/Surface;

.field private zzi:Lcom/google/android/gms/internal/ads/zzcjo;

.field private zzj:Ljava/lang/String;

.field private zzk:[Ljava/lang/String;

.field private zzl:Z

.field private zzm:I

.field private zzn:Lcom/google/android/gms/internal/ads/zzcjv;

.field private final zzo:Z

.field private zzp:Z

.field private zzq:Z

.field private zzr:I

.field private zzs:I

.field private zzt:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjy;Lcom/google/android/gms/internal/ads/zzcjx;ZZLcom/google/android/gms/internal/ads/zzcjw;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p7}, Lcom/google/android/gms/internal/ads/zzcjd;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzm:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzd:Lcom/google/android/gms/internal/ads/zzcjx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zze:Lcom/google/android/gms/internal/ads/zzcjy;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzo:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzf:Lcom/google/android/gms/internal/ads/zzcjw;

    .line 2
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/zzckp;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 3
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzcjy;->zza(Lcom/google/android/gms/internal/ads/zzcjd;)V

    return-void
.end method

.method private static zzS(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzT()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcjo;->zzM(Z)V

    :cond_0
    return-void
.end method

.method private final zzU()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzp:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzp:Z

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfvb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzckj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzckj;-><init>(Lcom/google/android/gms/internal/ads/zzckp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfvb;->post(Ljava/lang/Runnable;)Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zze:Lcom/google/android/gms/internal/ads/zzcjy;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjy;->zzb()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzq:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzp()V

    :cond_1
    return-void
.end method

.method private final zzV(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzj:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzh:Landroid/view/Surface;

    if-nez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzad()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjo;->zzQ()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzX()V

    goto :goto_1

    .line 25
    :cond_3
    const-string p1, "No valid ExoPlayerAdapter exists when switch source."

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzj(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzj:Ljava/lang/String;

    const-string v0, "cache:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzd:Lcom/google/android/gms/internal/ads/zzcjx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzj:Ljava/lang/String;

    .line 4
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzcjx;->zzbq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcma;

    move-result-object p1

    .line 5
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzcmj;

    if-eqz v1, :cond_6

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcmj;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcmj;->zzj()Lcom/google/android/gms/internal/ads/zzcjo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjo;->zzR()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 30
    :cond_5
    const-string p1, "Precached video player has been released."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzj(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_6
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzcmg;

    if-eqz v1, :cond_8

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcmg;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzE()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcmg;->zzl()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcmg;->zzm()Z

    move-result v3

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcmg;->zzi()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "Stream cache URL is null."

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzj(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzD()Lcom/google/android/gms/internal/ads/zzcjo;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/net/Uri;

    .line 18
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcjo;->zzD([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzj:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Stream cache miss: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzj(Ljava/lang/String;)V

    return-void

    .line 20
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzD()Lcom/google/android/gms/internal/ads/zzcjo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzE()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzk:[Ljava/lang/String;

    .line 22
    array-length v1, v1

    new-array v1, v1, [Landroid/net/Uri;

    move v2, v0

    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzk:[Ljava/lang/String;

    .line 23
    array-length v4, v3

    if-ge v2, v4, :cond_a

    .line 24
    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    .line 25
    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzcjo;->zzC([Landroid/net/Uri;Ljava/lang/String;)V

    .line 8
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    .line 26
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzcjo;->zzI(Lcom/google/android/gms/internal/ads/zzcjn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzh:Landroid/view/Surface;

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzckp;->zzZ(Landroid/view/Surface;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjo;->zzR()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjo;->zzt()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzm:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzU()V

    :cond_b
    :goto_4
    return-void
.end method

.method private final zzW()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcjo;->zzM(Z)V

    :cond_0
    return-void
.end method

.method private final zzX()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzckp;->zzZ(Landroid/view/Surface;Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzcjo;->zzI(Lcom/google/android/gms/internal/ads/zzcjn;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcjo;->zzE()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzm:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzl:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzq:Z

    :cond_1
    return-void
.end method

.method private final zzY(FZ)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzcjo;->zzP(FZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    const-string p2, ""

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcho;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1
    :cond_0
    const-string p1, "Trying to set volume before player is initialized."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzj(Ljava/lang/String;)V

    return-void
.end method

.method private final zzZ(Landroid/view/Surface;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcjo;->zzO(Landroid/view/Surface;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    const-string p2, ""

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcho;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1
    :cond_0
    const-string p1, "Trying to set surface before player is initialized."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzj(Ljava/lang/String;)V

    return-void
.end method

.method private final zzaa()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzr:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzs:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzckp;->zzab(II)V

    return-void
.end method

.method private final zzab(II)V
    .locals 0

    if-lez p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzt:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzt:F

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzckp;->requestLayout()V

    :cond_1
    return-void
.end method

.method private final zzac()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzad()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzm:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzad()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjo;->zzR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzl:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcjd;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzckp;->getMeasuredWidth()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzckp;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzt:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzn:Lcom/google/android/gms/internal/ads/zzcjv;

    if-nez v1, :cond_1

    int-to-float v1, p1

    int-to-float v2, p2

    div-float v2, v1, v2

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    div-float/2addr v1, v0

    float-to-int p2, v1

    :cond_0
    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    int-to-float p1, p2

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzckp;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzn:Lcom/google/android/gms/internal/ads/zzcjv;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcjv;->zzc(II)V

    :cond_2
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzo:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzckp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcjv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzn:Lcom/google/android/gms/internal/ads/zzcjv;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjv;->zzd(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzn:Lcom/google/android/gms/internal/ads/zzcjv;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjv;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzn:Lcom/google/android/gms/internal/ads/zzcjv;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjv;->zzb()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzn:Lcom/google/android/gms/internal/ads/zzcjv;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjv;->zze()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzn:Lcom/google/android/gms/internal/ads/zzcjv;

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/Surface;

    .line 6
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzh:Landroid/view/Surface;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzckp;->zzV(Z)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzckp;->zzZ(Landroid/view/Surface;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzf:Lcom/google/android/gms/internal/ads/zzcjw;

    .line 9
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzcjw;->zza:Z

    if-nez p1, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzT()V

    .line 7
    :cond_3
    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzr:I

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzs:I

    if-nez p1, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzaa()V

    goto :goto_3

    .line 11
    :cond_5
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzckp;->zzab(II)V

    .line 13
    :goto_3
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfvb;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzckk;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzckk;-><init>(Lcom/google/android/gms/internal/ads/zzckp;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfvb;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzo()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzn:Lcom/google/android/gms/internal/ads/zzcjv;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjv;->zze()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzn:Lcom/google/android/gms/internal/ads/zzcjv;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzW()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzh:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzh:Landroid/view/Surface;

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzckp;->zzZ(Landroid/view/Surface;Z)V

    .line 6
    :cond_2
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfvb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzckn;-><init>(Lcom/google/android/gms/internal/ads/zzckp;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfvb;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzn:Lcom/google/android/gms/internal/ads/zzcjv;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjv;->zzc(II)V

    .line 2
    :cond_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfvb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckm;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzckm;-><init>(Lcom/google/android/gms/internal/ads/zzckp;II)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfvb;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zze:Lcom/google/android/gms/internal/ads/zzcjy;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcjy;->zzf(Lcom/google/android/gms/internal/ads/zzcjd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zza:Lcom/google/android/gms/internal/ads/zzcjr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzg:Lcom/google/android/gms/internal/ads/zzcjc;

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcjr;->zza(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/zzcjc;)V

    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdExoPlayerView3 window visibility changed to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfvb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzckl;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzckl;-><init>(Lcom/google/android/gms/internal/ads/zzckp;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfvb;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzcjd;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final zzA(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjo;->zzN(I)V

    :cond_0
    return-void
.end method

.method public final zzB(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 2
    new-array p2, v0, [Ljava/lang/String;

    aput-object p1, p2, v1

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzk:[Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    array-length v2, p2

    .line 1
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzk:[Ljava/lang/String;

    .line 2
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzj:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzf:Lcom/google/android/gms/internal/ads/zzcjw;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzcjw;->zzn:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzm:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzj:Ljava/lang/String;

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzckp;->zzV(Z)V

    return-void
.end method

.method public final zzC(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzr:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzs:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzaa()V

    return-void
.end method

.method final zzD()Lcom/google/android/gms/internal/ads/zzcjo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzf:Lcom/google/android/gms/internal/ads/zzcjw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zzm:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzd:Lcom/google/android/gms/internal/ads/zzcjx;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjx;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzf:Lcom/google/android/gms/internal/ads/zzcjw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzd:Lcom/google/android/gms/internal/ads/zzcjx;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcnb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjw;Lcom/google/android/gms/internal/ads/zzcjx;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzclf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzd:Lcom/google/android/gms/internal/ads/zzcjx;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjx;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzf:Lcom/google/android/gms/internal/ads/zzcjw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzd:Lcom/google/android/gms/internal/ads/zzcjx;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzclf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjw;Lcom/google/android/gms/internal/ads/zzcjx;)V

    return-object v0
.end method

.method final zzE()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzd:Lcom/google/android/gms/internal/ads/zzcjx;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjx;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzd:Lcom/google/android/gms/internal/ads/zzcjx;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjx;->zzp()Lcom/google/android/gms/internal/ads/zzchu;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzchu;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzF(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzg:Lcom/google/android/gms/internal/ads/zzcjc;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter error"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcjc;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic zzG()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzg:Lcom/google/android/gms/internal/ads/zzcjc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zza()V

    :cond_0
    return-void
.end method

.method final synthetic zzH()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzg:Lcom/google/android/gms/internal/ads/zzcjc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zzf()V

    :cond_0
    return-void
.end method

.method final synthetic zzI(ZJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzd:Lcom/google/android/gms/internal/ads/zzcjx;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjx;->zzx(ZJ)V

    return-void
.end method

.method final synthetic zzJ(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzg:Lcom/google/android/gms/internal/ads/zzcjc;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter exception"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcjc;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic zzK()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzg:Lcom/google/android/gms/internal/ads/zzcjc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zzg()V

    :cond_0
    return-void
.end method

.method final synthetic zzL()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzg:Lcom/google/android/gms/internal/ads/zzcjc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zzh()V

    :cond_0
    return-void
.end method

.method final synthetic zzM()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzg:Lcom/google/android/gms/internal/ads/zzcjc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zzi()V

    :cond_0
    return-void
.end method

.method final synthetic zzN(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzg:Lcom/google/android/gms/internal/ads/zzcjc;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcjc;->zzj(II)V

    :cond_0
    return-void
.end method

.method final synthetic zzO()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzb:Lcom/google/android/gms/internal/ads/zzckb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckb;->zza()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzckp;->zzY(FZ)V

    return-void
.end method

.method final synthetic zzP(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzg:Lcom/google/android/gms/internal/ads/zzcjc;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjc;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method final synthetic zzQ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzg:Lcom/google/android/gms/internal/ads/zzcjc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zzd()V

    :cond_0
    return-void
.end method

.method final synthetic zzR()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzg:Lcom/google/android/gms/internal/ads/zzcjc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zze()V

    :cond_0
    return-void
.end method

.method public final zza()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzac()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjo;->zzy()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjo;->zzr()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzc()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzac()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjo;->zzz()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzs:I

    return v0
.end method

.method public final zze()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzr:I

    return v0
.end method

.method public final zzf()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjo;->zzx()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzg()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjo;->zzA()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzh()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjo;->zzB()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzi(ZJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzd:Lcom/google/android/gms/internal/ads/zzcjx;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcib;->zze:Lcom/google/android/gms/internal/ads/zzgfc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzckc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzckc;-><init>(Lcom/google/android/gms/internal/ads/zzckp;ZJ)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfc;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final zzj()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzo:Z

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, " spherical"

    :goto_0
    const-string v1, "ExoPlayer/3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzk(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzckp;->zzS(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExoPlayerAdapter error: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzj(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzl:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzf:Lcom/google/android/gms/internal/ads/zzcjw;

    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zza:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzW()V

    .line 5
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfvb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzckf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzckf;-><init>(Lcom/google/android/gms/internal/ads/zzckp;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfvb;->post(Ljava/lang/Runnable;)Z

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcgx;

    move-result-object p1

    const-string v0, "AdExoPlayerView.onError"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcgx;->zzt(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzl(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string p1, "onLoadException"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzckp;->zzS(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExoPlayerAdapter exception: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzj(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcgx;

    move-result-object v0

    const-string v1, "AdExoPlayerView.onException"

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzcgx;->zzt(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 4
    sget-object p2, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfvb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcke;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcke;-><init>(Lcom/google/android/gms/internal/ads/zzckp;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfvb;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzm(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzm:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzm:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzf:Lcom/google/android/gms/internal/ads/zzcjw;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzcjw;->zza:Z

    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzW()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zze:Lcom/google/android/gms/internal/ads/zzcjy;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjy;->zze()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzb:Lcom/google/android/gms/internal/ads/zzckb;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzckb;->zzc()V

    .line 5
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfvb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzckd;-><init>(Lcom/google/android/gms/internal/ads/zzckp;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfvb;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzU()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final zzn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzf:Lcom/google/android/gms/internal/ads/zzcjw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zzm:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfvb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzckh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzckh;-><init>(Lcom/google/android/gms/internal/ads/zzckp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfvb;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzb:Lcom/google/android/gms/internal/ads/zzckb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckb;->zza()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzckp;->zzY(FZ)V

    return-void
.end method

.method public final zzo()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzac()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzf:Lcom/google/android/gms/internal/ads/zzcjw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zza:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzW()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcjo;->zzL(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zze:Lcom/google/android/gms/internal/ads/zzcjy;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjy;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzb:Lcom/google/android/gms/internal/ads/zzckb;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckb;->zzc()V

    .line 6
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfvb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcki;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcki;-><init>(Lcom/google/android/gms/internal/ads/zzckp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfvb;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final zzp()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzac()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzf:Lcom/google/android/gms/internal/ads/zzcjw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcjw;->zza:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzT()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcjo;->zzL(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zze:Lcom/google/android/gms/internal/ads/zzcjy;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjy;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzb:Lcom/google/android/gms/internal/ads/zzckb;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckb;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zza:Lcom/google/android/gms/internal/ads/zzcjr;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjr;->zzb()V

    .line 7
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfvb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcko;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcko;-><init>(Lcom/google/android/gms/internal/ads/zzckp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfvb;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzq:Z

    return-void
.end method

.method public final zzq(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzac()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcjo;->zzF(J)V

    :cond_0
    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzcjc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzg:Lcom/google/android/gms/internal/ads/zzcjc;

    return-void
.end method

.method public final zzs(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcjd;->zzB(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzt()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzad()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjo;->zzQ()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzX()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zze:Lcom/google/android/gms/internal/ads/zzcjy;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjy;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzb:Lcom/google/android/gms/internal/ads/zzckb;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckb;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zze:Lcom/google/android/gms/internal/ads/zzcjy;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjy;->zzd()V

    return-void
.end method

.method public final zzu(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzn:Lcom/google/android/gms/internal/ads/zzcjv;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcjv;->zzf(FF)V

    :cond_0
    return-void
.end method

.method public final zzv()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfvb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzckg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzckg;-><init>(Lcom/google/android/gms/internal/ads/zzckp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfvb;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzw(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjo;->zzG(I)V

    :cond_0
    return-void
.end method

.method public final zzx(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjo;->zzH(I)V

    :cond_0
    return-void
.end method

.method public final zzy(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjo;->zzJ(I)V

    :cond_0
    return-void
.end method

.method public final zzz(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzi:Lcom/google/android/gms/internal/ads/zzcjo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjo;->zzK(I)V

    :cond_0
    return-void
.end method
