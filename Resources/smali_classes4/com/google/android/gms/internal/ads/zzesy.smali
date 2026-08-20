.class public final Lcom/google/android/gms/internal/ads/zzesy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfje;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcpj;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeso;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfoy;

.field private zzf:Lcom/google/android/gms/internal/ads/zzdbb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcpj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzeso;Lcom/google/android/gms/internal/ads/zzfje;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzb:Lcom/google/android/gms/internal/ads/zzcpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzc:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzd:Lcom/google/android/gms/internal/ads/zzeso;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzesy;->zza:Lcom/google/android/gms/internal/ads/zzfje;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcpj;->zzz()Lcom/google/android/gms/internal/ads/zzfoy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesy;->zze:Lcom/google/android/gms/internal/ads/zzfoy;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzeso;->zzd()Lcom/google/android/gms/internal/ads/zzesb;

    move-result-object p1

    .line 2
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzfje;->zzu(Lcom/google/android/gms/internal/ads/zzesb;)Lcom/google/android/gms/internal/ads/zzfje;

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzesy;)Lcom/google/android/gms/internal/ads/zzcpj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzb:Lcom/google/android/gms/internal/ads/zzcpj;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzesy;)Lcom/google/android/gms/internal/ads/zzeso;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzd:Lcom/google/android/gms/internal/ads/zzeso;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzesy;)Lcom/google/android/gms/internal/ads/zzfoy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzesy;->zze:Lcom/google/android/gms/internal/ads/zzfoy;

    return-object p0
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzf:Lcom/google/android/gms/internal/ads/zzdbb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbb;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/client/zzl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzesp;Lcom/google/android/gms/internal/ads/zzesq;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzD(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    const-string p1, "Failed to load the ad because app ID is missing."

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzb:Lcom/google/android/gms/internal/ads/zzcpj;

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcpj;->zzB()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzest;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzest;-><init>(Lcom/google/android/gms/internal/ads/zzesy;)V

    .line 32
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 1
    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzb:Lcom/google/android/gms/internal/ads/zzcpj;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcpj;->zzB()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzesu;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzesu;-><init>(Lcom/google/android/gms/internal/ads/zzesy;)V

    .line 4
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzc:Landroid/content/Context;

    .line 5
    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzf:Z

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzfka;->zza(Landroid/content/Context;Z)V

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjj;->zzhX:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzf:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzb:Lcom/google/android/gms/internal/ads/zzcpj;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcpj;->zzk()Lcom/google/android/gms/internal/ads/zzece;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzece;->zzm(Z)V

    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/ads/zzess;

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzess;->zza:I

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzesy;->zza:Lcom/google/android/gms/internal/ads/zzfje;

    .line 9
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzfje;->zzE(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/internal/ads/zzfje;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzfje;->zzz(I)Lcom/google/android/gms/internal/ads/zzfje;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfje;->zzG()Lcom/google/android/gms/internal/ads/zzfjg;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzc:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfov;->zzf(Lcom/google/android/gms/internal/ads/zzfjg;)I

    move-result v1

    const/16 v2, 0x8

    .line 10
    invoke-static {p3, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfok;->zzb(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/internal/ads/zzfol;

    move-result-object v7

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzfjg;->zzn:Lcom/google/android/gms/ads/internal/client/zzcb;

    if-eqz p3, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzd:Lcom/google/android/gms/internal/ads/zzeso;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeso;->zzd()Lcom/google/android/gms/internal/ads/zzesb;

    move-result-object v1

    .line 11
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzesb;->zzi(Lcom/google/android/gms/ads/internal/client/zzcb;)V

    :cond_4
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzb:Lcom/google/android/gms/internal/ads/zzcpj;

    .line 12
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcpj;->zzh()Lcom/google/android/gms/internal/ads/zzdor;

    move-result-object p3

    new-instance v1, Lcom/google/android/gms/internal/ads/zzddx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzddx;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzc:Landroid/content/Context;

    .line 13
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzddx;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzddx;

    .line 14
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzddx;->zzf(Lcom/google/android/gms/internal/ads/zzfjg;)Lcom/google/android/gms/internal/ads/zzddx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzddx;->zzg()Lcom/google/android/gms/internal/ads/zzddz;

    move-result-object p2

    .line 15
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzdor;->zzf(Lcom/google/android/gms/internal/ads/zzddz;)Lcom/google/android/gms/internal/ads/zzdor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdjy;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdjy;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzd:Lcom/google/android/gms/internal/ads/zzeso;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeso;->zzd()Lcom/google/android/gms/internal/ads/zzesb;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzb:Lcom/google/android/gms/internal/ads/zzcpj;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcpj;->zzB()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/google/android/gms/internal/ads/zzdjy;->zzk(Lcom/google/android/gms/internal/ads/zzasm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdjy;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdjy;->zzn()Lcom/google/android/gms/internal/ads/zzdka;

    move-result-object p2

    .line 17
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzdor;->zze(Lcom/google/android/gms/internal/ads/zzdka;)Lcom/google/android/gms/internal/ads/zzdor;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzd:Lcom/google/android/gms/internal/ads/zzeso;

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzeso;->zzc()Lcom/google/android/gms/internal/ads/zzdon;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzdor;->zzd(Lcom/google/android/gms/internal/ads/zzdon;)Lcom/google/android/gms/internal/ads/zzdor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcyi;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzcyi;-><init>(Landroid/view/ViewGroup;)V

    .line 19
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzdor;->zzc(Lcom/google/android/gms/internal/ads/zzcyi;)Lcom/google/android/gms/internal/ads/zzdor;

    .line 20
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzdor;->zzg()Lcom/google/android/gms/internal/ads/zzdos;

    move-result-object v8

    .line 21
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbks;->zzc:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 22
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdos;->zzf()Lcom/google/android/gms/internal/ads/zzfow;

    move-result-object p2

    .line 23
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzfow;->zzh(I)Lcom/google/android/gms/internal/ads/zzfow;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzp:Ljava/lang/String;

    .line 24
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfow;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfow;

    move-object v6, p2

    goto :goto_1

    :cond_5
    move-object v6, v1

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzb:Lcom/google/android/gms/internal/ads/zzcpj;

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcpj;->zzx()Lcom/google/android/gms/internal/ads/zzfkc;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfkc;->zzc(I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdbb;

    .line 26
    sget-object p2, Lcom/google/android/gms/internal/ads/zzcib;->zza:Lcom/google/android/gms/internal/ads/zzgfc;

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhex;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzb:Lcom/google/android/gms/internal/ads/zzcpj;

    .line 28
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcpj;->zzC()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdos;->zza()Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdbu;->zzj()Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdbu;->zzi(Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v1

    invoke-direct {p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzdbb;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzgfb;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzf:Lcom/google/android/gms/internal/ads/zzdbb;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzesx;

    move-object v3, p2

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzesx;-><init>(Lcom/google/android/gms/internal/ads/zzesy;Lcom/google/android/gms/internal/ads/zzesq;Lcom/google/android/gms/internal/ads/zzfow;Lcom/google/android/gms/internal/ads/zzfol;Lcom/google/android/gms/internal/ads/zzdos;)V

    .line 29
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdbb;->zze(Lcom/google/android/gms/internal/ads/zzgen;)V

    return v0
.end method

.method final synthetic zzf()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzd:Lcom/google/android/gms/internal/ads/zzeso;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeso;->zza()Lcom/google/android/gms/internal/ads/zzdeq;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfkg;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdeq;->zza(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zzg()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesy;->zzd:Lcom/google/android/gms/internal/ads/zzeso;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeso;->zza()Lcom/google/android/gms/internal/ads/zzdeq;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfkg;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdeq;->zza(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
