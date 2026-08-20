.class final Lcom/google/android/gms/internal/ads/zzemy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdoe;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzchu;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgfb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfil;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcno;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfjg;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbqf;

.field private final zzh:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzcno;Lcom/google/android/gms/internal/ads/zzfjg;ZLcom/google/android/gms/internal/ads/zzbqf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemy;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemy;->zzb:Lcom/google/android/gms/internal/ads/zzchu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemy;->zzc:Lcom/google/android/gms/internal/ads/zzgfb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemy;->zzd:Lcom/google/android/gms/internal/ads/zzfil;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzemy;->zze:Lcom/google/android/gms/internal/ads/zzcno;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzemy;->zzf:Lcom/google/android/gms/internal/ads/zzfjg;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzemy;->zzg:Lcom/google/android/gms/internal/ads/zzbqf;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzemy;->zzh:Z

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdfa;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzemy;->zzc:Lcom/google/android/gms/internal/ads/zzgfb;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzger;->zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzemy;->zze:Lcom/google/android/gms/internal/ads/zzcno;

    const/4 v3, 0x1

    .line 2
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzcno;->zzap(Z)V

    .line 3
    new-instance v2, Lcom/google/android/gms/ads/internal/zzj;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzemy;->zzh:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzemy;->zzg:Lcom/google/android/gms/internal/ads/zzbqf;

    .line 4
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzbqf;->zze(Z)Z

    move-result v4

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    .line 5
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzemy;->zza:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzs;->zzE(Landroid/content/Context;)Z

    move-result v7

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzemy;->zzh:Z

    if-eqz v4, :cond_1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzemy;->zzg:Lcom/google/android/gms/internal/ads/zzbqf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbqf;->zzd()Z

    move-result v5

    :cond_1
    move v8, v5

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzemy;->zzg:Lcom/google/android/gms/internal/ads/zzbqf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbqf;->zza()F

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move v9, v4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzemy;->zzd:Lcom/google/android/gms/internal/ads/zzfil;

    .line 6
    iget-boolean v11, v4, Lcom/google/android/gms/internal/ads/zzfil;->zzP:Z

    const/4 v12, 0x0

    const/4 v10, -0x1

    move-object v4, v2

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v10, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/ads/internal/zzj;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_3

    .line 7
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzdfa;->zzf()V

    .line 8
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzi()Lcom/google/android/gms/ads/internal/overlay/zzm;

    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdmw;->zzj()Lcom/google/android/gms/internal/ads/zzdnt;

    move-result-object v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzemy;->zze:Lcom/google/android/gms/internal/ads/zzcno;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzemy;->zzd:Lcom/google/android/gms/internal/ads/zzfil;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzfil;->zzR:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzemy;->zzb:Lcom/google/android/gms/internal/ads/zzchu;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfil;->zzC:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfil;->zzt:Lcom/google/android/gms/internal/ads/zzfiq;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzfiq;->zzb:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzfiq;->zza:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzemy;->zzf:Lcom/google/android/gms/internal/ads/zzfjg;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfjg;->zzf:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v15

    move-object v12, v2

    move-object v2, v15

    move-object v15, v1

    move-object/from16 v16, p3

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/ads/internal/overlay/zzz;Lcom/google/android/gms/internal/ads/zzcno;ILcom/google/android/gms/internal/ads/zzchu;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdfa;)V

    move-object/from16 v1, p2

    .line 10
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
