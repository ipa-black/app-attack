.class public final Lcom/google/android/gms/internal/ads/zzcjm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcjx;

.field private final zzc:Landroid/view/ViewGroup;

.field private zzd:Lcom/google/android/gms/internal/ads/zzcjl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzcno;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zzc:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zzb:Lcom/google/android/gms/internal/ads/zzcjx;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcjl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    return-object v0
.end method

.method public final zzb(IIII)V
    .locals 1

    .line 1
    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcjl;->zzF(IIII)V

    :cond_0
    return-void
.end method

.method public final zzc(IIIIIZLcom/google/android/gms/internal/ads/zzcjw;Ljava/lang/Integer;)V
    .locals 14

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjm;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjm;->zzb:Lcom/google/android/gms/internal/ads/zzcjx;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjx;->zzo()Lcom/google/android/gms/internal/ads/zzbjw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbjw;->zza()Lcom/google/android/gms/internal/ads/zzbjy;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcjm;->zzb:Lcom/google/android/gms/internal/ads/zzcjx;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjx;->zzn()Lcom/google/android/gms/internal/ads/zzbjv;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "vpr2"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbjq;->zza(Lcom/google/android/gms/internal/ads/zzbjy;Lcom/google/android/gms/internal/ads/zzbjv;[Ljava/lang/String;)Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcjl;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzcjm;->zza:Landroid/content/Context;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcjm;->zzb:Lcom/google/android/gms/internal/ads/zzcjx;

    .line 4
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzcjx;->zzo()Lcom/google/android/gms/internal/ads/zzbjw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbjw;->zza()Lcom/google/android/gms/internal/ads/zzbjy;

    move-result-object v11

    move-object v6, v1

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/internal/ads/zzcjl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjx;IZLcom/google/android/gms/internal/ads/zzbjy;Lcom/google/android/gms/internal/ads/zzcjw;Ljava/lang/Integer;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjm;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcjm;->zzc:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    .line 5
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjm;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    .line 6
    invoke-virtual {v1, p1, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzcjl;->zzF(IIII)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjm;->zzb:Lcom/google/android/gms/internal/ads/zzcjx;

    .line 7
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzcjx;->zzB(Z)V

    return-void
.end method

.method public final zzd()V
    .locals 2

    .line 1
    const-string v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzo()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zzc:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 1

    .line 1
    const-string v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzu()V

    :cond_0
    return-void
.end method

.method public final zzf(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzC(I)V

    :cond_0
    return-void
.end method
