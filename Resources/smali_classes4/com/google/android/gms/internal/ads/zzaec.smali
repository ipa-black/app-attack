.class final Lcom/google/android/gms/internal/ads/zzaec;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaee;


# instance fields
.field private final zza:[B

.field private final zzb:Ljava/util/ArrayDeque;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzael;

.field private zzd:Lcom/google/android/gms/internal/ads/zzaed;

.field private zze:I

.field private zzf:I

.field private zzg:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:[B

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzb:Ljava/util/ArrayDeque;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzael;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzael;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzc:Lcom/google/android/gms/internal/ads/zzael;

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzzk;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:[B

    check-cast p1, Lcom/google/android/gms/internal/ads/zzyz;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1, p2, v1}, Lcom/google/android/gms/internal/ads/zzyz;->zzn([BIIZ)Z

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:[B

    .line 2
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaed;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:Lcom/google/android/gms/internal/ads/zzaed;

    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzb:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzc:Lcom/google/android/gms/internal/ads/zzael;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzael;->zze()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzzk;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:Lcom/google/android/gms/internal/ads/zzaed;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzb:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaeb;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzk;->zzf()J

    move-result-wide v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaeb;->zzb(Lcom/google/android/gms/internal/ads/zzaeb;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:Lcom/google/android/gms/internal/ads/zzaed;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzb:Ljava/util/ArrayDeque;

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaeb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaeb;->zza(Lcom/google/android/gms/internal/ads/zzaeb;)I

    move-result v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaeh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaeh;->zza:Lcom/google/android/gms/internal/ads/zzaej;

    .line 29
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaej;->zzh(I)V

    return v1

    .line 2
    :cond_1
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:I

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzc:Lcom/google/android/gms/internal/ads/zzael;

    .line 3
    invoke-virtual {v0, p1, v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzael;->zzd(Lcom/google/android/gms/internal/ads/zzzk;ZZI)J

    move-result-wide v5

    const-wide/16 v7, -0x2

    cmp-long v0, v5, v7

    if-nez v0, :cond_3

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzk;->zzj()V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:[B

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzyz;

    .line 5
    invoke-virtual {v5, v0, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzyz;->zzm([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:[B

    aget-byte v0, v0, v4

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzael;->zzb(I)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    if-gt v0, v3, :cond_2

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:[B

    .line 7
    invoke-static {v6, v0, v4}, Lcom/google/android/gms/internal/ads/zzael;->zzc([BIZ)J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:Lcom/google/android/gms/internal/ads/zzaed;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzaeh;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaeh;->zza:Lcom/google/android/gms/internal/ads/zzaej;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaej;->zzo(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 9
    invoke-virtual {v5, v0, v4}, Lcom/google/android/gms/internal/ads/zzyz;->zzo(IZ)Z

    int-to-long v5, v6

    goto :goto_3

    .line 8
    :cond_2
    invoke-virtual {v5, v1, v4}, Lcom/google/android/gms/internal/ads/zzyz;->zzo(IZ)Z

    goto :goto_2

    :cond_3
    :goto_3
    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-nez v0, :cond_4

    return v4

    :cond_4
    long-to-int v0, v5

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzf:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:I

    goto :goto_4

    :cond_5
    if-ne v0, v1, :cond_6

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzc:Lcom/google/android/gms/internal/ads/zzael;

    const/16 v5, 0x8

    .line 10
    invoke-virtual {v0, p1, v4, v1, v5}, Lcom/google/android/gms/internal/ads/zzael;->zzd(Lcom/google/android/gms/internal/ads/zzzk;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzg:J

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:I

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:Lcom/google/android/gms/internal/ads/zzaed;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzf:I

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaeh;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaeh;->zza:Lcom/google/android/gms/internal/ads/zzaej;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaej;->zzn(I)I

    move-result v7

    if-eqz v7, :cond_12

    const/4 v8, 0x0

    if-eq v7, v1, :cond_11

    const-wide/16 v9, 0x8

    if-eq v7, v2, :cond_f

    const/4 v2, 0x3

    if-eq v7, v2, :cond_b

    if-eq v7, v3, :cond_a

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzg:J

    const-wide/16 v11, 0x4

    cmp-long v2, v6, v11

    if-eqz v2, :cond_8

    cmp-long v2, v6, v9

    if-nez v2, :cond_7

    goto :goto_5

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid float size: "

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/google/android/gms/internal/ads/zzbu;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    :cond_8
    :goto_5
    long-to-int v2, v6

    .line 12
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzaec;->zzd(Lcom/google/android/gms/internal/ads/zzzk;I)J

    move-result-wide v6

    if-ne v2, v3, :cond_9

    long-to-int p1, v6

    .line 13
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v2, p1

    goto :goto_6

    .line 14
    :cond_9
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 13
    :goto_6
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzaeh;->zza:Lcom/google/android/gms/internal/ads/zzaej;

    .line 15
    invoke-virtual {p1, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzaej;->zzi(ID)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:I

    return v1

    .line 14
    :cond_a
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzg:J

    long-to-int v0, v2

    .line 17
    invoke-virtual {v6, v5, v0, p1}, Lcom/google/android/gms/internal/ads/zzaej;->zzg(IILcom/google/android/gms/internal/ads/zzzk;)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:I

    return v1

    .line 25
    :cond_b
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzg:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v2, v6

    if-gtz v6, :cond_e

    long-to-int v2, v2

    if-nez v2, :cond_c

    .line 18
    const-string p1, ""

    goto :goto_8

    .line 19
    :cond_c
    new-array v3, v2, [B

    check-cast p1, Lcom/google/android/gms/internal/ads/zzyz;

    .line 20
    invoke-virtual {p1, v3, v4, v2, v4}, Lcom/google/android/gms/internal/ads/zzyz;->zzn([BIIZ)Z

    :goto_7
    if-lez v2, :cond_d

    add-int/lit8 p1, v2, -0x1

    .line 21
    aget-byte v6, v3, p1

    if-nez v6, :cond_d

    move v2, p1

    goto :goto_7

    :cond_d
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 18
    :goto_8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaeh;->zza:Lcom/google/android/gms/internal/ads/zzaej;

    .line 22
    invoke-virtual {v0, v5, p1}, Lcom/google/android/gms/internal/ads/zzaej;->zzl(ILjava/lang/String;)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:I

    return v1

    .line 25
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "String element size: "

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/google/android/gms/internal/ads/zzbu;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 17
    :cond_f
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzg:J

    cmp-long v6, v2, v9

    if-gtz v6, :cond_10

    long-to-int v2, v2

    .line 24
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzaec;->zzd(Lcom/google/android/gms/internal/ads/zzzk;I)J

    move-result-wide v2

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzaeh;->zza:Lcom/google/android/gms/internal/ads/zzaej;

    .line 25
    invoke-virtual {p1, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzaej;->zzj(IJ)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:I

    return v1

    .line 17
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid integer size: "

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/google/android/gms/internal/ads/zzbu;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 21
    :cond_11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzk;->zzf()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzg:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzb:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaeb;

    add-long/2addr v6, v2

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzaeb;-><init>(IJLcom/google/android/gms/internal/ads/zzaea;)V

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:Lcom/google/android/gms/internal/ads/zzaed;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzf:I

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzg:J

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaeh;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzaeh;->zza:Lcom/google/android/gms/internal/ads/zzaej;

    move-wide v7, v2

    .line 27
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzaej;->zzk(IJJ)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:I

    return v1

    :cond_12
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzg:J

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzyz;

    long-to-int v0, v0

    .line 11
    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzyz;->zzo(IZ)Z

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:I

    goto/16 :goto_0
.end method
