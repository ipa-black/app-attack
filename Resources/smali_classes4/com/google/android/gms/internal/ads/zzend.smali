.class public final Lcom/google/android/gms/internal/ads/zzend;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekx;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdnw;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzchu;

.field private final zzd:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzdnw;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzend;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzend;->zzc:Lcom/google/android/gms/internal/ads/zzchu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzend;->zzb:Lcom/google/android/gms/internal/ads/zzdnw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzend;->zzd:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzekt;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfjl;,
            Lcom/google/android/gms/internal/ads/zzeom;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzend;->zzb:Lcom/google/android/gms/internal/ads/zzdnw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdbc;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzekt;->zza:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdbc;-><init>(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdmz;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzenc;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzenc;-><init>(Lcom/google/android/gms/internal/ads/zzend;Lcom/google/android/gms/internal/ads/zzekt;)V

    const/4 v2, 0x0

    invoke-direct {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdmz;-><init>(Lcom/google/android/gms/internal/ads/zzdoe;Lcom/google/android/gms/internal/ads/zzcno;)V

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdnw;->zze(Lcom/google/android/gms/internal/ads/zzdbc;Lcom/google/android/gms/internal/ads/zzdmz;)Lcom/google/android/gms/internal/ads/zzdmw;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdmw;->zzd()Lcom/google/android/gms/internal/ads/zzdfm;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcvy;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzekt;->zzb:Ljava/lang/Object;

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfkb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvy;-><init>(Lcom/google/android/gms/internal/ads/zzfkb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzend;->zzd:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdjx;->zzj(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzekt;->zzc:Lcom/google/android/gms/internal/ads/zzdfx;

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzems;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdmw;->zzi()Lcom/google/android/gms/internal/ads/zzepy;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzems;->zzc(Lcom/google/android/gms/internal/ads/zzbvz;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdmw;->zzg()Lcom/google/android/gms/internal/ads/zzdmv;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzekt;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfjl;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzekt;->zzb:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfkb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzend;->zza:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfix;->zza:Lcom/google/android/gms/internal/ads/zzfiu;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfiu;->zza:Lcom/google/android/gms/internal/ads/zzfjg;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfjg;->zzd:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfil;->zzw:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfil;->zzt:Lcom/google/android/gms/internal/ads/zzfiq;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbu;->zzl(Lcom/google/android/gms/internal/ads/zzfiq;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzekt;->zzc:Lcom/google/android/gms/internal/ads/zzdfx;

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzbvz;

    .line 1
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfkb;->zzo(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzl;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvz;)V

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzekt;ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdfa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdod;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p4, p1, Lcom/google/android/gms/internal/ads/zzekt;->zzb:Ljava/lang/Object;

    check-cast p4, Lcom/google/android/gms/internal/ads/zzfkb;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzfkb;->zzv(Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzend;->zzc:Lcom/google/android/gms/internal/ads/zzchu;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzchu;->zzc:I

    .line 2
    sget-object p4, Lcom/google/android/gms/internal/ads/zzbjj;->zzaB:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object p4

    .line 4
    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ge p2, p4, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzekt;->zzb:Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfkb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfkb;->zzx()V

    return-void

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzekt;->zzb:Ljava/lang/Object;

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfkb;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzfkb;->zzy(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfjl; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    const-string p2, "Cannot show interstitial."

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zze;->zzi(Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdod;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfjl;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdod;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
