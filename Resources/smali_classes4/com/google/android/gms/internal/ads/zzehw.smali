.class public final Lcom/google/android/gms/internal/ads/zzehw;
.super Lcom/google/android/gms/internal/ads/zzcbq;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfau;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfas;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeie;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgfc;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzeib;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzccn;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfas;Lcom/google/android/gms/internal/ads/zzeib;Lcom/google/android/gms/internal/ads/zzeie;Lcom/google/android/gms/internal/ads/zzgfc;Lcom/google/android/gms/internal/ads/zzccn;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcbq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehw;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzb:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzc:Lcom/google/android/gms/internal/ads/zzfas;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzf:Lcom/google/android/gms/internal/ads/zzeib;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzd:Lcom/google/android/gms/internal/ads/zzeie;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzehw;->zze:Lcom/google/android/gms/internal/ads/zzgfc;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzg:Lcom/google/android/gms/internal/ads/zzccn;

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzcbu;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzv(Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzgei;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeho;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeho;-><init>(Lcom/google/android/gms/internal/ads/zzehw;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcib;->zza:Lcom/google/android/gms/internal/ads/zzgfc;

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzger;->zzn(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgdy;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzehv;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzehv;-><init>(Lcom/google/android/gms/internal/ads/zzehw;Lcom/google/android/gms/internal/ads/zzcbu;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcib;->zzf:Lcom/google/android/gms/internal/ads/zzgfc;

    .line 3
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzger;->zzr(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgen;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzehy;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcbj;->zza:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzcbj;->zzb:I

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcbj;->zzc:Landroid/os/Bundle;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 4
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzcbj;->zzd:[B

    const-string v5, ""

    iget-boolean v6, p1, Lcom/google/android/gms/internal/ads/zzcbj;->zze:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzehy;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzc:Lcom/google/android/gms/internal/ads/zzfas;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfbz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfbz;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfas;->zza(Lcom/google/android/gms/internal/ads/zzfbz;)Lcom/google/android/gms/internal/ads/zzfas;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfas;->zzb()Lcom/google/android/gms/internal/ads/zzfat;

    move-result-object v0

    iget-boolean v1, v7, Lcom/google/android/gms/internal/ads/zzehy;->zzf:Z

    if-eqz v1, :cond_4

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcbj;->zza:Ljava/lang/String;

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzblf;->zzc:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x3b

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfxq;->zzc(C)Lcom/google/android/gms/internal/ads/zzfxq;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfyr;->zzc(Lcom/google/android/gms/internal/ads/zzfxq;)Lcom/google/android/gms/internal/ads/zzfyr;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfyr;->zzd(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfat;->zza()Lcom/google/android/gms/internal/ads/zzezp;

    move-result-object p1

    .line 16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzezp;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzehu;

    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/zzehu;-><init>(Lcom/google/android/gms/internal/ads/zzehy;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehw;->zze:Lcom/google/android/gms/internal/ads/zzgfc;

    .line 17
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzger;->zzm(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfxt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    goto :goto_2

    .line 14
    :cond_4
    :goto_1
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzger;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    .line 18
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfat;->zzb()Lcom/google/android/gms/internal/ads/zzfnj;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehw;->zza:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzg:Lcom/google/android/gms/internal/ads/zzccn;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzeia;

    const-string v3, ""

    const/4 v6, 0x0

    move-object v1, v7

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzeia;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzccn;I[B)V

    .line 19
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfnd;->zzi:Lcom/google/android/gms/internal/ads/zzfnd;

    .line 20
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzfnb;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/ads/zzfna;->zze(Lcom/google/android/gms/internal/ads/zzfmm;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfna;->zza()Lcom/google/android/gms/internal/ads/zzfmo;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzehq;->zza:Lcom/google/android/gms/internal/ads/zzehq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehw;->zze:Lcom/google/android/gms/internal/ads/zzgfc;

    .line 21
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzger;->zzn(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgdy;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzcbu;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehw;->zzb(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzehw;->zzc(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzcbu;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzcbf;Lcom/google/android/gms/internal/ads/zzcbu;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzb:Lcom/google/android/gms/internal/ads/zzfau;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfaj;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzfaj;-><init>(Lcom/google/android/gms/internal/ads/zzcbf;I)V

    .line 2
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfau;->zza(Lcom/google/android/gms/internal/ads/zzfaj;)Lcom/google/android/gms/internal/ads/zzfau;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfau;->zzb()Lcom/google/android/gms/internal/ads/zzfav;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfav;->zzb()Lcom/google/android/gms/internal/ads/zzfnj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzehr;->zza:Lcom/google/android/gms/internal/ads/zzehr;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzehs;->zza:Lcom/google/android/gms/internal/ads/zzehs;

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfnd;->zze:Lcom/google/android/gms/internal/ads/zzfnd;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzger;->zzj()Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfnb;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeht;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzeht;-><init>(Lcom/google/android/gms/internal/ads/zzfav;)V

    .line 7
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfna;->zzf(Lcom/google/android/gms/internal/ads/zzgdy;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzfna;->zze(Lcom/google/android/gms/internal/ads/zzfmm;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfna;->zzf(Lcom/google/android/gms/internal/ads/zzgdy;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfna;->zza()Lcom/google/android/gms/internal/ads/zzfmo;

    move-result-object p1

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzehw;->zzc(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzcbu;)V

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbkz;->zzd:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzd:Lcom/google/android/gms/internal/ads/zzeie;

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzehp;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzehp;-><init>(Lcom/google/android/gms/internal/ads/zzeie;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehw;->zze:Lcom/google/android/gms/internal/ads/zzgfc;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgfb;->zzc(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void
.end method
