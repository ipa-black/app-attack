.class public final Lcom/google/android/gms/internal/ads/zzdof;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgb;
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;
.implements Lcom/google/android/gms/internal/ads/zzdfh;


# instance fields
.field zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcno;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfil;

.field private final zze:Lcom/google/android/gms/internal/ads/zzchu;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbfg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcno;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzbfg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzc:Lcom/google/android/gms/internal/ads/zzcno;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzd:Lcom/google/android/gms/internal/ads/zzfil;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdof;->zze:Lcom/google/android/gms/internal/ads/zzchu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzf:Lcom/google/android/gms/internal/ads/zzbfg;

    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzc:Lcom/google/android/gms/internal/ads/zzcno;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjj;->zzeD:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzc:Lcom/google/android/gms/internal/ads/zzcno;

    .line 4
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcno;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final zzbE()V
    .locals 0

    return-void
.end method

.method public final zzbM()V
    .locals 0

    return-void
.end method

.method public final zzbs()V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final zzf(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdof;->zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method

.method public final zzl()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzc:Lcom/google/android/gms/internal/ads/zzcno;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjj;->zzeD:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzc:Lcom/google/android/gms/internal/ads/zzcno;

    .line 4
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcno;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final zzn()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzf:Lcom/google/android/gms/internal/ads/zzbfg;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfg;->zzh:Lcom/google/android/gms/internal/ads/zzbfg;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzf:Lcom/google/android/gms/internal/ads/zzbfg;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfg;->zzd:Lcom/google/android/gms/internal/ads/zzbfg;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfg;->zzk:Lcom/google/android/gms/internal/ads/zzbfg;

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzd:Lcom/google/android/gms/internal/ads/zzfil;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfil;->zzU:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzc:Lcom/google/android/gms/internal/ads/zzcno;

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzA()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzb:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzekn;->zze(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zze:Lcom/google/android/gms/internal/ads/zzchu;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzchu;->zzb:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzchu;->zzc:I

    new-instance v2, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzd:Lcom/google/android/gms/internal/ads/zzfil;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfil;->zzW:Lcom/google/android/gms/internal/ads/zzfjj;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjj;->zza()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzd:Lcom/google/android/gms/internal/ads/zzfil;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfil;->zzW:Lcom/google/android/gms/internal/ads/zzfjj;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjj;->zzb()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeko;->zzc:Lcom/google/android/gms/internal/ads/zzeko;

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzekp;->zzb:Lcom/google/android/gms/internal/ads/zzekp;

    move-object v10, v0

    move-object v9, v1

    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzd:Lcom/google/android/gms/internal/ads/zzfil;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfil;->zzZ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzekp;->zzd:Lcom/google/android/gms/internal/ads/zzekp;

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzekp;->zza:Lcom/google/android/gms/internal/ads/zzekp;

    .line 10
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzeko;->zza:Lcom/google/android/gms/internal/ads/zzeko;

    move-object v9, v0

    move-object v10, v1

    .line 11
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzA()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzc:Lcom/google/android/gms/internal/ads/zzcno;

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcno;->zzI()Landroid/webkit/WebView;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzd:Lcom/google/android/gms/internal/ads/zzfil;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzfil;->zzan:Ljava/lang/String;

    .line 13
    const-string v6, ""

    const-string v7, "javascript"

    invoke-interface/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzekn;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzekp;Lcom/google/android/gms/internal/ads/zzeko;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_3

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzA()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdof;->zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzc:Lcom/google/android/gms/internal/ads/zzcno;

    check-cast v2, Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzekn;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzc:Lcom/google/android/gms/internal/ads/zzcno;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdof;->zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcno;->zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzA()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdof;->zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzekn;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdof;->zzc:Lcom/google/android/gms/internal/ads/zzcno;

    .line 17
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcno;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method
