.class public final Lcom/google/android/gms/internal/ads/zzegn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field public zza:Lcom/google/android/gms/internal/ads/zzgfb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzefw;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfnj;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfjg;

.field private final zze:Lcom/google/android/gms/internal/ads/zzchu;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfoy;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfow;

.field private final zzh:Landroid/content/Context;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzgfc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzefw;Lcom/google/android/gms/internal/ads/zzfnj;Lcom/google/android/gms/internal/ads/zzfjg;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzfoy;Lcom/google/android/gms/internal/ads/zzfow;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgfc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzb:Lcom/google/android/gms/internal/ads/zzefw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzc:Lcom/google/android/gms/internal/ads/zzfnj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzd:Lcom/google/android/gms/internal/ads/zzfjg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegn;->zze:Lcom/google/android/gms/internal/ads/zzchu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzf:Lcom/google/android/gms/internal/ads/zzfoy;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzg:Lcom/google/android/gms/internal/ads/zzfow;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzh:Landroid/content/Context;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzi:Lcom/google/android/gms/internal/ads/zzgfc;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzccb;Lcom/google/android/gms/internal/ads/zzehy;)Lcom/google/android/gms/internal/ads/zzcbj;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzh:Landroid/content/Context;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzehy;->zzc:Ljava/util/Map;

    const-string v2, "Content-Type"

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzehy;->zze:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzehy;->zzc:Ljava/util/Map;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzccb;->zzb:Lcom/google/android/gms/internal/ads/zzchu;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzchu;->zza:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v2, "User-Agent"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzehy;->zza:Ljava/lang/String;

    iget v5, p2, Lcom/google/android/gms/internal/ads/zzehy;->zzb:I

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzehy;->zzc:Ljava/util/Map;

    new-instance v6, Landroid/os/Bundle;

    .line 5
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v7, p2, Lcom/google/android/gms/internal/ads/zzehy;->zzd:[B

    iget-boolean v8, p2, Lcom/google/android/gms/internal/ads/zzehy;->zzf:Z

    .line 8
    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzccb;->zzd:Ljava/lang/String;

    iget-object v10, p1, Lcom/google/android/gms/internal/ads/zzccb;->zzh:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzcbj;-><init>(Ljava/lang/String;ILandroid/os/Bundle;[BZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzccb;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcce;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzh:Landroid/content/Context;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfok;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfol;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeid;

    .line 2
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzccb;->zzg:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzg:Lcom/google/android/gms/internal/ads/zzfow;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzeid;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfow;Lcom/google/android/gms/internal/ads/zzfol;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzc:Lcom/google/android/gms/internal/ads/zzfnj;

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfnd;->zzh:Lcom/google/android/gms/internal/ads/zzfnd;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeic;

    invoke-direct {v3, p2, p3}, Lcom/google/android/gms/internal/ads/zzeic;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcce;)V

    .line 4
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzger;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfnb;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfna;->zze(Lcom/google/android/gms/internal/ads/zzfmm;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfna;->zza()Lcom/google/android/gms/internal/ads/zzfmo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzegm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzegm;-><init>(Lcom/google/android/gms/internal/ads/zzegn;Lcom/google/android/gms/internal/ads/zzccb;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzi:Lcom/google/android/gms/internal/ads/zzgfc;

    .line 8
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzger;->zzm(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfxt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzc:Lcom/google/android/gms/internal/ads/zzfnj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfnd;->zzj:Lcom/google/android/gms/internal/ads/zzfnd;

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfnb;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzb:Lcom/google/android/gms/internal/ads/zzefw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzegj;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzegj;-><init>(Lcom/google/android/gms/internal/ads/zzefw;)V

    .line 10
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfna;->zzf(Lcom/google/android/gms/internal/ads/zzgdy;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfna;->zza()Lcom/google/android/gms/internal/ads/zzfmo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegn;->zza:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzf()Lcom/google/android/gms/internal/ads/zzbuk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzh:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegn;->zze:Lcom/google/android/gms/internal/ads/zzchu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzf:Lcom/google/android/gms/internal/ads/zzfoy;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbuk;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzfoy;)Lcom/google/android/gms/internal/ads/zzbut;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzehl;->zza:Lcom/google/android/gms/internal/ads/zzbum;

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbuq;->zzb:Lcom/google/android/gms/internal/ads/zzbul;

    const-string v3, "google.afma.response.normalize"

    .line 14
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzbut;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbum;Lcom/google/android/gms/internal/ads/zzbul;)Lcom/google/android/gms/internal/ads/zzbuj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzc:Lcom/google/android/gms/internal/ads/zzfnj;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfnd;->zzk:Lcom/google/android/gms/internal/ads/zzfnd;

    .line 15
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfnb;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzegl;

    invoke-direct {v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzegl;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcce;)V

    .line 16
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfna;->zze(Lcom/google/android/gms/internal/ads/zzfmm;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfna;->zzf(Lcom/google/android/gms/internal/ads/zzgdy;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfna;->zza()Lcom/google/android/gms/internal/ads/zzfmo;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzegk;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzegk;-><init>(Lcom/google/android/gms/internal/ads/zzegn;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzi:Lcom/google/android/gms/internal/ads/zzgfc;

    .line 19
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzger;->zzn(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgdy;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfix;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfiu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzd:Lcom/google/android/gms/internal/ads/zzfjg;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfiu;-><init>(Lcom/google/android/gms/internal/ads/zzfjg;)V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfiw;->zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/zzfiw;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfix;-><init>(Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/internal/ads/zzfiw;)V

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzger;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1
.end method
