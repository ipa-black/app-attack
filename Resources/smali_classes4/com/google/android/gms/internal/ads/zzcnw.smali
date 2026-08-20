.class public final synthetic Lcom/google/android/gms/internal/ads/zzcnw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfyu;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcpd;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Z

.field public final synthetic zze:Z

.field public final synthetic zzf:Lcom/google/android/gms/internal/ads/zzapj;

.field public final synthetic zzg:Lcom/google/android/gms/internal/ads/zzbki;

.field public final synthetic zzh:Lcom/google/android/gms/internal/ads/zzchu;

.field public final synthetic zzi:Lcom/google/android/gms/ads/internal/zzl;

.field public final synthetic zzj:Lcom/google/android/gms/ads/internal/zza;

.field public final synthetic zzk:Lcom/google/android/gms/internal/ads/zzbew;

.field public final synthetic zzl:Lcom/google/android/gms/internal/ads/zzfil;

.field public final synthetic zzm:Lcom/google/android/gms/internal/ads/zzfio;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcpd;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzapj;Lcom/google/android/gms/internal/ads/zzbki;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzbjy;Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbew;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfio;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnw;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnw;->zzb:Lcom/google/android/gms/internal/ads/zzcpd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcnw;->zzc:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzcnw;->zzd:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzcnw;->zze:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcnw;->zzf:Lcom/google/android/gms/internal/ads/zzapj;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcnw;->zzg:Lcom/google/android/gms/internal/ads/zzbki;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcnw;->zzh:Lcom/google/android/gms/internal/ads/zzchu;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcnw;->zzi:Lcom/google/android/gms/ads/internal/zzl;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzcnw;->zzj:Lcom/google/android/gms/ads/internal/zza;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzcnw;->zzk:Lcom/google/android/gms/internal/ads/zzbew;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzcnw;->zzl:Lcom/google/android/gms/internal/ads/zzfil;

    iput-object p14, p0, Lcom/google/android/gms/internal/ads/zzcnw;->zzm:Lcom/google/android/gms/internal/ads/zzfio;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcnw;->zza:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcnw;->zzb:Lcom/google/android/gms/internal/ads/zzcpd;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzcnw;->zzc:Ljava/lang/String;

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzcnw;->zzd:Z

    iget-boolean v15, v1, Lcom/google/android/gms/internal/ads/zzcnw;->zze:Z

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcnw;->zzf:Lcom/google/android/gms/internal/ads/zzapj;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzcnw;->zzg:Lcom/google/android/gms/internal/ads/zzbki;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzcnw;->zzh:Lcom/google/android/gms/internal/ads/zzchu;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzcnw;->zzi:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzcnw;->zzj:Lcom/google/android/gms/ads/internal/zza;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzcnw;->zzk:Lcom/google/android/gms/internal/ads/zzbew;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzcnw;->zzl:Lcom/google/android/gms/internal/ads/zzfil;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzcnw;->zzm:Lcom/google/android/gms/internal/ads/zzfio;

    const/16 v2, 0x108

    :try_start_0
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcod;

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zzcoh;->zza:I

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpc;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcpc;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoh;

    const/16 v16, 0x0

    move-object/from16 v17, v2

    move-object v2, v0

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v7

    move v7, v15

    move-object/from16 v19, v11

    move-object/from16 v11, v16

    move-object/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v17

    .line 4
    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/internal/ads/zzcoh;-><init>(Lcom/google/android/gms/internal/ads/zzcpc;Lcom/google/android/gms/internal/ads/zzcpd;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzapj;Lcom/google/android/gms/internal/ads/zzbki;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzbjy;Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbew;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfio;)V

    move-object/from16 v2, v18

    .line 2
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcod;-><init>(Lcom/google/android/gms/internal/ads/zzcno;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzq()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object v0

    move-object/from16 v4, v20

    move/from16 v3, v21

    .line 6
    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzd(Lcom/google/android/gms/internal/ads/zzcno;Lcom/google/android/gms/internal/ads/zzbew;Z)Lcom/google/android/gms/internal/ads/zzcnv;

    move-result-object v0

    .line 7
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzcno;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnn;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzcnn;-><init>(Lcom/google/android/gms/internal/ads/zzcno;)V

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzcno;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 10
    throw v0
.end method
