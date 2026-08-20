.class public final Lcom/google/android/gms/internal/ads/zzelc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcxy;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdwp;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfjg;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzchu;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbqf;

.field private final zzh:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcxy;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdwp;Lcom/google/android/gms/internal/ads/zzfjg;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzbqf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzb:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelc;->zza:Lcom/google/android/gms/internal/ads/zzcxy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzelc;->zze:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzc:Lcom/google/android/gms/internal/ads/zzdwp;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzd:Lcom/google/android/gms/internal/ads/zzfjg;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzf:Lcom/google/android/gms/internal/ads/zzchu;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzg:Lcom/google/android/gms/internal/ads/zzbqf;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjj;->zzhW:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object p1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzh:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdwt;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzger;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzela;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzela;-><init>(Lcom/google/android/gms/internal/ads/zzelc;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzdwt;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelc;->zze:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzger;->zzn(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgdy;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzelb;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>(Lcom/google/android/gms/internal/ads/zzdwt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelc;->zze:Ljava/util/concurrent/Executor;

    .line 3
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgfb;->zzc(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfil;->zzt:Lcom/google/android/gms/internal/ads/zzfiq;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfiq;->zza:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzdwt;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzelc;->zzc:Lcom/google/android/gms/internal/ads/zzdwp;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzelc;->zzd:Lcom/google/android/gms/internal/ads/zzfjg;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfjg;->zze:Lcom/google/android/gms/ads/internal/client/zzq;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfix;->zzb:Lcom/google/android/gms/internal/ads/zzfiw;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzfio;

    .line 2
    invoke-virtual {v2, v3, v9, v4}, Lcom/google/android/gms/internal/ads/zzdwp;->zza(Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfio;)Lcom/google/android/gms/internal/ads/zzcno;

    move-result-object v10

    .line 3
    iget-boolean v2, v9, Lcom/google/android/gms/internal/ads/zzfil;->zzX:Z

    invoke-interface {v10, v2}, Lcom/google/android/gms/internal/ads/zzcno;->zzab(Z)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzelc;->zzb:Landroid/content/Context;

    .line 2
    move-object v3, v10

    check-cast v3, Landroid/view/View;

    move-object/from16 v4, p3

    .line 4
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzdwt;->zza(Landroid/content/Context;Landroid/view/View;)V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzcig;

    .line 5
    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzcig;-><init>()V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzelc;->zza:Lcom/google/android/gms/internal/ads/zzcxy;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzdbc;

    const/4 v14, 0x0

    invoke-direct {v13, v1, v9, v14}, Lcom/google/android/gms/internal/ads/zzdbc;-><init>(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/gms/internal/ads/zzdmz;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzele;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzelc;->zzf:Lcom/google/android/gms/internal/ads/zzchu;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzelc;->zzd:Lcom/google/android/gms/internal/ads/zzfjg;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzelc;->zzh:Z

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzelc;->zzg:Lcom/google/android/gms/internal/ads/zzbqf;

    move-object v1, v8

    move-object v3, v11

    move-object/from16 v4, p1

    move-object/from16 v16, v5

    move-object v5, v10

    move-object v14, v8

    move-object/from16 v8, v16

    .line 6
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzele;-><init>(Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzcno;Lcom/google/android/gms/internal/ads/zzfjg;ZLcom/google/android/gms/internal/ads/zzbqf;)V

    invoke-direct {v15, v14, v10}, Lcom/google/android/gms/internal/ads/zzdmz;-><init>(Lcom/google/android/gms/internal/ads/zzdoe;Lcom/google/android/gms/internal/ads/zzcno;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcxw;

    iget v2, v9, Lcom/google/android/gms/internal/ads/zzfil;->zzab:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcxw;-><init>(I)V

    .line 7
    invoke-virtual {v12, v13, v15, v1}, Lcom/google/android/gms/internal/ads/zzcxy;->zza(Lcom/google/android/gms/internal/ads/zzdbc;Lcom/google/android/gms/internal/ads/zzdmz;Lcom/google/android/gms/internal/ads/zzcxw;)Lcom/google/android/gms/internal/ads/zzcxv;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcxv;->zzj()Lcom/google/android/gms/internal/ads/zzdwo;

    move-result-object v2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzelc;->zzh:Z

    if-eqz v3, :cond_0

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzelc;->zzg:Lcom/google/android/gms/internal/ads/zzbqf;

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v10, v3, v14}, Lcom/google/android/gms/internal/ads/zzdwo;->zzi(Lcom/google/android/gms/internal/ads/zzcno;ZLcom/google/android/gms/internal/ads/zzbqf;)V

    .line 10
    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzcig;->zzd(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcxv;->zzc()Lcom/google/android/gms/internal/ads/zzdff;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeky;

    invoke-direct {v3, v10}, Lcom/google/android/gms/internal/ads/zzeky;-><init>(Lcom/google/android/gms/internal/ads/zzcno;)V

    .line 12
    sget-object v4, Lcom/google/android/gms/internal/ads/zzcib;->zzf:Lcom/google/android/gms/internal/ads/zzgfc;

    .line 13
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdjx;->zzj(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcxv;->zzj()Lcom/google/android/gms/internal/ads/zzdwo;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzfil;->zzt:Lcom/google/android/gms/internal/ads/zzfiq;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzfiq;->zzb:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfiq;->zza:Ljava/lang/String;

    .line 15
    invoke-static {v10, v3, v2}, Lcom/google/android/gms/internal/ads/zzdwo;->zzj(Lcom/google/android/gms/internal/ads/zzcno;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzekz;

    invoke-direct {v3, v0, v10, v9, v1}, Lcom/google/android/gms/internal/ads/zzekz;-><init>(Lcom/google/android/gms/internal/ads/zzelc;Lcom/google/android/gms/internal/ads/zzcno;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzcxv;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzelc;->zze:Ljava/util/concurrent/Executor;

    .line 16
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzger;->zzm(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfxt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v1

    return-object v1
.end method
