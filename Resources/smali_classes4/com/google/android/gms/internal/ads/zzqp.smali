.class public abstract Lcom/google/android/gms/internal/ads/zzqp;
.super Lcom/google/android/gms/internal/ads/zzgr;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# static fields
.field private static final zzb:[B


# instance fields
.field private zzA:F

.field private zzB:Ljava/util/ArrayDeque;

.field private zzC:Lcom/google/android/gms/internal/ads/zzqo;

.field private zzD:Lcom/google/android/gms/internal/ads/zzqm;

.field private zzE:I

.field private zzF:Z

.field private zzG:Z

.field private zzH:Z

.field private zzI:Z

.field private zzJ:Z

.field private zzK:Z

.field private zzL:Z

.field private zzM:Z

.field private zzN:Z

.field private zzO:Lcom/google/android/gms/internal/ads/zzqe;

.field private zzP:J

.field private zzQ:I

.field private zzR:I

.field private zzS:Ljava/nio/ByteBuffer;

.field private zzT:Z

.field private zzU:Z

.field private zzV:Z

.field private zzW:Z

.field private zzX:Z

.field private zzY:Z

.field private zzZ:I

.field protected zza:Lcom/google/android/gms/internal/ads/zzgs;

.field private zzaa:I

.field private zzab:I

.field private zzac:Z

.field private zzad:Z

.field private zzae:Z

.field private zzaf:J

.field private zzag:J

.field private zzah:Z

.field private zzai:Z

.field private zzaj:Z

.field private zzak:J

.field private zzal:J

.field private zzam:I

.field private zzan:Lcom/google/android/gms/internal/ads/zzpp;

.field private zzao:Lcom/google/android/gms/internal/ads/zzpp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzqi;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzqr;

.field private final zze:F

.field private final zzf:Lcom/google/android/gms/internal/ads/zzgi;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzgi;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzgi;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzqd;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzk:Ljava/util/ArrayList;

.field private final zzl:Landroid/media/MediaCodec$BufferInfo;

.field private final zzm:[J

.field private final zzn:[J

.field private final zzo:[J

.field private zzp:Lcom/google/android/gms/internal/ads/zzaf;

.field private zzq:Lcom/google/android/gms/internal/ads/zzaf;

.field private zzr:Landroid/media/MediaCrypto;

.field private zzs:Z

.field private zzt:J

.field private zzu:F

.field private zzv:F

.field private zzw:Lcom/google/android/gms/internal/ads/zzqj;

.field private zzx:Lcom/google/android/gms/internal/ads/zzaf;

.field private zzy:Landroid/media/MediaFormat;

.field private zzz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzqp;->zzb:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzqi;Lcom/google/android/gms/internal/ads/zzqr;ZF)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgr;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzc:Lcom/google/android/gms/internal/ads/zzqi;

    .line 11
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzd:Lcom/google/android/gms/internal/ads/zzqr;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzqp;->zze:F

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgi;

    const/4 p2, 0x0

    .line 3
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzgi;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzf:Lcom/google/android/gms/internal/ads/zzgi;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgi;

    .line 4
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzgi;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgi;

    const/4 p3, 0x2

    .line 5
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzgi;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzh:Lcom/google/android/gms/internal/ads/zzgi;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqd;

    .line 6
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzqd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzi:Lcom/google/android/gms/internal/ads/zzqd;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzek;

    const/16 p4, 0xa

    invoke-direct {p3, p4}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzj:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p3, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzk:Ljava/util/ArrayList;

    .line 8
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzu:F

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzv:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzt:J

    new-array p3, p4, [J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzm:[J

    new-array p3, p4, [J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzn:[J

    new-array p3, p4, [J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzo:[J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzak:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzal:J

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgi;->zzi(I)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqd;->zzb:Ljava/nio/ByteBuffer;

    .line 10
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzA:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzE:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzZ:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzQ:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzR:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzP:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzag:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaa:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzab:I

    return-void
.end method

.method private final zzT()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzX:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzi:Lcom/google/android/gms/internal/ads/zzqd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgc;->zzb()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzh:Lcom/google/android/gms/internal/ads/zzgi;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgc;->zzb()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzW:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzV:Z

    return-void
.end method

.method private final zzU()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzac:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaa:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzab:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzap()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzan()V

    return-void
.end method

.method private final zzaA()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    throw v0
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v2, 0x0

    const/16 v3, 0x1776

    .line 2
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgr;->zzbg(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object v0

    .line 3
    throw v0
.end method

.method private final zzaB()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzac:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaa:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzG:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzI:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzab:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzab:I

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzaA()V

    :goto_1
    return v1
.end method

.method private final zzaC()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaa:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzah:Z

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzQ:I

    if-gez v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqj;->zza()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzQ:I

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    .line 2
    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/zzqj;->zzf(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgc;->zzb()V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaa:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzN:Z

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzad:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzQ:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzqj;->zzj(IIIJI)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzay()V

    :cond_3
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaa:I

    return v1

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzL:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzL:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzqp;->zzb:[B

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzQ:I

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x26

    .line 7
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzqj;->zzj(IIIJI)V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzay()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzac:Z

    return v2

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzZ:I

    if-ne v0, v2, :cond_7

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzx:Lcom/google/android/gms/internal/ads/zzaf;

    .line 9
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaf;->zzo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzx:Lcom/google/android/gms/internal/ads/zzaf;

    .line 10
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaf;->zzo:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzZ:I

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgr;->zzh()Lcom/google/android/gms/internal/ads/zzje;

    move-result-object v4

    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    .line 14
    invoke-virtual {p0, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgr;->zzbf(Lcom/google/android/gms/internal/ads/zzje;Lcom/google/android/gms/internal/ads/zzgi;I)I

    move-result v5
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgh; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgr;->zzG()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaf:J

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzag:J

    :cond_8
    const/4 v6, -0x3

    if-ne v5, v6, :cond_9

    return v1

    :cond_9
    const/4 v7, -0x5

    if-ne v5, v7, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzZ:I

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgc;->zzb()V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzZ:I

    .line 19
    :cond_a
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzqp;->zzS(Lcom/google/android/gms/internal/ads/zzje;)Lcom/google/android/gms/internal/ads/zzgt;

    return v2

    :cond_b
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgc;->zzg()Z

    move-result v5

    if-eqz v5, :cond_f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzZ:I

    if-ne v0, v3, :cond_c

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgc;->zzb()V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzZ:I

    :cond_c
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzah:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzac:Z

    if-nez v0, :cond_d

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzax()V

    return v1

    :cond_d
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzN:Z

    if-nez v0, :cond_e

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzad:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzQ:I

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 22
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzqj;->zzj(IIIJI)V

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzay()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_e
    return v1

    :catch_0
    move-exception v0

    .line 53
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    .line 24
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzl(I)I

    move-result v3

    .line 25
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzgr;->zzbg(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object v0

    .line 26
    throw v0

    .line 23
    :cond_f
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzac:Z

    if-nez v5, :cond_11

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgc;->zzh()Z

    move-result v5

    if-nez v5, :cond_11

    .line 56
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgc;->zzb()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzZ:I

    if-ne v0, v3, :cond_10

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzZ:I

    :cond_10
    return v2

    :cond_11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgi;->zzk()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzgi;->zza:Lcom/google/android/gms/internal/ads/zzgf;

    .line 27
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzgf;->zzb(I)V

    :cond_12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzF:Z

    if-eqz v0, :cond_19

    if-nez v3, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/nio/ByteBuffer;

    .line 28
    sget-object v4, Lcom/google/android/gms/internal/ads/zzaag;->zza:[B

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    move v5, v1

    move v7, v5

    :goto_1
    add-int/lit8 v8, v5, 0x1

    if-ge v8, v4, :cond_17

    .line 30
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x3

    if-ne v7, v10, :cond_14

    if-ne v9, v2, :cond_15

    .line 31
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit8 v9, v9, 0x1f

    const/4 v10, 0x7

    if-ne v9, v10, :cond_13

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    add-int/2addr v5, v6

    .line 33
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 35
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 36
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_13
    move v9, v2

    goto :goto_2

    :cond_14
    if-nez v9, :cond_15

    add-int/lit8 v7, v7, 0x1

    :cond_15
    :goto_2
    if-eqz v9, :cond_16

    move v7, v1

    :cond_16
    move v5, v8

    goto :goto_1

    .line 37
    :cond_17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 36
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_18

    return v2

    :cond_18
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzF:Z

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzgi;->zzd:J

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzO:Lcom/google/android/gms/internal/ads/zzqe;

    if-eqz v6, :cond_1a

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    .line 39
    invoke-virtual {v6, v4, v0}, Lcom/google/android/gms/internal/ads/zzqe;->zzb(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzgi;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaf:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzO:Lcom/google/android/gms/internal/ads/zzqe;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    .line 40
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzqe;->zza(Lcom/google/android/gms/internal/ads/zzaf;)J

    move-result-wide v8

    .line 41
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaf:J

    :cond_1a
    move-wide v12, v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgc;->zzf()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzk:Ljava/util/ArrayList;

    .line 42
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaj:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzj:Lcom/google/android/gms/internal/ads/zzek;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    .line 43
    invoke-virtual {v0, v12, v13, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzd(JLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaj:Z

    :cond_1c
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaf:J

    .line 44
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaf:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgi;->zzj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgc;->zze()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzqp;->zzam(Lcom/google/android/gms/internal/ads/zzgi;)V

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    .line 47
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzqp;->zzad(Lcom/google/android/gms/internal/ads/zzgi;)V

    if-eqz v3, :cond_1e

    :try_start_2
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzQ:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzgi;->zza:Lcom/google/android/gms/internal/ads/zzgf;

    const/4 v14, 0x0

    const/4 v10, 0x0

    .line 48
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzqj;->zzk(IILcom/google/android/gms/internal/ads/zzgf;JI)V

    goto :goto_4

    .line 55
    :cond_1e
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzQ:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    const/4 v14, 0x0

    const/4 v10, 0x0

    .line 50
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzqj;->zzj(IIIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 54
    :goto_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzay()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzac:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzZ:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zza:Lcom/google/android/gms/internal/ads/zzgs;

    .line 55
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzgs;->zzc:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzgs;->zzc:I

    return v2

    :catch_1
    move-exception v0

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    .line 51
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzl(I)I

    move-result v3

    .line 52
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzgr;->zzbg(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object v0

    .line 53
    throw v0

    :catch_2
    move-exception v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzqp;->zzX(Ljava/lang/Exception;)V

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzqp;->zzaE(I)Z

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzab()V

    return v2

    :cond_1f
    :goto_5
    return v1
.end method

.method private final zzaD()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzR:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaE(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgr;->zzh()Lcom/google/android/gms/internal/ads/zzje;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzf:Lcom/google/android/gms/internal/ads/zzgi;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgc;->zzb()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzf:Lcom/google/android/gms/internal/ads/zzgi;

    or-int/lit8 p1, p1, 0x4

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgr;->zzbf(Lcom/google/android/gms/internal/ads/zzje;Lcom/google/android/gms/internal/ads/zzgi;I)I

    move-result p1

    const/4 v1, -0x5

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzqp;->zzS(Lcom/google/android/gms/internal/ads/zzje;)Lcom/google/android/gms/internal/ads/zzgt;

    return v2

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzf:Lcom/google/android/gms/internal/ads/zzgi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgc;->zzg()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzah:Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzax()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final zzaF(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzt:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzt:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final zzaG(Lcom/google/android/gms/internal/ads/zzaf;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzab:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgr;->zzbe()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzv:F

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgr;->zzJ()[Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzqp;->zzP(FLcom/google/android/gms/internal/ads/zzaf;[Lcom/google/android/gms/internal/ads/zzaf;)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzA:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_2

    return v2

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v3, p1, v1

    if-nez v3, :cond_3

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzU()V

    const/4 p1, 0x0

    return p1

    :cond_3
    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zze:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operating-rate"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    .line 6
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzqj;->zzp(Landroid/os/Bundle;)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzA:F

    :cond_6
    :goto_1
    return v2
.end method

.method private final zzab()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqj;->zzi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzaq()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzaq()V

    .line 3
    throw v0
.end method

.method protected static zzav(Lcom/google/android/gms/internal/ads/zzaf;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzF:I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzaw(Lcom/google/android/gms/internal/ads/zzqm;Landroid/media/MediaCrypto;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const-string v1, "createCodec:"

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqm;->zza:Ljava/lang/String;

    .line 2
    sget v3, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/high16 v4, -0x40800000    # -1.0f

    const/16 v5, 0x17

    if-ge v3, v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 18
    :cond_0
    iget v3, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzv:F

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgr;->zzJ()[Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v7

    invoke-virtual {v8, v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzqp;->zzP(FLcom/google/android/gms/internal/ads/zzaf;[Lcom/google/android/gms/internal/ads/zzaf;)F

    move-result v3

    .line 2
    :goto_0
    iget v6, v8, Lcom/google/android/gms/internal/ads/zzqp;->zze:F

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v9, 0x0

    .line 5
    invoke-virtual {v8, v0, v3, v9, v4}, Lcom/google/android/gms/internal/ads/zzqp;->zzV(Lcom/google/android/gms/internal/ads/zzqm;Lcom/google/android/gms/internal/ads/zzaf;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzqh;

    move-result-object v3

    sget v10, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v11, 0x1f

    if-lt v10, v11, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgr;->zzl()Lcom/google/android/gms/internal/ads/zzmz;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/google/android/gms/internal/ads/zzqn;->zza(Lcom/google/android/gms/internal/ads/zzqh;Lcom/google/android/gms/internal/ads/zzmz;)V

    :cond_2
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 8
    invoke-static {v10}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget v10, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/4 v12, 0x0

    if-lt v10, v5, :cond_3

    sget v10, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-lt v10, v11, :cond_3

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzqh;->zzc:Lcom/google/android/gms/internal/ads/zzaf;

    .line 22
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaf;->zzm:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbt;->zzb(Ljava/lang/String;)I

    move-result v1

    const-string v9, "DMCodecAdapterFactory"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzO(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 23
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzdw;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzpu;

    invoke-direct {v9, v1, v12}, Lcom/google/android/gms/internal/ads/zzpu;-><init>(IZ)V

    .line 24
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/ads/zzpu;->zzc(Lcom/google/android/gms/internal/ads/zzqh;)Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 37
    :cond_3
    :try_start_1
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzqh;->zza:Lcom/google/android/gms/internal/ads/zzqm;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    :try_start_2
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzqm;->zza:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 10
    invoke-static {v10}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    .line 11
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v10, "configureCodec"

    .line 12
    invoke-static {v10}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzqh;->zzb:Landroid/media/MediaFormat;

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzqh;->zzd:Landroid/view/Surface;

    .line 13
    invoke-virtual {v1, v10, v11, v9, v12}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 14
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v10, "startCodec"

    .line 15
    invoke-static {v10}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 17
    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzrg;

    .line 18
    invoke-direct {v10, v1, v9}, Lcom/google/android/gms/internal/ads/zzrg;-><init>(Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzrf;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v10

    .line 24
    :goto_2
    :try_start_4
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 25
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzD:Lcom/google/android/gms/internal/ads/zzqm;

    iput v4, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzA:F

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzx:Lcom/google/android/gms/internal/ads/zzaf;

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const-string v4, "OMX.Exynos.avc.dec.secure"

    const/16 v11, 0x19

    const/4 v13, 0x2

    if-gt v1, v11, :cond_5

    .line 28
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/google/android/gms/internal/ads/zzen;->zzd:Ljava/lang/String;

    const-string v15, "SM-T585"

    .line 29
    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzen;->zzd:Ljava/lang/String;

    const-string v15, "SM-A510"

    .line 30
    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzen;->zzd:Ljava/lang/String;

    const-string v15, "SM-A520"

    .line 31
    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzen;->zzd:Ljava/lang/String;

    const-string v15, "SM-J700"

    .line 32
    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move v1, v13

    goto :goto_3

    .line 66
    :cond_5
    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v15, 0x18

    if-ge v1, v15, :cond_8

    const-string v1, "OMX.Nvidia.h264.decode"

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    const-string v1, "flounder"

    sget-object v15, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/lang/String;

    .line 34
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "flounder_lte"

    sget-object v15, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/lang/String;

    .line 35
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "grouper"

    sget-object v15, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/lang/String;

    .line 36
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "tilapia"

    sget-object v15, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/lang/String;

    .line 37
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    move v1, v12

    .line 32
    :goto_3
    iput v1, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzE:I

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzx:Lcom/google/android/gms/internal/ads/zzaf;

    sget v15, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v12, 0x15

    if-ge v15, v12, :cond_9

    .line 38
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaf;->zzo:Ljava/util/List;

    .line 39
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzF:Z

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v15, 0x13

    if-ne v1, v15, :cond_b

    sget-object v1, Lcom/google/android/gms/internal/ads/zzen;->zzd:Ljava/lang/String;

    const-string v14, "SM-G800"

    .line 41
    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "OMX.Exynos.avc.dec"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const/4 v1, 0x1

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzG:Z

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v4, 0x1d

    if-ne v1, v4, :cond_c

    const-string v1, "c2.android.aac.decoder"

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzH:Z

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-gt v1, v5, :cond_e

    const-string v1, "OMX.google.vorbis.decoder"

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    :goto_8
    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-gt v1, v15, :cond_10

    const-string v1, "hb2000"

    sget-object v5, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/lang/String;

    .line 45
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "stvm8"

    sget-object v5, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    const-string v1, "OMX.amlogic.avc.decoder.awesome"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    :goto_9
    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzI:Z

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-ne v1, v12, :cond_11

    const-string v1, "OMX.google.aac.decoder"

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    :goto_a
    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzJ:Z

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-ge v1, v12, :cond_13

    const-string v1, "OMX.SEC.mp3.dec"

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "samsung"

    sget-object v5, Lcom/google/android/gms/internal/ads/zzen;->zzc:Ljava/lang/String;

    .line 50
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/lang/String;

    const-string v5, "baffin"

    .line 51
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/lang/String;

    const-string v5, "grand"

    .line 52
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/lang/String;

    const-string v5, "fortuna"

    .line 53
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/lang/String;

    const-string v5, "gprimelte"

    .line 54
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/lang/String;

    const-string v5, "j2y18lte"

    .line 55
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/lang/String;

    const-string v5, "ms01"

    .line 56
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    const/4 v1, 0x1

    goto :goto_b

    :cond_13
    const/4 v1, 0x0

    :goto_b
    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzK:Z

    .line 57
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqm;->zza:Ljava/lang/String;

    sget v5, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-gt v5, v11, :cond_15

    const-string v5, "OMX.rk.video_decoder.avc"

    .line 58
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_d

    :cond_14
    :goto_c
    const/4 v12, 0x1

    goto :goto_e

    :cond_15
    :goto_d
    sget v5, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-gt v5, v4, :cond_16

    const-string v4, "OMX.broadcom.video_decoder.tunnel"

    .line 59
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 60
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    :cond_16
    const-string v1, "Amazon"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzen;->zzc:Ljava/lang/String;

    .line 61
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "AFTS"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzen;->zzd:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzf:Z

    if-eqz v1, :cond_17

    goto :goto_c

    :cond_17
    const/4 v12, 0x0

    :goto_e
    iput-boolean v12, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzN:Z

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    .line 62
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzqj;->zzr()Z

    const-string v1, "c2.android.mp3.decoder"

    .line 63
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqm;->zza:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzqe;-><init>()V

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzO:Lcom/google/android/gms/internal/ads/zzqe;

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgr;->zzbe()I

    move-result v0

    if-ne v0, v13, :cond_19

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    add-long/2addr v0, v4

    iput-wide v0, v8, Lcom/google/android/gms/internal/ads/zzqp;->zzP:J

    :cond_19
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzqp;->zza:Lcom/google/android/gms/internal/ads/zzgs;

    .line 65
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzgs;->zza:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzgs;->zza:I

    sub-long v6, v9, v6

    move-object/from16 v1, p0

    move-wide v4, v9

    .line 66
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzqp;->zzY(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzqh;JJ)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_f

    :catch_1
    move-exception v0

    :goto_f
    move-object v9, v1

    goto :goto_10

    :catch_2
    move-exception v0

    goto :goto_10

    :catch_3
    move-exception v0

    :goto_10
    if-eqz v9, :cond_1a

    .line 20
    :try_start_5
    invoke-virtual {v9}, Landroid/media/MediaCodec;->release()V

    .line 21
    :cond_1a
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    .line 25
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 26
    throw v0
.end method

.method private final zzax()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzab:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzai:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzae()V

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzap()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzan()V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzab()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzaA()V

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzab()V

    return-void
.end method

.method private final zzay()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzQ:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzg:Lcom/google/android/gms/internal/ads/zzgi;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzaz()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzR:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzS:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public zzD(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzu:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzv:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzx:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqp;->zzaG(Lcom/google/android/gms/internal/ads/zzaf;)Z

    return-void
.end method

.method public final zzL(JJ)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1
    :try_start_0
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzai:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzae()V

    return-void

    :cond_0
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v11, 0x2

    if-nez v0, :cond_2

    .line 2
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/ads/zzqp;->zzaE(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 3
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzan()V

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzV:Z

    if-eqz v0, :cond_10

    const-string v0, "bypassRender"

    .line 4
    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    .line 5
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzai:Z

    xor-int/2addr v0, v14

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzi:Lcom/google/android/gms/internal/ads/zzqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqd;->zzp()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_e

    if-eqz v1, :cond_5

    :try_start_1
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzqd;->zzb:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzR:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqd;->zzl()I

    move-result v10

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzqd;->zzd:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgc;->zzf()Z

    move-result v16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgc;->zzg()Z

    move-result v0

    iget-object v9, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzq:Lcom/google/android/gms/internal/ads/zzaf;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v6, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v18, v9

    move/from16 v9, v17

    move/from16 v13, v16

    move v14, v0

    move-object/from16 v15, v18

    .line 7
    :try_start_2
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzqp;->zzaf(JJLcom/google/android/gms/internal/ads/zzqj;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_4

    move-object/from16 v15, p0

    :try_start_3
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzi:Lcom/google/android/gms/internal/ads/zzqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqd;->zzm()J

    move-result-wide v0

    .line 8
    invoke-virtual {v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzqp;->zzao(J)V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzi:Lcom/google/android/gms/internal/ads/zzqd;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgc;->zzb()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :cond_4
    move-object/from16 v15, p0

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    move-object v1, v15

    const/4 v2, 0x1

    :goto_3
    const/16 v19, 0x0

    goto/16 :goto_18

    :cond_5
    :goto_4
    :try_start_4
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzah:Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v0, :cond_6

    const/4 v14, 0x1

    :try_start_5
    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzai:Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v13, 0x0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move v2, v14

    move-object v1, v15

    goto :goto_3

    :cond_6
    const/4 v14, 0x1

    .line 68
    :try_start_6
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzW:Z

    if-eqz v0, :cond_7

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzi:Lcom/google/android/gms/internal/ads/zzqd;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzh:Lcom/google/android/gms/internal/ads/zzgi;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqd;->zzo(Lcom/google/android/gms/internal/ads/zzgi;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v13, 0x0

    :try_start_7
    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzW:Z

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    :goto_5
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzX:Z

    if-eqz v0, :cond_8

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzi:Lcom/google/android/gms/internal/ads/zzqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqd;->zzp()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzT()V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzX:Z

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzan()V

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzV:Z

    if-eqz v0, :cond_f

    :cond_8
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzah:Z

    xor-int/2addr v0, v14

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgr;->zzh()Lcom/google/android/gms/internal/ads/zzje;

    move-result-object v0

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzh:Lcom/google/android/gms/internal/ads/zzgi;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgc;->zzb()V

    :cond_9
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzh:Lcom/google/android/gms/internal/ads/zzgi;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgc;->zzb()V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzh:Lcom/google/android/gms/internal/ads/zzgi;

    .line 17
    invoke-virtual {v15, v0, v1, v13}, Lcom/google/android/gms/internal/ads/zzgr;->zzbf(Lcom/google/android/gms/internal/ads/zzje;Lcom/google/android/gms/internal/ads/zzgi;I)I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_d

    const/4 v2, -0x4

    if-eq v1, v2, :cond_a

    goto :goto_6

    .line 22
    :cond_a
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzh:Lcom/google/android/gms/internal/ads/zzgi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgc;->zzg()Z

    move-result v1

    if-eqz v1, :cond_b

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzah:Z

    goto :goto_6

    :cond_b
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzaj:Z

    if-eqz v1, :cond_c

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_e

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    :try_start_8
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzq:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzqp;->zzaa(Lcom/google/android/gms/internal/ads/zzaf;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzaj:Z

    :cond_c
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzh:Lcom/google/android/gms/internal/ads/zzgi;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgi;->zzj()V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzi:Lcom/google/android/gms/internal/ads/zzqd;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzh:Lcom/google/android/gms/internal/ads/zzgi;

    .line 20
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzqd;->zzo(Lcom/google/android/gms/internal/ads/zzgi;)Z

    move-result v1

    if-nez v1, :cond_9

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzW:Z

    goto :goto_6

    .line 21
    :cond_d
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/zzqp;->zzS(Lcom/google/android/gms/internal/ads/zzje;)Lcom/google/android/gms/internal/ads/zzgt;

    .line 17
    :goto_6
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzi:Lcom/google/android/gms/internal/ads/zzqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqd;->zzp()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgi;->zzj()V

    :cond_e
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzi:Lcom/google/android/gms/internal/ads/zzqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqd;->zzp()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzah:Z

    if-nez v0, :cond_3

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzX:Z

    if-eqz v0, :cond_f

    goto/16 :goto_1

    .line 24
    :cond_f
    :goto_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    move/from16 v19, v13

    move v2, v14

    move-object v1, v15

    goto/16 :goto_15

    :catch_3
    move-exception v0

    const/4 v13, 0x0

    goto/16 :goto_17

    :catch_4
    move-exception v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_17

    .line 21
    :cond_10
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_e

    if-eqz v0, :cond_28

    .line 25
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-string v0, "drainAndFeed"

    .line 26
    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    .line 27
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzaD()Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_b

    if-nez v0, :cond_20

    :try_start_a
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzJ:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzad:Z
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_e

    if-eqz v0, :cond_12

    :try_start_b
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 29
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqj;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_a

    .line 57
    :catch_5
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzax()V

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzai:Z

    if-eqz v0, :cond_11

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzap()V

    :cond_11
    :goto_9
    move-wide v2, v9

    move/from16 v19, v13

    move-object v1, v15

    goto/16 :goto_13

    .line 50
    :cond_12
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 28
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqj;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_a
    if-gez v0, :cond_16

    const/4 v1, -0x2

    if-ne v0, v1, :cond_14

    .line 29
    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzae:Z

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    .line 30
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqj;->zzc()Landroid/media/MediaFormat;

    move-result-object v0

    iget v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzE:I

    if-eqz v1, :cond_13

    const-string v1, "width"

    .line 31
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_13

    const-string v1, "height"

    .line 32
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_13

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzM:Z

    goto :goto_b

    .line 65
    :cond_13
    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzy:Landroid/media/MediaFormat;

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzz:Z

    goto :goto_b

    :cond_14
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzN:Z

    if-eqz v0, :cond_11

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzah:Z

    if-nez v0, :cond_15

    iget v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzaa:I

    if-ne v0, v11, :cond_11

    .line 59
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzax()V

    goto :goto_9

    :cond_16
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzM:Z

    if-eqz v1, :cond_17

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzM:Z

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    .line 33
    invoke-interface {v1, v0, v13}, Lcom/google/android/gms/internal/ads/zzqj;->zzn(IZ)V

    :goto_b
    move-wide v2, v9

    move/from16 v16, v11

    move/from16 v19, v13

    move-object v1, v15

    goto/16 :goto_12

    :cond_17
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 34
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_18

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_18

    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzax()V

    goto :goto_9

    :cond_18
    iput v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzR:I

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    .line 35
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzqj;->zzg(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzS:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_19

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 36
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzS:Ljava/nio/ByteBuffer;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 37
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_19
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzK:Z

    if-eqz v0, :cond_1a

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 38
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1a

    iget-wide v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzaf:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1a

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 39
    iput-wide v0, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_1a
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 40
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzk:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v13

    :goto_c
    if-ge v3, v2, :cond_1c

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzk:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_1b

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzk:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v14

    goto :goto_d

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1c
    move v0, v13

    :goto_d
    iput-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzT:Z

    iget-wide v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzag:J

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 44
    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    move v0, v14

    goto :goto_e

    :cond_1d
    move v0, v13

    :goto_e
    iput-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzU:Z

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 45
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzj:Lcom/google/android/gms/internal/ads/zzek;

    .line 46
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzc(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaf;

    if-nez v0, :cond_1e

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzz:Z

    if-eqz v1, :cond_1e

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzj:Lcom/google/android/gms/internal/ads/zzek;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaf;

    :cond_1e
    if-eqz v0, :cond_1f

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzq:Lcom/google/android/gms/internal/ads/zzaf;

    goto :goto_f

    .line 50
    :cond_1f
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzz:Z

    if-eqz v0, :cond_20

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzq:Lcom/google/android/gms/internal/ads/zzaf;

    if-eqz v0, :cond_20

    .line 47
    :goto_f
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzq:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzy:Landroid/media/MediaFormat;

    .line 48
    invoke-virtual {v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzqp;->zzaa(Lcom/google/android/gms/internal/ads/zzaf;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzz:Z
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_e

    :cond_20
    :try_start_d
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzJ:Z

    if-eqz v0, :cond_22

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzad:Z
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_b

    if-eqz v0, :cond_22

    :try_start_e
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzS:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzR:I

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 51
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzT:Z

    iget-boolean v2, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzU:Z

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzq:Lcom/google/android/gms/internal/ads/zzaf;
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_6

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v2, p1

    move-wide/from16 v19, v4

    move-wide/from16 v4, p3

    move-wide/from16 v21, v9

    move v9, v0

    move/from16 v10, v16

    move/from16 v16, v11

    move v0, v12

    move-wide/from16 v11, v19

    move/from16 v19, v13

    move v13, v0

    move/from16 v14, v17

    move-object/from16 v15, v18

    .line 52
    :try_start_f
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzqp;->zzaf(JJLcom/google/android/gms/internal/ads/zzqj;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_11

    :catch_6
    move-wide/from16 v21, v9

    move/from16 v19, v13

    .line 60
    :catch_7
    :try_start_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzax()V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_8

    move-object/from16 v15, p0

    :try_start_11
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzai:Z

    if-eqz v0, :cond_21

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzap()V

    :cond_21
    move-object v1, v15

    :goto_10
    move-wide/from16 v2, v21

    goto :goto_13

    :catch_8
    move-exception v0

    move-object/from16 v15, p0

    goto/16 :goto_14

    :cond_22
    move-wide/from16 v21, v9

    move/from16 v16, v11

    move/from16 v19, v13

    .line 62
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzS:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzR:I

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 49
    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v11, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzT:Z

    iget-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzU:Z

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzqp;->zzq:Lcom/google/android/gms/internal/ads/zzaf;
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_a

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object v15, v0

    .line 50
    :try_start_12
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzqp;->zzaf(JJLcom/google/android/gms/internal/ads/zzqj;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_9

    :goto_11
    if-eqz v0, :cond_25

    move-object/from16 v1, p0

    .line 52
    :try_start_13
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 53
    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzqp;->zzao(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqp;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 54
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 55
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzaz()V

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_23

    .line 62
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzax()V

    goto :goto_10

    :cond_23
    move-wide/from16 v2, v21

    .line 56
    :goto_12
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzqp;->zzaF(J)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_13

    :cond_24
    move-object v15, v1

    move-wide v9, v2

    move/from16 v11, v16

    move/from16 v13, v19

    const/4 v14, 0x1

    goto/16 :goto_8

    :cond_25
    move-object/from16 v1, p0

    goto :goto_10

    .line 64
    :cond_26
    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzaC()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzqp;->zzaF(J)Z

    move-result v0

    if-nez v0, :cond_26

    .line 65
    :cond_27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v2, 0x1

    goto :goto_15

    :catch_9
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_16

    :catch_a
    move-exception v0

    goto :goto_14

    :catch_b
    move-exception v0

    move/from16 v19, v13

    :goto_14
    move-object v1, v15

    goto :goto_16

    :cond_28
    move/from16 v19, v13

    move-object v1, v15

    .line 28
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqp;->zza:Lcom/google/android/gms/internal/ads/zzgs;

    .line 66
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzgs;->zzd:I

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzgr;->zzd(J)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzgs;->zzd:I
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_d

    const/4 v2, 0x1

    .line 67
    :try_start_14
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzqp;->zzaE(I)Z

    .line 24
    :goto_15
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqp;->zza:Lcom/google/android/gms/internal/ads/zzgs;

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgs;->zza()V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_c

    return-void

    :catch_c
    move-exception v0

    goto :goto_18

    :catch_d
    move-exception v0

    :goto_16
    const/4 v2, 0x1

    goto :goto_18

    :catch_e
    move-exception v0

    :goto_17
    move/from16 v19, v13

    move v2, v14

    move-object v1, v15

    .line 69
    :goto_18
    sget v3, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_29

    .line 70
    instance-of v3, v0, Landroid/media/MediaCodec$CodecException;

    if-eqz v3, :cond_29

    goto :goto_19

    .line 71
    :cond_29
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 72
    array-length v5, v3

    if-lez v5, :cond_2c

    aget-object v3, v3, v19

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.media.MediaCodec"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 74
    :goto_19
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzqp;->zzX(Ljava/lang/Exception;)V

    sget v3, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-lt v3, v4, :cond_2a

    .line 75
    instance-of v3, v0, Landroid/media/MediaCodec$CodecException;

    if-eqz v3, :cond_2a

    .line 76
    move-object v3, v0

    check-cast v3, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v3}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v3

    if-eqz v3, :cond_2a

    move v14, v2

    goto :goto_1a

    :cond_2a
    move/from16 v14, v19

    :goto_1a
    if-eqz v14, :cond_2b

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzap()V

    :cond_2b
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzqp;->zzD:Lcom/google/android/gms/internal/ads/zzqm;

    .line 78
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzqp;->zzak(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzqm;)Lcom/google/android/gms/internal/ads/zzqk;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    const/16 v3, 0xfa3

    .line 79
    invoke-virtual {v1, v0, v2, v14, v3}, Lcom/google/android/gms/internal/ads/zzgr;->zzbg(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object v0

    throw v0

    .line 73
    :cond_2c
    throw v0
.end method

.method public zzM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzai:Z

    return v0
.end method

.method public zzN()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgr;->zzI()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzaD()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzP:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzP:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final zzO(Lcom/google/android/gms/internal/ads/zzaf;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzd:Lcom/google/android/gms/internal/ads/zzqr;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzqp;->zzQ(Lcom/google/android/gms/internal/ads/zzqr;Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqy; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0xfa2

    .line 2
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgr;->zzbg(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object p1

    .line 3
    throw p1
.end method

.method protected zzP(FLcom/google/android/gms/internal/ads/zzaf;[Lcom/google/android/gms/internal/ads/zzaf;)F
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected abstract zzQ(Lcom/google/android/gms/internal/ads/zzqr;Lcom/google/android/gms/internal/ads/zzaf;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqy;
        }
    .end annotation
.end method

.method protected zzR(Lcom/google/android/gms/internal/ads/zzqm;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;)Lcom/google/android/gms/internal/ads/zzgt;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzS(Lcom/google/android/gms/internal/ads/zzje;)Lcom/google/android/gms/internal/ads/zzgt;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaj:Z

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzje;->zza:Lcom/google/android/gms/internal/ads/zzaf;

    .line 22
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzaf;->zzm:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzje;->zzb:Lcom/google/android/gms/internal/ads/zzpp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzao:Lcom/google/android/gms/internal/ads/zzpp;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzV:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzX:Z

    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    if-nez v1, :cond_1

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzB:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzan()V

    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzD:Lcom/google/android/gms/internal/ads/zzqm;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzx:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzan:Lcom/google/android/gms/internal/ads/zzpp;

    const/16 v7, 0x17

    if-ne v6, p1, :cond_13

    if-eq p1, v6, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    if-eqz p1, :cond_4

    .line 4
    sget v6, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-lt v6, v7, :cond_3

    goto :goto_1

    :cond_3
    move v6, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v0

    :goto_2
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    .line 5
    invoke-virtual {p0, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzqp;->zzR(Lcom/google/android/gms/internal/ads/zzqm;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;)Lcom/google/android/gms/internal/ads/zzgt;

    move-result-object v6

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzgt;->zzd:I

    const/4 v8, 0x3

    if-eqz v7, :cond_f

    const/16 v9, 0x10

    const/4 v10, 0x2

    if-eq v7, v0, :cond_a

    if-eq v7, v10, :cond_6

    .line 6
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzqp;->zzaG(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    .line 14
    :cond_5
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzx:Lcom/google/android/gms/internal/ads/zzaf;

    if-eqz p1, :cond_10

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzaB()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_7

    .line 8
    :cond_6
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzqp;->zzaG(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzY:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzZ:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzE:I

    if-eq v7, v10, :cond_9

    if-ne v7, v0, :cond_8

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzaf;->zzr:I

    .line 9
    iget v9, v5, Lcom/google/android/gms/internal/ads/zzaf;->zzr:I

    if-ne v7, v9, :cond_8

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzaf;->zzs:I

    iget v9, v5, Lcom/google/android/gms/internal/ads/zzaf;->zzs:I

    if-ne v7, v9, :cond_8

    goto :goto_3

    :cond_8
    move v0, v2

    :cond_9
    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzL:Z

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzx:Lcom/google/android/gms/internal/ads/zzaf;

    if-eqz p1, :cond_10

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzaB()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_7

    .line 11
    :cond_a
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzqp;->zzaG(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v7

    if-nez v7, :cond_b

    :goto_4
    move v10, v9

    goto :goto_7

    :cond_b
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzx:Lcom/google/android/gms/internal/ads/zzaf;

    if-eqz p1, :cond_c

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzaB()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_7

    :cond_c
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzac:Z

    if-eqz p1, :cond_10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaa:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzG:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzI:Z

    if-eqz p1, :cond_d

    goto :goto_5

    :cond_d
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzab:I

    goto :goto_6

    :cond_e
    :goto_5
    iput v8, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzab:I

    goto :goto_7

    .line 13
    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzU()V

    :cond_10
    :goto_6
    move v10, v2

    .line 6
    :goto_7
    iget p1, v6, Lcom/google/android/gms/internal/ads/zzgt;->zzd:I

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    if-ne p1, v1, :cond_11

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzab:I

    if-ne p1, v8, :cond_12

    :cond_11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgt;

    .line 14
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzqm;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v1, p1

    move-object v3, v5

    move v5, v0

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;II)V

    return-object p1

    :cond_12
    return-object v6

    :cond_13
    if-eqz p1, :cond_15

    if-nez v6, :cond_14

    goto :goto_8

    .line 15
    :cond_14
    sget-object p1, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/util/UUID;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/util/UUID;

    .line 16
    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 17
    sget p1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-lt p1, v7, :cond_15

    sget-object p1, Lcom/google/android/gms/internal/ads/zzo;->zze:Ljava/util/UUID;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/util/UUID;

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/zzo;->zze:Ljava/util/UUID;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/util/UUID;

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 20
    :cond_15
    :goto_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzU()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgt;

    .line 21
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzqm;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v6, 0x80

    move-object v1, p1

    move-object v3, v5

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;II)V

    return-object p1

    .line 1
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v0, 0xfa5

    .line 2
    invoke-virtual {p0, p1, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzgr;->zzbg(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object p1

    .line 1
    throw p1
.end method

.method protected abstract zzV(Lcom/google/android/gms/internal/ads/zzqm;Lcom/google/android/gms/internal/ads/zzaf;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzqh;
.end method

.method protected abstract zzW(Lcom/google/android/gms/internal/ads/zzqr;Lcom/google/android/gms/internal/ads/zzaf;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqy;
        }
    .end annotation
.end method

.method protected zzX(Ljava/lang/Exception;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzY(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzqh;JJ)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzZ(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzaa(Lcom/google/android/gms/internal/ads/zzaf;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzac()V
    .locals 0

    return-void
.end method

.method protected zzad(Lcom/google/android/gms/internal/ads/zzgi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzae()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    return-void
.end method

.method protected abstract zzaf(JJLcom/google/android/gms/internal/ads/zzqj;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzaf;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation
.end method

.method protected zzag(Lcom/google/android/gms/internal/ads/zzaf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final zzah()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzu:F

    return v0
.end method

.method protected final zzai()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzal:J

    return-wide v0
.end method

.method protected final zzaj()Lcom/google/android/gms/internal/ads/zzqj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    return-object v0
.end method

.method protected zzak(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzqm;)Lcom/google/android/gms/internal/ads/zzqk;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqk;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqk;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzqm;)V

    return-object v0
.end method

.method protected final zzal()Lcom/google/android/gms/internal/ads/zzqm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzD:Lcom/google/android/gms/internal/ads/zzqm;

    return-object v0
.end method

.method protected zzam(Lcom/google/android/gms/internal/ads/zzgi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    return-void
.end method

.method protected final zzan()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzV:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzao:Lcom/google/android/gms/internal/ads/zzpp;

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzqp;->zzag(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzT()V

    .line 33
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->zzm:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzi:Lcom/google/android/gms/internal/ads/zzqd;

    .line 38
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzqd;->zzn(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzi:Lcom/google/android/gms/internal/ads/zzqd;

    const/16 v1, 0x20

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqd;->zzn(I)V

    .line 38
    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzV:Z

    return-void

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzao:Lcom/google/android/gms/internal/ads/zzpp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzan:Lcom/google/android/gms/internal/ads/zzpp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->zzm:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzan:Lcom/google/android/gms/internal/ads/zzpp;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzpq;->zza:Z

    if-nez v0, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzan:Lcom/google/android/gms/internal/ads/zzpp;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpp;->zza()Lcom/google/android/gms/internal/ads/zzpg;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzpg;->zza:I

    .line 30
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzgr;->zzbg(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object v0

    .line 31
    throw v0

    .line 3
    :cond_4
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzB:Ljava/util/ArrayDeque;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqo; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v2, 0x0

    if-nez v0, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzd:Lcom/google/android/gms/internal/ads/zzqr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    .line 4
    invoke-virtual {p0, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzqp;->zzW(Lcom/google/android/gms/internal/ads/zzqr;Lcom/google/android/gms/internal/ads/zzaf;Z)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    new-instance v3, Ljava/util/ArrayDeque;

    .line 6
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzB:Ljava/util/ArrayDeque;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzB:Ljava/util/ArrayDeque;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqm;

    invoke-virtual {v3, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_5
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzC:Lcom/google/android/gms/internal/ads/zzqo;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzqy; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzqo; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    :catch_0
    move-exception v0

    .line 28
    :try_start_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzqo;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    const v4, -0xc34e

    .line 9
    invoke-direct {v2, v3, v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzqo;-><init>(Lcom/google/android/gms/internal/ads/zzaf;Ljava/lang/Throwable;ZI)V

    throw v2

    .line 8
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzB:Ljava/util/ArrayDeque;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzB:Ljava/util/ArrayDeque;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqm;

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzB:Ljava/util/ArrayDeque;

    .line 13
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzqm;

    .line 14
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzqp;->zzau(Lcom/google/android/gms/internal/ads/zzqm;)Z

    move-result v4
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzqo; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v4, :cond_7

    return-void

    .line 15
    :cond_7
    :try_start_3
    invoke-direct {p0, v3, v2}, Lcom/google/android/gms/internal/ads/zzqp;->zzaw(Lcom/google/android/gms/internal/ads/zzqm;Landroid/media/MediaCrypto;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    .line 9
    const-string v5, "MediaCodecRenderer"

    if-ne v3, v0, :cond_8

    :try_start_4
    const-string v4, "Preferred decoder instantiation failed. Sleeping for 50ms then retrying."

    .line 16
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzdw;->zze(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x32

    .line 17
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 18
    invoke-direct {p0, v3, v2}, Lcom/google/android/gms/internal/ads/zzqp;->zzaw(Lcom/google/android/gms/internal/ads/zzqm;Landroid/media/MediaCrypto;)V

    goto :goto_3

    .line 19
    :cond_8
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v4

    .line 18
    :try_start_5
    const-string v6, "Failed to initialize decoder: "

    .line 20
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzdw;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzB:Ljava/util/ArrayDeque;

    .line 21
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzqo;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    .line 22
    invoke-direct {v5, v6, v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzqo;-><init>(Lcom/google/android/gms/internal/ads/zzaf;Ljava/lang/Throwable;ZLcom/google/android/gms/internal/ads/zzqm;)V

    .line 23
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzqp;->zzX(Ljava/lang/Exception;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzC:Lcom/google/android/gms/internal/ads/zzqo;

    if-nez v3, :cond_9

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzC:Lcom/google/android/gms/internal/ads/zzqo;

    goto :goto_4

    .line 24
    :cond_9
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzqo;->zza(Lcom/google/android/gms/internal/ads/zzqo;Lcom/google/android/gms/internal/ads/zzqo;)Lcom/google/android/gms/internal/ads/zzqo;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzC:Lcom/google/android/gms/internal/ads/zzqo;

    .line 23
    :goto_4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzB:Ljava/util/ArrayDeque;

    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzC:Lcom/google/android/gms/internal/ads/zzqo;

    .line 26
    throw v0

    .line 15
    :cond_b
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzB:Ljava/util/ArrayDeque;

    return-void

    .line 10
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqo;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    const v4, -0xc34f

    .line 11
    invoke-direct {v0, v3, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzqo;-><init>(Lcom/google/android/gms/internal/ads/zzaf;Ljava/lang/Throwable;ZI)V

    throw v0
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzqo; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception v0

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    const/16 v3, 0xfa1

    .line 27
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzgr;->zzbg(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object v0

    .line 28
    throw v0

    :cond_d
    :goto_5
    return-void
.end method

.method protected zzao(J)V
    .locals 6

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzam:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzo:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzm:[J

    aget-wide v3, v1, v2

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzak:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzn:[J

    aget-wide v4, v3, v2

    .line 1
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzal:J

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzam:I

    const/4 v3, 0x1

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzn:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzam:I

    .line 2
    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzo:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzam:I

    .line 3
    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzac()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final zzap()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzqj;->zzl()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zza:Lcom/google/android/gms/internal/ads/zzgs;

    .line 2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzb:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzgs;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzD:Lcom/google/android/gms/internal/ads/zzqm;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzqm;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzqp;->zzZ(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzr:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzan:Lcom/google/android/gms/internal/ads/zzpp;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzar()V

    return-void

    :catchall_0
    move-exception v1

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzr:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzan:Lcom/google/android/gms/internal/ads/zzpp;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzar()V

    .line 5
    throw v1
.end method

.method protected zzaq()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzay()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzaz()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzP:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzad:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzac:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzL:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzM:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzT:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzU:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzk:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzag:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzO:Lcom/google/android/gms/internal/ads/zzqe;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqe;->zzc()V

    :cond_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaa:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzab:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzY:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzZ:I

    return-void
.end method

.method protected final zzar()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzaq()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzO:Lcom/google/android/gms/internal/ads/zzqe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzB:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzD:Lcom/google/android/gms/internal/ads/zzqm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzx:Lcom/google/android/gms/internal/ads/zzaf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzy:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzz:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzae:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzA:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzE:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzF:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzG:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzH:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzI:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzJ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzK:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzN:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzY:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzZ:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzs:Z

    return-void
.end method

.method protected final zzas()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzan()V

    :cond_0
    return v0
.end method

.method protected final zzat()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzw:Lcom/google/android/gms/internal/ads/zzqj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzab:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzG:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzH:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzae:Z

    if-eqz v2, :cond_5

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzI:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzad:Z

    if-nez v2, :cond_5

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-lt v0, v2, :cond_4

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzaA()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzha; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    .line 3
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdw;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzap()V

    return v3

    .line 5
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzab()V

    return v1

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzap()V

    return v3
.end method

.method protected zzau(Lcom/google/android/gms/internal/ads/zzqm;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final zze()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected zzs()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzp:Lcom/google/android/gms/internal/ads/zzaf;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzak:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzal:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzam:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzat()Z

    return-void
.end method

.method protected zzt(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zza:Lcom/google/android/gms/internal/ads/zzgs;

    return-void
.end method

.method protected zzu(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzah:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzai:Z

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzV:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzi:Lcom/google/android/gms/internal/ads/zzqd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgc;->zzb()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzh:Lcom/google/android/gms/internal/ads/zzgi;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgc;->zzb()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzW:Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzas()Z

    .line 2
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzj:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result p3

    if-lez p3, :cond_1

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaj:Z

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzek;->zze()V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzam:I

    if-eqz p2, :cond_2

    add-int/lit8 p2, p2, -0x1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzn:[J

    .line 5
    aget-wide v0, p3, p2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzal:J

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzm:[J

    .line 6
    aget-wide p2, p3, p2

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzak:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzam:I

    :cond_2
    return-void
.end method

.method protected zzv()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzT()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqp;->zzap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzao:Lcom/google/android/gms/internal/ads/zzpp;

    return-void

    :catchall_0
    move-exception v1

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzao:Lcom/google/android/gms/internal/ads/zzpp;

    .line 3
    throw v1
.end method

.method protected final zzy([Lcom/google/android/gms/internal/ads/zzaf;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzal:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzak:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzak:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzal:J

    return-void

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzam:I

    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzn:[J

    const/16 v0, 0x9

    aget-wide v0, p1, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Too many stream changes, so dropping offset: "

    .line 2
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "MediaCodecRenderer"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdw;->zze(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/2addr p1, v0

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzam:I

    .line 2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzm:[J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzam:I

    add-int/lit8 v0, v0, -0x1

    .line 3
    aput-wide p2, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzn:[J

    .line 4
    aput-wide p4, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzo:[J

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzaf:J

    .line 5
    aput-wide p2, p1, v0

    return-void
.end method
