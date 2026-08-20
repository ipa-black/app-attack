.class final Lcom/google/android/gms/internal/ads/zzgzr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhag;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgzn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhax;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgxq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhax;Lcom/google/android/gms/internal/ads/zzgxq;Lcom/google/android/gms/internal/ads/zzgzn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzb:Lcom/google/android/gms/internal/ads/zzhax;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzgxq;->zzh(Lcom/google/android/gms/internal/ads/zzgzn;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzd:Lcom/google/android/gms/internal/ads/zzgxq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zza:Lcom/google/android/gms/internal/ads/zzgzn;

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/ads/zzhax;Lcom/google/android/gms/internal/ads/zzgxq;Lcom/google/android/gms/internal/ads/zzgzn;)Lcom/google/android/gms/internal/ads/zzgzr;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzr;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzr;-><init>(Lcom/google/android/gms/internal/ads/zzhax;Lcom/google/android/gms/internal/ads/zzgxq;Lcom/google/android/gms/internal/ads/zzgzn;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzb:Lcom/google/android/gms/internal/ads/zzhax;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhax;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhax;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzd:Lcom/google/android/gms/internal/ads/zzgxq;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgxu;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzb:Lcom/google/android/gms/internal/ads/zzhax;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhax;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzd:Lcom/google/android/gms/internal/ads/zzgxq;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgxu;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zza:Lcom/google/android/gms/internal/ads/zzgzn;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgyd;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyd;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaC()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgzn;->zzaN()Lcom/google/android/gms/internal/ads/zzgzm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgzm;->zzam()Lcom/google/android/gms/internal/ads/zzgzn;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzb:Lcom/google/android/gms/internal/ads/zzhax;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhax;->zzm(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzd:Lcom/google/android/gms/internal/ads/zzgxq;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxq;->zze(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzb:Lcom/google/android/gms/internal/ads/zzhax;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhai;->zzF(Lcom/google/android/gms/internal/ads/zzhax;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzd:Lcom/google/android/gms/internal/ads/zzgxq;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhai;->zzE(Lcom/google/android/gms/internal/ads/zzgxq;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzgxp;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzb:Lcom/google/android/gms/internal/ads/zzhax;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzd:Lcom/google/android/gms/internal/ads/zzgxq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhax;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgxq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgxu;

    move-result-object v3

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzy;->zzc()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_b

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzy;->zzd()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_3

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zza:Lcom/google/android/gms/internal/ads/zzgzn;

    ushr-int/lit8 v4, v4, 0x3

    .line 12
    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/ads/zzgxq;->zzc(Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgzn;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 13
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/ads/zzgxq;->zzf(Lcom/google/android/gms/internal/ads/zzgzy;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgxu;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/ads/zzhax;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzy;)Z

    move-result v4

    goto :goto_1

    .line 15
    :cond_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzy;->zzO()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-nez v4, :cond_0

    .line 17
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzhax;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, v6

    move-object v6, v4

    .line 4
    :cond_4
    :goto_2
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzy;->zzc()I

    move-result v8

    if-ne v8, v5, :cond_5

    goto :goto_3

    .line 11
    :cond_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzy;->zzd()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    .line 8
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzy;->zzj()I

    move-result v7

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zza:Lcom/google/android/gms/internal/ads/zzgzn;

    .line 9
    invoke-virtual {v1, p3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgxq;->zzc(Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgzn;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_6
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    if-eqz v4, :cond_7

    .line 5
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/ads/zzgxq;->zzf(Lcom/google/android/gms/internal/ads/zzgzy;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgxu;)V

    goto :goto_2

    .line 6
    :cond_7
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzy;->zzp()Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object v6

    goto :goto_2

    .line 7
    :cond_8
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzy;->zzO()Z

    move-result v8

    if-nez v8, :cond_4

    .line 4
    :goto_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgzy;->zzd()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_a

    if-eqz v6, :cond_0

    if-eqz v4, :cond_9

    .line 10
    invoke-virtual {v1, v6, v4, p3, v3}, Lcom/google/android/gms/internal/ads/zzgxq;->zzg(Lcom/google/android/gms/internal/ads/zzgwv;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgxu;)V

    goto :goto_0

    .line 11
    :cond_9
    invoke-virtual {v0, v2, v7, v6}, Lcom/google/android/gms/internal/ads/zzhax;->zzk(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgwv;)V

    goto :goto_0

    .line 16
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyp;->zzb()Lcom/google/android/gms/internal/ads/zzgyp;

    move-result-object p2

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_b
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzhax;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzhax;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    throw p2
.end method

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzgwh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgyd;

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzgyd;->zzc:Lcom/google/android/gms/internal/ads/zzhay;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhay;->zzc()Lcom/google/android/gms/internal/ads/zzhay;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhay;->zzf()Lcom/google/android/gms/internal/ads/zzhay;

    move-result-object p3

    .line 2
    iput-object p3, p2, Lcom/google/android/gms/internal/ads/zzgyd;->zzc:Lcom/google/android/gms/internal/ads/zzhay;

    .line 3
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgya;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzb:Lcom/google/android/gms/internal/ads/zzhax;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhax;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzb:Lcom/google/android/gms/internal/ads/zzhax;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzhax;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzc:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzd:Lcom/google/android/gms/internal/ads/zzgxq;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgxu;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzd:Lcom/google/android/gms/internal/ads/zzgxq;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgxq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgxu;

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzd:Lcom/google/android/gms/internal/ads/zzgxq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgxu;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgzr;->zzd:Lcom/google/android/gms/internal/ads/zzgxq;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgxq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgxu;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
