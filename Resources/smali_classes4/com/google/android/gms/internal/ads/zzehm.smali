.class public final Lcom/google/android/gms/internal/ads/zzehm;
.super Lcom/google/android/gms/internal/ads/zzcbm;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgfc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeie;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcvb;

.field private final zzf:Ljava/util/ArrayDeque;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfoy;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzccn;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzeib;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzgfc;Lcom/google/android/gms/internal/ads/zzccn;Lcom/google/android/gms/internal/ads/zzcvb;Lcom/google/android/gms/internal/ads/zzeie;Ljava/util/ArrayDeque;Lcom/google/android/gms/internal/ads/zzeib;Lcom/google/android/gms/internal/ads/zzfoy;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcbm;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehm;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzc:Lcom/google/android/gms/internal/ads/zzgfc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzh:Lcom/google/android/gms/internal/ads/zzccn;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzd:Lcom/google/android/gms/internal/ads/zzeie;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehm;->zze:Lcom/google/android/gms/internal/ads/zzcvb;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzf:Ljava/util/ArrayDeque;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzi:Lcom/google/android/gms/internal/ads/zzeib;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzg:Lcom/google/android/gms/internal/ads/zzfoy;

    return-void
.end method

.method private final declared-synchronized zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzehj;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzehj;

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzehj;->zzc:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfnj;Lcom/google/android/gms/internal/ads/zzbut;Lcom/google/android/gms/internal/ads/zzfow;Lcom/google/android/gms/internal/ads/zzfol;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbuq;->zza:Lcom/google/android/gms/internal/ads/zzbun;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzehd;->zza:Lcom/google/android/gms/internal/ads/zzehd;

    const-string v2, "AFMA_getAdDictionary"

    .line 2
    invoke-virtual {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbut;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbum;Lcom/google/android/gms/internal/ads/zzbul;)Lcom/google/android/gms/internal/ads/zzbuj;

    move-result-object p2

    .line 3
    invoke-static {p0, p4}, Lcom/google/android/gms/internal/ads/zzfov;->zzd(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfol;)V

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfnd;->zzg:Lcom/google/android/gms/internal/ads/zzfnd;

    .line 5
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzfnb;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzfna;->zzf(Lcom/google/android/gms/internal/ads/zzgdy;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zza()Lcom/google/android/gms/internal/ads/zzfmo;

    move-result-object p0

    .line 6
    invoke-static {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzfov;->zzc(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfow;Lcom/google/android/gms/internal/ads/zzfol;)V

    return-object p0
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzccb;Lcom/google/android/gms/internal/ads/zzfnj;Lcom/google/android/gms/internal/ads/zzfae;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegx;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzegx;-><init>(Lcom/google/android/gms/internal/ads/zzfae;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzegy;->zza:Lcom/google/android/gms/internal/ads/zzegy;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfnd;->zze:Lcom/google/android/gms/internal/ads/zzfnd;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zza:Landroid/os/Bundle;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzger;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzfnb;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfna;->zzf(Lcom/google/android/gms/internal/ads/zzgdy;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzfna;->zze(Lcom/google/android/gms/internal/ads/zzfmm;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zza()Lcom/google/android/gms/internal/ads/zzfmo;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized zzn(Lcom/google/android/gms/internal/ads/zzehj;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzehm;->zzo()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzf:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzo()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzblf;->zzd:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzf:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzf:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzp(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzcbx;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzehg;-><init>(Lcom/google/android/gms/internal/ads/zzehm;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcib;->zza:Lcom/google/android/gms/internal/ads/zzgfc;

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzger;->zzn(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgdy;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzehi;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzehi;-><init>(Lcom/google/android/gms/internal/ads/zzehm;Lcom/google/android/gms/internal/ads/zzcbx;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcib;->zzf:Lcom/google/android/gms/internal/ads/zzgfc;

    .line 3
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzger;->zzr(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgen;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzccb;I)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzblf;->zza:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Split request is disabled."

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzger;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzccb;->zzi:Lcom/google/android/gms/internal/ads/zzfkz;

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Pool configuration missing from request."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzger;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1

    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfkz;->zzc:I

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfkz;->zzd:I

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzf()Lcom/google/android/gms/internal/ads/zzbuk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehm;->zza:Landroid/content/Context;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzchu;->zza()Lcom/google/android/gms/internal/ads/zzchu;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzg:Lcom/google/android/gms/internal/ads/zzfoy;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbuk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzfoy;)Lcom/google/android/gms/internal/ads/zzbut;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehm;->zze:Lcom/google/android/gms/internal/ads/zzcvb;

    .line 8
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzcvb;->zzq(Lcom/google/android/gms/internal/ads/zzccb;I)Lcom/google/android/gms/internal/ads/zzfae;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfae;->zzc()Lcom/google/android/gms/internal/ads/zzfnj;

    move-result-object v1

    .line 10
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzehm;->zzm(Lcom/google/android/gms/internal/ads/zzccb;Lcom/google/android/gms/internal/ads/zzfnj;Lcom/google/android/gms/internal/ads/zzfae;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v5

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfae;->zzd()Lcom/google/android/gms/internal/ads/zzfow;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehm;->zza:Landroid/content/Context;

    const/16 v3, 0x9

    .line 12
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfok;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfol;

    move-result-object v7

    .line 13
    invoke-static {v5, v1, v0, p2, v7}, Lcom/google/android/gms/internal/ads/zzehm;->zzl(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfnj;Lcom/google/android/gms/internal/ads/zzbut;Lcom/google/android/gms/internal/ads/zzfow;Lcom/google/android/gms/internal/ads/zzfol;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v4

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfnd;->zzy:Lcom/google/android/gms/internal/ads/zzfnd;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzgfb;

    const/4 v2, 0x0

    aput-object v5, v0, v2

    const/4 v2, 0x1

    aput-object v4, v0, v2

    .line 15
    invoke-virtual {v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfnb;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzfmr;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzehc;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzehc;-><init>(Lcom/google/android/gms/internal/ads/zzehm;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzccb;Lcom/google/android/gms/internal/ads/zzfol;)V

    .line 16
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfmr;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfna;->zza()Lcom/google/android/gms/internal/ads/zzfmo;

    move-result-object p1

    return-object p1

    .line 4
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Caching is disabled."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzger;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzccb;I)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzf()Lcom/google/android/gms/internal/ads/zzbuk;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzehm;->zza:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzchu;->zza()Lcom/google/android/gms/internal/ads/zzchu;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzehm;->zzg:Lcom/google/android/gms/internal/ads/zzfoy;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbuk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzfoy;)Lcom/google/android/gms/internal/ads/zzbut;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzehm;->zze:Lcom/google/android/gms/internal/ads/zzcvb;

    move/from16 v8, p2

    .line 3
    invoke-interface {v3, v1, v8}, Lcom/google/android/gms/internal/ads/zzcvb;->zzq(Lcom/google/android/gms/internal/ads/zzccb;I)Lcom/google/android/gms/internal/ads/zzfae;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzehl;->zza:Lcom/google/android/gms/internal/ads/zzbum;

    .line 4
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbuq;->zzb:Lcom/google/android/gms/internal/ads/zzbul;

    .line 5
    const-string v6, "google.afma.response.normalize"

    invoke-virtual {v2, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzbut;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbum;Lcom/google/android/gms/internal/ads/zzbul;)Lcom/google/android/gms/internal/ads/zzbuj;

    move-result-object v10

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzblf;->zza:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzccb;->zzj:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Request contained a PoolKey but split request is disabled."

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzccb;->zzh:Ljava/lang/String;

    .line 10
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzehm;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzehj;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "Request contained a PoolKey but no matching parameters were found."

    .line 11
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_1
    :goto_0
    move-object v11, v5

    if-nez v11, :cond_2

    .line 8
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehm;->zza:Landroid/content/Context;

    const/16 v5, 0x9

    .line 12
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzfok;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfol;

    move-result-object v4

    goto :goto_1

    .line 48
    :cond_2
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzehj;->zze:Lcom/google/android/gms/internal/ads/zzfol;

    :goto_1
    move-object v12, v4

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfae;->zzd()Lcom/google/android/gms/internal/ads/zzfow;

    move-result-object v13

    .line 14
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzccb;->zza:Landroid/os/Bundle;

    const-string v5, "ad_types"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzfow;->zzd(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfow;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzeid;

    .line 15
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzccb;->zzg:Ljava/lang/String;

    invoke-direct {v14, v4, v13, v12}, Lcom/google/android/gms/internal/ads/zzeid;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfow;Lcom/google/android/gms/internal/ads/zzfol;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzehm;->zza:Landroid/content/Context;

    .line 16
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzccb;->zzb:Lcom/google/android/gms/internal/ads/zzchu;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzchu;->zza:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzehm;->zzh:Lcom/google/android/gms/internal/ads/zzccn;

    new-instance v15, Lcom/google/android/gms/internal/ads/zzeia;

    const/4 v9, 0x0

    move-object v4, v15

    move/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzeia;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzccn;I[B)V

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfae;->zzc()Lcom/google/android/gms/internal/ads/zzfnj;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzehm;->zza:Landroid/content/Context;

    const/16 v6, 0xb

    .line 18
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzfok;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfol;

    move-result-object v5

    const/16 v6, 0xa

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-nez v11, :cond_3

    .line 19
    invoke-static {v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzehm;->zzm(Lcom/google/android/gms/internal/ads/zzccb;Lcom/google/android/gms/internal/ads/zzfnj;Lcom/google/android/gms/internal/ads/zzfae;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v1

    .line 20
    invoke-static {v1, v4, v2, v13, v12}, Lcom/google/android/gms/internal/ads/zzehm;->zzl(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfnj;Lcom/google/android/gms/internal/ads/zzbut;Lcom/google/android/gms/internal/ads/zzfow;Lcom/google/android/gms/internal/ads/zzfol;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzehm;->zza:Landroid/content/Context;

    .line 21
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzfok;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfol;

    move-result-object v3

    .line 22
    sget-object v6, Lcom/google/android/gms/internal/ads/zzfnd;->zzi:Lcom/google/android/gms/internal/ads/zzfnd;

    new-array v11, v9, [Lcom/google/android/gms/internal/ads/zzgfb;

    aput-object v2, v11, v8

    aput-object v1, v11, v7

    .line 23
    invoke-virtual {v4, v6, v11}, Lcom/google/android/gms/internal/ads/zzfnb;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzfmr;

    move-result-object v6

    new-instance v11, Lcom/google/android/gms/internal/ads/zzeha;

    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzeha;-><init>(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgfb;)V

    .line 24
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzfmr;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v6

    .line 25
    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/zzfna;->zze(Lcom/google/android/gms/internal/ads/zzfmm;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v6

    new-instance v11, Lcom/google/android/gms/internal/ads/zzfor;

    invoke-direct {v11, v3}, Lcom/google/android/gms/internal/ads/zzfor;-><init>(Lcom/google/android/gms/internal/ads/zzfol;)V

    .line 26
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzfna;->zze(Lcom/google/android/gms/internal/ads/zzfmm;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v6

    .line 27
    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/ads/zzfna;->zze(Lcom/google/android/gms/internal/ads/zzfmm;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v6

    .line 28
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfna;->zza()Lcom/google/android/gms/internal/ads/zzfmo;

    move-result-object v6

    .line 29
    invoke-static {v6, v13, v3}, Lcom/google/android/gms/internal/ads/zzfov;->zza(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfow;Lcom/google/android/gms/internal/ads/zzfol;)V

    .line 30
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzfov;->zzd(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfol;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfnd;->zzk:Lcom/google/android/gms/internal/ads/zzfnd;

    const/4 v11, 0x3

    new-array v11, v11, [Lcom/google/android/gms/internal/ads/zzgfb;

    aput-object v1, v11, v8

    aput-object v2, v11, v7

    aput-object v6, v11, v9

    .line 31
    invoke-virtual {v4, v3, v11}, Lcom/google/android/gms/internal/ads/zzfnb;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzfmr;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzehb;

    invoke-direct {v4, v6, v1, v2}, Lcom/google/android/gms/internal/ads/zzehb;-><init>(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgfb;)V

    .line 32
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfmr;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzfna;->zzf(Lcom/google/android/gms/internal/ads/zzgdy;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfna;->zza()Lcom/google/android/gms/internal/ads/zzfmo;

    move-result-object v1

    goto :goto_2

    .line 49
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeic;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzehj;->zzb:Lorg/json/JSONObject;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzehj;->zza:Lcom/google/android/gms/internal/ads/zzcce;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzeic;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcce;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzehm;->zza:Landroid/content/Context;

    .line 35
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/ads/zzfok;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfol;

    move-result-object v2

    .line 36
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfnd;->zzi:Lcom/google/android/gms/internal/ads/zzfnd;

    .line 37
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzger;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzfnb;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v1

    .line 38
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzfna;->zze(Lcom/google/android/gms/internal/ads/zzfmm;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfor;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzfor;-><init>(Lcom/google/android/gms/internal/ads/zzfol;)V

    .line 39
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfna;->zze(Lcom/google/android/gms/internal/ads/zzfmm;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzfna;->zze(Lcom/google/android/gms/internal/ads/zzfmm;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfna;->zza()Lcom/google/android/gms/internal/ads/zzfmo;

    move-result-object v1

    .line 42
    invoke-static {v1, v13, v2}, Lcom/google/android/gms/internal/ads/zzfov;->zza(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfow;Lcom/google/android/gms/internal/ads/zzfol;)V

    .line 43
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzger;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v2

    .line 44
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzfov;->zzd(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfol;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfnd;->zzk:Lcom/google/android/gms/internal/ads/zzfnd;

    new-array v6, v9, [Lcom/google/android/gms/internal/ads/zzgfb;

    aput-object v1, v6, v8

    aput-object v2, v6, v7

    .line 45
    invoke-virtual {v4, v3, v6}, Lcom/google/android/gms/internal/ads/zzfnb;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzfmr;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzehf;

    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgfb;)V

    .line 46
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfmr;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzfna;->zzf(Lcom/google/android/gms/internal/ads/zzgdy;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfna;->zza()Lcom/google/android/gms/internal/ads/zzfmo;

    move-result-object v1

    .line 49
    :goto_2
    invoke-static {v1, v13, v5}, Lcom/google/android/gms/internal/ads/zzfov;->zza(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfow;Lcom/google/android/gms/internal/ads/zzfol;)V

    return-object v1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzccb;I)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzf()Lcom/google/android/gms/internal/ads/zzbuk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehm;->zza:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzchu;->zza()Lcom/google/android/gms/internal/ads/zzchu;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzg:Lcom/google/android/gms/internal/ads/zzfoy;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbuk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzfoy;)Lcom/google/android/gms/internal/ads/zzbut;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzblk;->zza:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Signal collection disabled."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzger;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehm;->zze:Lcom/google/android/gms/internal/ads/zzcvb;

    .line 5
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzcvb;->zzq(Lcom/google/android/gms/internal/ads/zzccb;I)Lcom/google/android/gms/internal/ads/zzfae;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfae;->zza()Lcom/google/android/gms/internal/ads/zzezp;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbuq;->zza:Lcom/google/android/gms/internal/ads/zzbun;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbuq;->zzb:Lcom/google/android/gms/internal/ads/zzbul;

    const-string v4, "google.afma.request.getSignals"

    .line 8
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzbut;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbum;Lcom/google/android/gms/internal/ads/zzbul;)Lcom/google/android/gms/internal/ads/zzbuj;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehm;->zza:Landroid/content/Context;

    const/16 v3, 0x16

    .line 9
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfok;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfol;

    move-result-object v2

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfae;->zzc()Lcom/google/android/gms/internal/ads/zzfnj;

    move-result-object v3

    .line 11
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfnd;->zzl:Lcom/google/android/gms/internal/ads/zzfnd;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzccb;->zza:Landroid/os/Bundle;

    .line 12
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzger;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfnb;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfor;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzfor;-><init>(Lcom/google/android/gms/internal/ads/zzfol;)V

    .line 13
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfna;->zze(Lcom/google/android/gms/internal/ads/zzfmm;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzehe;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzehe;-><init>(Lcom/google/android/gms/internal/ads/zzezp;)V

    .line 14
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfna;->zzf(Lcom/google/android/gms/internal/ads/zzgdy;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfnd;->zzm:Lcom/google/android/gms/internal/ads/zzfnd;

    .line 15
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfna;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfna;->zzf(Lcom/google/android/gms/internal/ads/zzgdy;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfna;->zza()Lcom/google/android/gms/internal/ads/zzfmo;

    move-result-object v0

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfae;->zzd()Lcom/google/android/gms/internal/ads/zzfow;

    move-result-object p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzccb;->zza:Landroid/os/Bundle;

    const-string v1, "ad_types"

    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfow;->zzd(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfow;

    .line 20
    invoke-static {v0, p2, v2}, Lcom/google/android/gms/internal/ads/zzfov;->zzb(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfow;Lcom/google/android/gms/internal/ads/zzfol;)V

    .line 21
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbkz;->zze:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbkx;->zzj:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzd:Lcom/google/android/gms/internal/ads/zzeie;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzegz;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzegz;-><init>(Lcom/google/android/gms/internal/ads/zzeie;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzc:Lcom/google/android/gms/internal/ads/zzgfc;

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzgfb;->zzc(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzd:Lcom/google/android/gms/internal/ads/zzeie;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzegz;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzegz;-><init>(Lcom/google/android/gms/internal/ads/zzeie;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzb:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzgfb;->zzc(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzccb;Lcom/google/android/gms/internal/ads/zzcbx;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehm;->zzb(Lcom/google/android/gms/internal/ads/zzccb;I)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzehm;->zzp(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzcbx;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzccb;Lcom/google/android/gms/internal/ads/zzcbx;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehm;->zzd(Lcom/google/android/gms/internal/ads/zzccb;I)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzehm;->zzp(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzcbx;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzccb;Lcom/google/android/gms/internal/ads/zzcbx;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehm;->zzc(Lcom/google/android/gms/internal/ads/zzccb;I)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzehm;->zzp(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzcbx;)V

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbkz;->zzc:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbkx;->zzj:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzd:Lcom/google/android/gms/internal/ads/zzeie;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzegz;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzegz;-><init>(Lcom/google/android/gms/internal/ads/zzeie;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzc:Lcom/google/android/gms/internal/ads/zzgfc;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgfb;->zzc(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzd:Lcom/google/android/gms/internal/ads/zzeie;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzegz;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzegz;-><init>(Lcom/google/android/gms/internal/ads/zzeie;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzb:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgfb;->zzc(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void
.end method

.method public final zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcbx;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzehm;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzehm;->zzp(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzcbx;)V

    return-void
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzblf;->zza:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Split request is disabled."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzger;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehh;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzehh;-><init>(Lcom/google/android/gms/internal/ads/zzehm;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzehm;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzehj;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "URL to be removed not found for cache key: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzger;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzger;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzj(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzccb;Lcom/google/android/gms/internal/ads/zzfol;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgfb;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcce;->zzc()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgfb;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lorg/json/JSONObject;

    .line 3
    iget-object v4, p3, Lcom/google/android/gms/internal/ads/zzccb;->zzh:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzehj;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgfb;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcce;

    move-object v1, p2

    move-object v5, v0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzehj;-><init>(Lcom/google/android/gms/internal/ads/zzcce;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfol;)V

    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzehm;->zzn(Lcom/google/android/gms/internal/ads/zzehj;)V

    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfxr;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method
