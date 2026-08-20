.class final Lcom/google/android/gms/internal/ads/zzepg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdoe;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdwp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfjg;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzchu;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfil;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzgfb;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcno;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzbqf;

.field private final zzi:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdwp;Lcom/google/android/gms/internal/ads/zzfjg;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzcno;Lcom/google/android/gms/internal/ads/zzbqf;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepg;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepg;->zzb:Lcom/google/android/gms/internal/ads/zzdwp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzepg;->zzc:Lcom/google/android/gms/internal/ads/zzfjg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzepg;->zzd:Lcom/google/android/gms/internal/ads/zzchu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzepg;->zze:Lcom/google/android/gms/internal/ads/zzfil;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzepg;->zzf:Lcom/google/android/gms/internal/ads/zzgfb;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzepg;->zzg:Lcom/google/android/gms/internal/ads/zzcno;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzepg;->zzh:Lcom/google/android/gms/internal/ads/zzbqf;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzepg;->zzi:Z

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdfa;)V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzepg;->zzf:Lcom/google/android/gms/internal/ads/zzgfb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzger;->zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdvu;

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzepg;->zze:Lcom/google/android/gms/internal/ads/zzfil;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzepg;->zzg:Lcom/google/android/gms/internal/ads/zzcno;

    .line 2
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcno;->zzaD()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzepg;->zzg:Lcom/google/android/gms/internal/ads/zzcno;

    :goto_0
    move-object v11, v2

    goto :goto_2

    .line 3
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjj;->zzaG:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object v3

    .line 3
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzepg;->zzg:Lcom/google/android/gms/internal/ads/zzcno;

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzepg;->zzb:Lcom/google/android/gms/internal/ads/zzdwp;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzepg;->zzc:Lcom/google/android/gms/internal/ads/zzfjg;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzfjg;->zze:Lcom/google/android/gms/ads/internal/client/zzq;

    const/4 v6, 0x0

    .line 5
    invoke-virtual {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/zzdwp;->zza(Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfio;)Lcom/google/android/gms/internal/ads/zzcno;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvu;->zzg()Lcom/google/android/gms/internal/ads/zzdml;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzbqt;->zzb(Lcom/google/android/gms/internal/ads/zzcno;Lcom/google/android/gms/internal/ads/zzbqs;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdwt;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzdwt;-><init>()V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzepg;->zza:Landroid/content/Context;

    .line 5
    move-object v8, v3

    check-cast v8, Landroid/view/View;

    .line 7
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzdwt;->zza(Landroid/content/Context;Landroid/view/View;)V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvu;->zzl()Lcom/google/android/gms/internal/ads/zzdwo;

    move-result-object v7

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzepg;->zzi:Z

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzepg;->zzh:Lcom/google/android/gms/internal/ads/zzbqf;

    goto :goto_1

    :cond_2
    move-object v8, v6

    .line 9
    :goto_1
    invoke-virtual {v7, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzdwo;->zzi(Lcom/google/android/gms/internal/ads/zzcno;ZLcom/google/android/gms/internal/ads/zzbqf;)V

    .line 10
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcno;->zzP()Lcom/google/android/gms/internal/ads/zzcpb;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzepe;

    invoke-direct {v8, v5, v3}, Lcom/google/android/gms/internal/ads/zzepe;-><init>(Lcom/google/android/gms/internal/ads/zzdwt;Lcom/google/android/gms/internal/ads/zzcno;)V

    .line 11
    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/zzcpb;->zzA(Lcom/google/android/gms/internal/ads/zzcoz;)V

    .line 12
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcno;->zzP()Lcom/google/android/gms/internal/ads/zzcpb;

    move-result-object v5

    new-instance v7, Lcom/google/android/gms/internal/ads/zzepf;

    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/ads/zzepf;-><init>(Lcom/google/android/gms/internal/ads/zzcno;)V

    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/ads/zzcpb;->zzG(Lcom/google/android/gms/internal/ads/zzcpa;)V

    .line 13
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfil;->zzt:Lcom/google/android/gms/internal/ads/zzfiq;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzfiq;->zzb:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfiq;->zza:Ljava/lang/String;

    invoke-interface {v3, v5, v2, v6}, Lcom/google/android/gms/internal/ads/zzcno;->zzad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcnz; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v3

    .line 15
    :goto_2
    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/ads/zzcno;->zzap(Z)V

    .line 16
    new-instance v2, Lcom/google/android/gms/ads/internal/zzj;

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzepg;->zzi:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzepg;->zzh:Lcom/google/android/gms/internal/ads/zzbqf;

    .line 17
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzbqf;->zze(Z)Z

    move-result v3

    move v13, v3

    goto :goto_3

    :cond_3
    move v13, v5

    .line 18
    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzepg;->zza:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzE(Landroid/content/Context;)Z

    move-result v14

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzepg;->zzi:Z

    if-eqz v3, :cond_4

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzepg;->zzh:Lcom/google/android/gms/internal/ads/zzbqf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbqf;->zzd()Z

    move-result v5

    :cond_4
    move v15, v5

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzepg;->zzh:Lcom/google/android/gms/internal/ads/zzbqf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbqf;->zza()F

    move-result v3

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    move/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzepg;->zze:Lcom/google/android/gms/internal/ads/zzfil;

    .line 19
    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzfil;->zzP:Z

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzfil;->zzQ:Z

    const/16 v17, -0x1

    move-object v12, v2

    move/from16 v18, p1

    move/from16 v19, v5

    move/from16 v20, v3

    invoke-direct/range {v12 .. v20}, Lcom/google/android/gms/ads/internal/zzj;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_6

    .line 20
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzdfa;->zzf()V

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzi()Lcom/google/android/gms/ads/internal/overlay/zzm;

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvu;->zzj()Lcom/google/android/gms/internal/ads/zzdnt;

    move-result-object v9

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzepg;->zze:Lcom/google/android/gms/internal/ads/zzfil;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzfil;->zzR:I

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzepg;->zzd:Lcom/google/android/gms/internal/ads/zzchu;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzfil;->zzC:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfil;->zzt:Lcom/google/android/gms/internal/ads/zzfiq;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfiq;->zzb:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfiq;->zza:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzepg;->zzc:Lcom/google/android/gms/internal/ads/zzfjg;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfjg;->zzf:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v7, v3

    move-object v15, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v19, p3

    invoke-direct/range {v7 .. v19}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/ads/internal/overlay/zzz;Lcom/google/android/gms/internal/ads/zzcno;ILcom/google/android/gms/internal/ads/zzchu;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdfa;)V

    move-object/from16 v0, p2

    .line 23
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void

    :catch_0
    move-exception v0

    .line 13
    const-string v2, ""

    .line 14
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcho;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
