.class public final Lcom/google/android/gms/internal/ads/zzffg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfga;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfga;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfga;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzflo;

.field private final zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/ads/zzddw;

.field private final zzf:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfga;Lcom/google/android/gms/internal/ads/zzfga;Lcom/google/android/gms/internal/ads/zzflo;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffg;->zza:Lcom/google/android/gms/internal/ads/zzfga;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffg;->zzb:Lcom/google/android/gms/internal/ads/zzfga;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzffg;->zzc:Lcom/google/android/gms/internal/ads/zzflo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzffg;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzffg;->zzf:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzflb;Lcom/google/android/gms/internal/ads/zzfgb;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzflb;->zza:Lcom/google/android/gms/internal/ads/zzddw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffg;->zze:Lcom/google/android/gms/internal/ads/zzddw;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzflb;->zzc:Lcom/google/android/gms/internal/ads/zzdan;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzddw;->zzf()Lcom/google/android/gms/internal/ads/zzffx;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzflb;->zzc:Lcom/google/android/gms/internal/ads/zzdan;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdan;->zzo()Lcom/google/android/gms/internal/ads/zzffx;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzflb;->zza:Lcom/google/android/gms/internal/ads/zzddw;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzddw;->zzf()Lcom/google/android/gms/internal/ads/zzffx;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzffx;->zzbN(Lcom/google/android/gms/internal/ads/zzffx;)V

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzflb;->zzc:Lcom/google/android/gms/internal/ads/zzdan;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzger;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzddw;->zzb()Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzflb;->zzb:Lcom/google/android/gms/internal/ads/zzfix;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbu;->zzl(Lcom/google/android/gms/internal/ads/zzfix;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffg;->zza:Lcom/google/android/gms/internal/ads/zzfga;

    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzflb;->zza:Lcom/google/android/gms/internal/ads/zzddw;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzffq;

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzffq;->zzb(Lcom/google/android/gms/internal/ads/zzfgb;Lcom/google/android/gms/internal/ads/zzffz;Lcom/google/android/gms/internal/ads/zzddw;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized zza()Lcom/google/android/gms/internal/ads/zzddw;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffg;->zze:Lcom/google/android/gms/internal/ads/zzddw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzfgb;Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzffz;Lcom/google/android/gms/internal/ads/zzddw;Lcom/google/android/gms/internal/ads/zzffl;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p5, :cond_2

    .line 1
    iget-object v7, p5, Lcom/google/android/gms/internal/ads/zzffl;->zza:Lcom/google/android/gms/internal/ads/zzflc;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzfff;->zza:Lcom/google/android/gms/internal/ads/zzffz;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzfgb;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzfff;->zzc:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzfff;->zzd:Ljava/lang/String;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzfff;->zze:Ljava/util/concurrent/Executor;

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzfff;->zzf:Lcom/google/android/gms/ads/internal/client/zzw;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfff;-><init>(Lcom/google/android/gms/internal/ads/zzffz;Lcom/google/android/gms/internal/ads/zzfgb;Lcom/google/android/gms/ads/internal/client/zzl;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/client/zzw;Lcom/google/android/gms/internal/ads/zzflc;)V

    iget-object p2, p5, Lcom/google/android/gms/internal/ads/zzffl;->zzc:Lcom/google/android/gms/internal/ads/zzflb;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffg;->zze:Lcom/google/android/gms/internal/ads/zzddw;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffg;->zzc:Lcom/google/android/gms/internal/ads/zzflo;

    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/zzflo;->zze(Lcom/google/android/gms/internal/ads/zzfln;)V

    iget-object p2, p5, Lcom/google/android/gms/internal/ads/zzffl;->zzc:Lcom/google/android/gms/internal/ads/zzflb;

    .line 2
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzffg;->zzg(Lcom/google/android/gms/internal/ads/zzflb;Lcom/google/android/gms/internal/ads/zzfgb;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffg;->zzc:Lcom/google/android/gms/internal/ads/zzflo;

    .line 3
    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/zzflo;->zza(Lcom/google/android/gms/internal/ads/zzfln;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p2

    if-eqz p2, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffg;->zze:Lcom/google/android/gms/internal/ads/zzddw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzffc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzffc;-><init>(Lcom/google/android/gms/internal/ads/zzffg;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzffg;->zzf:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzger;->zzn(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgdy;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffg;->zzc:Lcom/google/android/gms/internal/ads/zzflo;

    .line 5
    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/zzflo;->zze(Lcom/google/android/gms/internal/ads/zzfln;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfgb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgb;->zzb:Lcom/google/android/gms/internal/ads/zzffy;

    iget-object p5, p5, Lcom/google/android/gms/internal/ads/zzffl;->zzb:Lcom/google/android/gms/internal/ads/zzccb;

    .line 6
    invoke-direct {p2, p1, p5}, Lcom/google/android/gms/internal/ads/zzfgb;-><init>(Lcom/google/android/gms/internal/ads/zzffy;Lcom/google/android/gms/internal/ads/zzccb;)V

    move-object p1, p2

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffg;->zza:Lcom/google/android/gms/internal/ads/zzfga;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzffq;

    .line 7
    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzffq;->zzb(Lcom/google/android/gms/internal/ads/zzfgb;Lcom/google/android/gms/internal/ads/zzffz;Lcom/google/android/gms/internal/ads/zzddw;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzffg;->zze:Lcom/google/android/gms/internal/ads/zzddw;

    return-object p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfgb;Lcom/google/android/gms/internal/ads/zzffz;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzffg;->zzf(Lcom/google/android/gms/internal/ads/zzfgb;Lcom/google/android/gms/internal/ads/zzffz;Lcom/google/android/gms/internal/ads/zzddw;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzffg;->zza()Lcom/google/android/gms/internal/ads/zzddw;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzfll;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfll;->zza:Lcom/google/android/gms/internal/ads/zzflb;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfll;->zzb:Lcom/google/android/gms/internal/ads/zzfln;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfff;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfr;->zza()Lcom/google/android/gms/internal/ads/zzbfl;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfk;->zza()Lcom/google/android/gms/internal/ads/zzbfj;

    move-result-object v2

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbfj;->zzd(I)Lcom/google/android/gms/internal/ads/zzbfj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfo;->zzd()Lcom/google/android/gms/internal/ads/zzbfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbfj;->zzb(Lcom/google/android/gms/internal/ads/zzbfo;)Lcom/google/android/gms/internal/ads/zzbfj;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Lcom/google/android/gms/internal/ads/zzbfj;)Lcom/google/android/gms/internal/ads/zzbfl;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbfr;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfll;->zza:Lcom/google/android/gms/internal/ads/zzflb;

    .line 9
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzflb;->zza:Lcom/google/android/gms/internal/ads/zzddw;

    .line 10
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzddw;->zzb()Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdbu;->zzc()Lcom/google/android/gms/internal/ads/zzdjs;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzdjs;->zzi(Lcom/google/android/gms/internal/ads/zzbfr;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfll;->zza:Lcom/google/android/gms/internal/ads/zzflb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzfgb;

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzffg;->zzg(Lcom/google/android/gms/internal/ads/zzflb;Lcom/google/android/gms/internal/ads/zzfgb;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzede;

    const/4 v0, 0x1

    const-string v1, "Empty prefetch"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzede;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized zzf(Lcom/google/android/gms/internal/ads/zzfgb;Lcom/google/android/gms/internal/ads/zzffz;Lcom/google/android/gms/internal/ads/zzddw;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfgb;->zzb:Lcom/google/android/gms/internal/ads/zzffy;

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/ads/zzffz;->zza(Lcom/google/android/gms/internal/ads/zzffy;)Lcom/google/android/gms/internal/ads/zzddv;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzffh;

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzffg;->zzd:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzffh;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzddv;->zza(Lcom/google/android/gms/internal/ads/zzffh;)Lcom/google/android/gms/internal/ads/zzddv;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzddv;->zzh()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzddw;

    .line 4
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzddw;->zzg()Lcom/google/android/gms/internal/ads/zzfjg;

    .line 5
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzddw;->zzg()Lcom/google/android/gms/internal/ads/zzfjg;

    .line 6
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzddw;->zzg()Lcom/google/android/gms/internal/ads/zzfjg;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfjg;->zzd:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/client/zzl;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/zzl;->zzx:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzddw;->zzg()Lcom/google/android/gms/internal/ads/zzfjg;

    move-result-object v1

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfjg;->zzd:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzfjg;->zzf:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzfjg;->zzj:Lcom/google/android/gms/ads/internal/client/zzw;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v13, v7, Lcom/google/android/gms/internal/ads/zzffg;->zzf:Ljava/util/concurrent/Executor;

    const/4 v15, 0x0

    move-object v8, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/zzfff;-><init>(Lcom/google/android/gms/internal/ads/zzffz;Lcom/google/android/gms/internal/ads/zzfgb;Lcom/google/android/gms/ads/internal/client/zzl;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/client/zzw;Lcom/google/android/gms/internal/ads/zzflc;)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzffg;->zzb:Lcom/google/android/gms/internal/ads/zzfga;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzffm;

    .line 9
    invoke-virtual {v1, v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzffm;->zzb(Lcom/google/android/gms/internal/ads/zzfgb;Lcom/google/android/gms/internal/ads/zzffz;Lcom/google/android/gms/internal/ads/zzddw;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzv(Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzgei;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/ads/zzffd;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzffd;-><init>(Lcom/google/android/gms/internal/ads/zzffg;Lcom/google/android/gms/internal/ads/zzfgb;Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzffz;Lcom/google/android/gms/internal/ads/zzddw;)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzffg;->zzf:Ljava/util/concurrent/Executor;

    .line 11
    invoke-static {v8, v9, v0}, Lcom/google/android/gms/internal/ads/zzger;->zzn(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgdy;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 6
    :cond_1
    :goto_0
    :try_start_1
    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzffg;->zze:Lcom/google/android/gms/internal/ads/zzddw;

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzffg;->zza:Lcom/google/android/gms/internal/ads/zzfga;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzffq;

    .line 7
    invoke-virtual {v1, v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzffq;->zzb(Lcom/google/android/gms/internal/ads/zzfgb;Lcom/google/android/gms/internal/ads/zzffz;Lcom/google/android/gms/internal/ads/zzddw;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
