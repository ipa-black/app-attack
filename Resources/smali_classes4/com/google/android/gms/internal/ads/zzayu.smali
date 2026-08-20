.class public final Lcom/google/android/gms/internal/ads/zzayu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzavp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzayr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzayq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbar;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zze:Lcom/google/android/gms/internal/ads/zzays;

.field private zzf:Lcom/google/android/gms/internal/ads/zzays;

.field private zzg:Lcom/google/android/gms/internal/ads/zzatd;

.field private zzh:Lcom/google/android/gms/internal/ads/zzatd;

.field private zzi:J

.field private zzj:I

.field private zzk:Lcom/google/android/gms/internal/ads/zzayt;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzazw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzazw;[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzl:Lcom/google/android/gms/internal/ads/zzazw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzayr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzayr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zza:Lcom/google/android/gms/internal/ads/zzayr;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzayq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzayq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzb:Lcom/google/android/gms/internal/ads/zzayq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbar;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbar;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzc:Lcom/google/android/gms/internal/ads/zzbar;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 p1, 0x10000

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzj:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzays;

    const-wide/16 v0, 0x0

    invoke-direct {p2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzays;-><init>(JI)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayu;->zze:Lcom/google/android/gms/internal/ads/zzays;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzf:Lcom/google/android/gms/internal/ads/zzays;

    return-void
.end method

.method private final zzo(I)I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzj:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzj:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzf:Lcom/google/android/gms/internal/ads/zzays;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzays;->zzc:Z

    if-eqz v2, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzays;->zze:Lcom/google/android/gms/internal/ads/zzays;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzf:Lcom/google/android/gms/internal/ads/zzays;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzf:Lcom/google/android/gms/internal/ads/zzays;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzl:Lcom/google/android/gms/internal/ads/zzazw;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzazw;->zzb()Lcom/google/android/gms/internal/ads/zzazq;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzays;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzf:Lcom/google/android/gms/internal/ads/zzays;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzays;->zzb:J

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzays;-><init>(JI)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzays;->zzd:Lcom/google/android/gms/internal/ads/zzazq;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzays;->zze:Lcom/google/android/gms/internal/ads/zzays;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzays;->zzc:Z

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzj:I

    sub-int/2addr v1, v0

    .line 4
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private final zzp()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zza:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zze:Lcom/google/android/gms/internal/ads/zzays;

    .line 2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzays;->zzc:Z

    const/high16 v2, 0x10000

    if-nez v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzf:Lcom/google/android/gms/internal/ads/zzays;

    .line 3
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzays;->zzc:Z

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzays;->zza:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzays;->zza:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    div-int/2addr v1, v2

    add-int/2addr v3, v1

    .line 4
    new-array v1, v3, [Lcom/google/android/gms/internal/ads/zzazq;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 5
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzays;->zzd:Lcom/google/android/gms/internal/ads/zzazq;

    aput-object v5, v1, v4

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzays;->zzd:Lcom/google/android/gms/internal/ads/zzazq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzays;->zze:Lcom/google/android/gms/internal/ads/zzays;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzl:Lcom/google/android/gms/internal/ads/zzazw;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzazw;->zzd([Lcom/google/android/gms/internal/ads/zzazq;)V

    .line 2
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzays;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzays;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zze:Lcom/google/android/gms/internal/ads/zzays;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzf:Lcom/google/android/gms/internal/ads/zzays;

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzi:J

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzj:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzl:Lcom/google/android/gms/internal/ads/zzazw;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazw;->zzg()V

    return-void
.end method

.method private final zzq(J)V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zze:Lcom/google/android/gms/internal/ads/zzays;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzays;->zzb:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzl:Lcom/google/android/gms/internal/ads/zzazw;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzays;->zzd:Lcom/google/android/gms/internal/ads/zzazq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzazw;->zzc(Lcom/google/android/gms/internal/ads/zzazq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zze:Lcom/google/android/gms/internal/ads/zzays;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzays;->zzd:Lcom/google/android/gms/internal/ads/zzazq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzays;->zze:Lcom/google/android/gms/internal/ads/zzays;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zze:Lcom/google/android/gms/internal/ads/zzays;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzr()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzp()V

    :cond_0
    return-void
.end method

.method private final zzs(J[BI)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zzq(J)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ge v0, p4, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zze:Lcom/google/android/gms/internal/ads/zzays;

    .line 2
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzays;->zza:J

    sub-long v1, p1, v1

    long-to-int v1, v1

    sub-int v2, p4, v0

    const/high16 v3, 0x10000

    sub-int/2addr v3, v1

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayu;->zze:Lcom/google/android/gms/internal/ads/zzays;

    .line 4
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzays;->zzd:Lcom/google/android/gms/internal/ads/zzazq;

    .line 5
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzazq;->zza:[B

    invoke-static {v4, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v4, v2

    add-long/2addr p1, v4

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zze:Lcom/google/android/gms/internal/ads/zzays;

    .line 6
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzays;->zzb:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzl:Lcom/google/android/gms/internal/ads/zzazw;

    .line 7
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzazw;->zzc(Lcom/google/android/gms/internal/ads/zzazq;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zze:Lcom/google/android/gms/internal/ads/zzays;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzays;->zzd:Lcom/google/android/gms/internal/ads/zzazq;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzays;->zze:Lcom/google/android/gms/internal/ads/zzays;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zze:Lcom/google/android/gms/internal/ads/zzays;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzt()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzatd;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zza:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzk(Lcom/google/android/gms/internal/ads/zzatd;)Z

    move-result v1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzh:Lcom/google/android/gms/internal/ads/zzatd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzk:Lcom/google/android/gms/internal/ads/zzayt;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzayt;->zzv(Lcom/google/android/gms/internal/ads/zzatd;)V

    :cond_1
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbar;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    if-lez p2, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zzo(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzf:Lcom/google/android/gms/internal/ads/zzays;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzays;->zzd:Lcom/google/android/gms/internal/ads/zzazq;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzazq;->zza:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzj:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbar;->zzq([BII)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzj:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzj:I

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzi:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzi:J

    sub-int/2addr p2, v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzr()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbar;->zzw(I)V

    return-void
.end method

.method public final zzc(JIIILcom/google/android/gms/internal/ads/zzavo;)V
    .locals 12

    move-object v1, p0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzayu;->zzi:J

    move/from16 v0, p4

    int-to-long v4, v0

    sub-long v8, v2, v4

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzayu;->zza:Lcom/google/android/gms/internal/ads/zzayr;

    move-wide v5, p1

    move v7, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    .line 2
    invoke-virtual/range {v4 .. v11}, Lcom/google/android/gms/internal/ads/zzayr;->zzh(JIJILcom/google/android/gms/internal/ads/zzavo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzr()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzr()V

    .line 4
    throw v0

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzayu;->zza:Lcom/google/android/gms/internal/ads/zzayr;

    move-wide v2, p1

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzayr;->zzi(J)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzavf;IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzt()Z

    move-result p3

    const/4 v0, -0x1

    if-nez p3, :cond_1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzavf;->zzb(I)I

    move-result p1

    if-eq p1, v0, :cond_0

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 4
    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zzo(I)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzf:Lcom/google/android/gms/internal/ads/zzays;

    .line 5
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzays;->zzd:Lcom/google/android/gms/internal/ads/zzazq;

    .line 6
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzazq;->zza:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzj:I

    invoke-virtual {p1, p3, v1, p2}, Lcom/google/android/gms/internal/ads/zzavf;->zza([BII)I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 7
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzj:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzj:I

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzi:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzi:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzr()V

    return p1

    .line 7
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzr()V

    .line 9
    throw p1
.end method

.method public final zze()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zza:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayr;->zza()I

    move-result v0

    return v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzate;Lcom/google/android/gms/internal/ads/zzauy;ZZJ)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzayu;->zza:Lcom/google/android/gms/internal/ads/zzayr;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzg:Lcom/google/android/gms/internal/ads/zzatd;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzb:Lcom/google/android/gms/internal/ads/zzayq;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Lcom/google/android/gms/internal/ads/zzate;Lcom/google/android/gms/internal/ads/zzauy;ZZLcom/google/android/gms/internal/ads/zzatd;Lcom/google/android/gms/internal/ads/zzayq;)I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_f

    const/4 v2, -0x4

    if-eq v1, v2, :cond_0

    const/4 v1, -0x3

    return v1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzaut;->zzf()Z

    move-result v1

    if-nez v1, :cond_e

    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/zzauy;->zzc:J

    cmp-long v1, v3, p5

    if-gez v1, :cond_1

    const/high16 v1, -0x80000000

    .line 2
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzaut;->zza(I)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzauy;->zzi()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzb:Lcom/google/android/gms/internal/ads/zzayq;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzayq;->zzb:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzc:Lcom/google/android/gms/internal/ads/zzbar;

    const/4 v6, 0x1

    .line 3
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbar;->zzs(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzc:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbar;->zza:[B

    .line 4
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzayu;->zzs(J[BI)V

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzc:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbar;->zza:[B

    const/4 v7, 0x0

    .line 5
    aget-byte v5, v5, v7

    and-int/lit16 v9, v5, 0x80

    if-eqz v9, :cond_2

    move v9, v6

    goto :goto_0

    :cond_2
    move v9, v7

    :goto_0
    and-int/lit8 v5, v5, 0x7f

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzauy;->zza:Lcom/google/android/gms/internal/ads/zzauw;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzauw;->zza:[B

    if-nez v11, :cond_3

    const/16 v11, 0x10

    new-array v11, v11, [B

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/zzauw;->zza:[B

    :cond_3
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzauw;->zza:[B

    .line 6
    invoke-direct {v0, v3, v4, v10, v5}, Lcom/google/android/gms/internal/ads/zzayu;->zzs(J[BI)V

    int-to-long v10, v5

    add-long/2addr v3, v10

    if-eqz v9, :cond_4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzc:Lcom/google/android/gms/internal/ads/zzbar;

    const/4 v6, 0x2

    .line 7
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbar;->zzs(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzc:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbar;->zza:[B

    .line 8
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzayu;->zzs(J[BI)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzc:Lcom/google/android/gms/internal/ads/zzbar;

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbar;->zzj()I

    move-result v6

    :cond_4
    move v11, v6

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzauy;->zza:Lcom/google/android/gms/internal/ads/zzauw;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzauw;->zzd:[I

    if-eqz v6, :cond_5

    array-length v10, v6

    if-ge v10, v11, :cond_6

    :cond_5
    new-array v6, v11, [I

    :cond_6
    move-object v12, v6

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzauw;->zze:[I

    if-eqz v5, :cond_7

    array-length v6, v5

    if-ge v6, v11, :cond_8

    :cond_7
    new-array v5, v11, [I

    :cond_8
    move-object v13, v5

    if-eqz v9, :cond_9

    mul-int/lit8 v5, v11, 0x6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzc:Lcom/google/android/gms/internal/ads/zzbar;

    .line 10
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbar;->zzs(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzc:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzbar;->zza:[B

    .line 11
    invoke-direct {v0, v3, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzayu;->zzs(J[BI)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzc:Lcom/google/android/gms/internal/ads/zzbar;

    .line 12
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzbar;->zzv(I)V

    :goto_1
    if-ge v7, v11, :cond_a

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzc:Lcom/google/android/gms/internal/ads/zzbar;

    .line 13
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbar;->zzj()I

    move-result v5

    aput v5, v12, v7

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzc:Lcom/google/android/gms/internal/ads/zzbar;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbar;->zzi()I

    move-result v5

    aput v5, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 15
    :cond_9
    aput v7, v12, v7

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzayq;->zza:I

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzayq;->zzb:J

    sub-long v9, v3, v9

    long-to-int v6, v9

    sub-int/2addr v5, v6

    .line 16
    aput v5, v13, v7

    .line 14
    :cond_a
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzayq;->zzd:Lcom/google/android/gms/internal/ads/zzavo;

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzauy;->zza:Lcom/google/android/gms/internal/ads/zzauw;

    .line 17
    iget-object v14, v5, Lcom/google/android/gms/internal/ads/zzavo;->zzb:[B

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzauw;->zza:[B

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzavo;->zza:I

    const/16 v16, 0x1

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzauw;->zzb(I[I[I[B[BI)V

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzayq;->zzb:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    int-to-long v9, v3

    add-long/2addr v5, v9

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzayq;->zzb:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzayq;->zza:I

    sub-int/2addr v4, v3

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzayq;->zza:I

    :cond_b
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzb:Lcom/google/android/gms/internal/ads/zzayq;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzayq;->zza:I

    .line 18
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzauy;->zzh(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzb:Lcom/google/android/gms/internal/ads/zzayq;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzayq;->zzb:J

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzauy;->zzb:Ljava/nio/ByteBuffer;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzayq;->zza:I

    .line 19
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzayu;->zzq(J)V

    :cond_c
    :goto_2
    if-lez v1, :cond_d

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzayu;->zze:Lcom/google/android/gms/internal/ads/zzays;

    .line 20
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzays;->zza:J

    sub-long v6, v3, v6

    long-to-int v6, v6

    const/high16 v7, 0x10000

    sub-int/2addr v7, v6

    .line 21
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzayu;->zze:Lcom/google/android/gms/internal/ads/zzays;

    .line 22
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzays;->zzd:Lcom/google/android/gms/internal/ads/zzazq;

    .line 23
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzazq;->zza:[B

    invoke-virtual {v5, v9, v6, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    int-to-long v9, v7

    add-long/2addr v3, v9

    sub-int/2addr v1, v7

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzayu;->zze:Lcom/google/android/gms/internal/ads/zzays;

    .line 24
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzays;->zzb:J

    cmp-long v6, v3, v6

    if-nez v6, :cond_c

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzl:Lcom/google/android/gms/internal/ads/zzazw;

    .line 25
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzazw;->zzc(Lcom/google/android/gms/internal/ads/zzazq;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzayu;->zze:Lcom/google/android/gms/internal/ads/zzays;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/google/android/gms/internal/ads/zzays;->zzd:Lcom/google/android/gms/internal/ads/zzazq;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzays;->zze:Lcom/google/android/gms/internal/ads/zzays;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzayu;->zze:Lcom/google/android/gms/internal/ads/zzays;

    goto :goto_2

    :cond_d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzb:Lcom/google/android/gms/internal/ads/zzayq;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzayq;->zzc:J

    .line 26
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzayu;->zzq(J)V

    :cond_e
    return v2

    :cond_f
    move-object/from16 v1, p1

    .line 16
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzate;->zza:Lcom/google/android/gms/internal/ads/zzatd;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzg:Lcom/google/android/gms/internal/ads/zzatd;

    return v2
.end method

.method public final zzg()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zza:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzatd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zza:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzf()Lcom/google/android/gms/internal/ads/zzatd;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzp()V

    :cond_0
    return-void
.end method

.method public final zzj(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v1, p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zza:Lcom/google/android/gms/internal/ads/zzayr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzj()V

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzg:Lcom/google/android/gms/internal/ads/zzatd;

    :cond_1
    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzayt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzk:Lcom/google/android/gms/internal/ads/zzayt;

    return-void
.end method

.method public final zzl()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zza:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzd()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzayu;->zzq(J)V

    :cond_0
    return-void
.end method

.method public final zzm()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zza:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzl()Z

    move-result v0

    return v0
.end method

.method public final zzn(JZ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zza:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzayr;->zze(JZ)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zzq(J)V

    const/4 p1, 0x1

    return p1
.end method
