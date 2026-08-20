.class public final Lcom/google/android/gms/internal/ads/zzsc;
.super Lcom/google/android/gms/internal/ads/zzui;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcm;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzck;

.field private zze:Lcom/google/android/gms/internal/ads/zzsa;

.field private zzf:Lcom/google/android/gms/internal/ads/zzrz;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzsj;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzui;-><init>(Lcom/google/android/gms/internal/ads/zzsj;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzsj;->zzu()Z

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzb:Z

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcm;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzcm;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzc:Lcom/google/android/gms/internal/ads/zzcm;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzck;

    .line 4
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzck;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzd:Lcom/google/android/gms/internal/ads/zzck;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzsj;->zzL()Lcom/google/android/gms/internal/ads/zzcn;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzsj;->zzI()Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsa;->zzq(Lcom/google/android/gms/internal/ads/zzbg;)Lcom/google/android/gms/internal/ads/zzsa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    return-void
.end method

.method private final zzJ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsa;->zzs(Lcom/google/android/gms/internal/ads/zzsa;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzsa;->zzd:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsa;->zzs(Lcom/google/android/gms/internal/ads/zzsa;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final zzK(J)V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "unpreparedMaskingMediaPeriod"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzf:Lcom/google/android/gms/internal/ads/zzrz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrz;->zza:Lcom/google/android/gms/internal/ads/zzsh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzsh;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzrv;->zza(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzd:Lcom/google/android/gms/internal/ads/zzck;

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzcn;->zzd(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    iget-wide v1, v3, Lcom/google/android/gms/internal/ads/zzck;->zze:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, -0x1

    add-long/2addr v1, p1

    const-wide/16 p1, 0x0

    .line 3
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 4
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrz;->zzs(J)V

    return-void
.end method


# virtual methods
.method public final zzB()Lcom/google/android/gms/internal/ads/zzcn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    return-object v0
.end method

.method protected final zzC(Lcom/google/android/gms/internal/ads/zzsh;)Lcom/google/android/gms/internal/ads/zzsh;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzsh;->zza:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzsa;->zzs(Lcom/google/android/gms/internal/ads/zzsa;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzsa;->zzs(Lcom/google/android/gms/internal/ads/zzsa;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzsa;->zzd:Ljava/lang/Object;

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzsh;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzsh;

    move-result-object p1

    return-object p1
.end method

.method protected final zzD(Lcom/google/android/gms/internal/ads/zzcn;)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzh:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzsa;->zzp(Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzsa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzf:Lcom/google/android/gms/internal/ads/zzrz;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrz;->zzn()J

    move-result-wide v2

    .line 2
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzsc;->zzK(J)V

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcn;->zzo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzsa;->zzp(Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzsa;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcm;->zza:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsa;->zzd:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzsa;->zzr(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzsa;

    move-result-object p1

    .line 4
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    goto :goto_3

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzc:Lcom/google/android/gms/internal/ads/zzcm;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 6
    invoke-virtual {p1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcn;->zze(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzc:Lcom/google/android/gms/internal/ads/zzcm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcm;->zzc:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzf:Lcom/google/android/gms/internal/ads/zzrz;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzrz;->zzq()J

    move-result-wide v6

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzrz;->zza:Lcom/google/android/gms/internal/ads/zzsh;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzsh;->zza:Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzd:Lcom/google/android/gms/internal/ads/zzck;

    .line 7
    invoke-virtual {v8, v5, v9}, Lcom/google/android/gms/internal/ads/zzcn;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzc:Lcom/google/android/gms/internal/ads/zzcm;

    .line 8
    invoke-virtual {v5, v2, v8, v3, v4}, Lcom/google/android/gms/internal/ads/zzcn;->zze(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    cmp-long v2, v6, v3

    if-eqz v2, :cond_3

    move-wide v12, v6

    goto :goto_1

    :cond_3
    move-wide v12, v3

    :goto_1
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzc:Lcom/google/android/gms/internal/ads/zzcm;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzd:Lcom/google/android/gms/internal/ads/zzck;

    const/4 v11, 0x0

    move-object v8, p1

    .line 9
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzcn;->zzl(Lcom/google/android/gms/internal/ads/zzcm;Lcom/google/android/gms/internal/ads/zzck;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 10
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 11
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzi:Z

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzsa;->zzp(Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzsa;

    move-result-object p1

    goto :goto_2

    .line 14
    :cond_4
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzsa;->zzr(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzsa;

    move-result-object p1

    .line 12
    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzf:Lcom/google/android/gms/internal/ads/zzrz;

    if-eqz p1, :cond_5

    .line 13
    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/ads/zzsc;->zzK(J)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzrz;->zza:Lcom/google/android/gms/internal/ads/zzsh;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzsh;->zza:Ljava/lang/Object;

    .line 14
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzsc;->zzJ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzsh;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzsh;

    move-result-object v1

    :cond_5
    :goto_3
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzi:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzh:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zze:Lcom/google/android/gms/internal/ads/zzsa;

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzri;->zzo(Lcom/google/android/gms/internal/ads/zzcn;)V

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzf:Lcom/google/android/gms/internal/ads/zzrz;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzrz;->zzr(Lcom/google/android/gms/internal/ads/zzsh;)V

    :cond_6
    return-void
.end method

.method public final zzE()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzg:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzui;->zza:Lcom/google/android/gms/internal/ads/zzsj;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzrq;->zzA(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzsj;)V

    :cond_0
    return-void
.end method

.method public final zzF(Lcom/google/android/gms/internal/ads/zzsf;)V
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzrz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrz;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzf:Lcom/google/android/gms/internal/ads/zzrz;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzf:Lcom/google/android/gms/internal/ads/zzrz;

    :cond_0
    return-void
.end method

.method public final zzG(Lcom/google/android/gms/internal/ads/zzsh;Lcom/google/android/gms/internal/ads/zzwi;J)Lcom/google/android/gms/internal/ads/zzrz;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzrz;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzrz;-><init>(Lcom/google/android/gms/internal/ads/zzsh;Lcom/google/android/gms/internal/ads/zzwi;J[B)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsc;->zza:Lcom/google/android/gms/internal/ads/zzsj;

    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/zzrz;->zzu(Lcom/google/android/gms/internal/ads/zzsj;)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzh:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzsh;->zza:Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzsc;->zzJ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzsh;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzsh;

    move-result-object p1

    .line 3
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/zzrz;->zzr(Lcom/google/android/gms/internal/ads/zzsh;)V

    goto :goto_0

    :cond_0
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzf:Lcom/google/android/gms/internal/ads/zzrz;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzg:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzg:Z

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzui;->zza:Lcom/google/android/gms/internal/ads/zzsj;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrq;->zzA(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzsj;)V

    :cond_1
    :goto_0
    return-object v6
.end method

.method public final bridge synthetic zzH(Lcom/google/android/gms/internal/ads/zzsh;Lcom/google/android/gms/internal/ads/zzwi;J)Lcom/google/android/gms/internal/ads/zzsf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzsc;->zzG(Lcom/google/android/gms/internal/ads/zzsh;Lcom/google/android/gms/internal/ads/zzwi;J)Lcom/google/android/gms/internal/ads/zzrz;

    move-result-object p1

    return-object p1
.end method

.method public final zzq()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzg:Z

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzui;->zzq()V

    return-void
.end method

.method public final zzy()V
    .locals 0

    return-void
.end method
