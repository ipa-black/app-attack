.class final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgen;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgfb;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcgj;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcgc;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfol;

.field final synthetic zze:J

.field final synthetic zzf:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzcgj;Lcom/google/android/gms/internal/ads/zzcgc;Lcom/google/android/gms/internal/ads/zzfol;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzf:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zza:Lcom/google/android/gms/internal/ads/zzgfb;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzb:Lcom/google/android/gms/internal/ads/zzcgj;

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzc:Lcom/google/android/gms/internal/ads/zzcgc;

    iput-object p5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    iput-wide p6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zze:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 11

    const-string v0, "Internal error. "

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zze:J

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcgx;

    move-result-object v6

    const-string v7, "SignalGeneratorImpl.generateSignals"

    invoke-virtual {v6, p1, v7}, Lcom/google/android/gms/internal/ads/zzcgx;->zzu(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzf:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzp(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Lcom/google/android/gms/internal/ads/zzdzm;

    move-result-object v7

    invoke-static {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzo(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v6

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/util/Pair;

    new-instance v9, Landroid/util/Pair;

    const-string v10, "sgf_reason"

    .line 4
    invoke-direct {v9, v10, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    new-instance v9, Landroid/util/Pair;

    sub-long/2addr v1, v3

    .line 5
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tqgt"

    invoke-direct {v9, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v9, v8, v1

    const-string v1, "sgf"

    .line 4
    invoke-static {v7, v6, v1, v8}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzc(Lcom/google/android/gms/internal/ads/zzdzm;Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/String;[Landroid/util/Pair;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zza:Lcom/google/android/gms/internal/ads/zzgfb;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzb:Lcom/google/android/gms/internal/ads/zzcgj;

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzr(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzcgj;)Lcom/google/android/gms/internal/ads/zzfow;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbks;->zze:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    .line 8
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzfol;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfol;

    invoke-interface {v2, v10}, Lcom/google/android/gms/internal/ads/zzfol;->zzf(Z)Lcom/google/android/gms/internal/ads/zzfol;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfow;->zza(Lcom/google/android/gms/internal/ads/zzfol;)Lcom/google/android/gms/internal/ads/zzfow;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfow;->zzg()V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzc:Lcom/google/android/gms/internal/ads/zzcgc;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcgc;->zzb(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 10
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcho;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 14

    .line 1
    const-string v0, "sgf"

    const-string v1, "sgf_reason"

    const-string v2, "QueryInfo generation has been disabled."

    .line 0
    const-string v3, "Internal error for request JSON: "

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzao;

    iget-object v4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zza:Lcom/google/android/gms/internal/ads/zzgfb;

    iget-object v5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzb:Lcom/google/android/gms/internal/ads/zzcgj;

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzr(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzcgj;)Lcom/google/android/gms/internal/ads/zzfow;

    move-result-object v4

    .line 3
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbjj;->zzgV:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object v5

    .line 3
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzc:Lcom/google/android/gms/internal/ads/zzcgc;

    .line 5
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzcgc;->zzb(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzg(Ljava/lang/String;)V

    .line 7
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbks;->zze:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v4, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    .line 8
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzfol;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfol;

    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/zzfol;->zzf(Z)Lcom/google/android/gms/internal/ads/zzfol;

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzfow;->zza(Lcom/google/android/gms/internal/ads/zzfol;)Lcom/google/android/gms/internal/ads/zzfow;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfow;->zzg()V

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zze:J

    sub-long/2addr v7, v9

    const-string v2, "sgs"

    const-string v5, "SignalGeneratorImpl.generateSignals.onSuccess"

    const-string v9, ""

    const/4 v10, 0x1

    if-nez p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzc:Lcom/google/android/gms/internal/ads/zzcgc;

    const/4 v0, 0x0

    .line 11
    invoke-interface {p1, v0, v0, v0}, Lcom/google/android/gms/internal/ads/zzcgc;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzf:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzp(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Lcom/google/android/gms/internal/ads/zzdzm;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzo(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    new-array v1, v10, [Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    const-string v7, "rid"

    const-string v8, "-1"

    .line 12
    invoke-direct {v3, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v6

    invoke-static {v0, p1, v2, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzc(Lcom/google/android/gms/internal/ads/zzdzm;Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/String;[Landroid/util/Pair;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    .line 13
    invoke-interface {p1, v10}, Lcom/google/android/gms/internal/ads/zzfol;->zzf(Z)Lcom/google/android/gms/internal/ads/zzfol;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbks;->zze:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v4, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    .line 15
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzfow;->zza(Lcom/google/android/gms/internal/ads/zzfol;)Lcom/google/android/gms/internal/ads/zzfow;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfow;->zzg()V

    return-void

    .line 16
    :cond_1
    :try_start_2
    new-instance v11, Lorg/json/JSONObject;

    iget-object v12, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzao;->zzb:Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v3, "request_id"

    .line 23
    invoke-virtual {v11, v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string p1, "The request ID is empty in request JSON."

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzc:Lcom/google/android/gms/internal/ads/zzcgc;

    const-string v2, "Internal error: request ID is empty in request JSON."

    .line 26
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzcgc;->zzb(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzf:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzp(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Lcom/google/android/gms/internal/ads/zzdzm;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzo(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    new-array v3, v10, [Landroid/util/Pair;

    new-instance v7, Landroid/util/Pair;

    const-string v8, "rid_missing"

    .line 27
    invoke-direct {v7, v1, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v6

    invoke-static {v2, p1, v0, v3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzc(Lcom/google/android/gms/internal/ads/zzdzm;Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/String;[Landroid/util/Pair;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    const-string v0, "Request ID empty"

    .line 28
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfol;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfol;

    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/zzfol;->zzf(Z)Lcom/google/android/gms/internal/ads/zzfol;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbks;->zze:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v4, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    .line 15
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzfow;->zza(Lcom/google/android/gms/internal/ads/zzfol;)Lcom/google/android/gms/internal/ads/zzfow;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfow;->zzg()V

    return-void

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzf:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    iget-object v1, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzao;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzo(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v12

    .line 29
    invoke-static {v0, v3, v1, v12}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzG(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdzc;)V

    iget-object v0, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzao;->zzc:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzf:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzK(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzy(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    .line 30
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzf:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzy(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzD(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzf:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzL(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzA(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzf:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzz(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzf:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v3

    iget-object v12, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzf:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {v12}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzc(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v12}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzn(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Lcom/google/android/gms/internal/ads/zzchu;

    move-result-object v12

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzchu;->zza:Ljava/lang/String;

    invoke-virtual {v3, v13, v12}, Lcom/google/android/gms/ads/internal/util/zzs;->zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzE(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzf:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzA(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzz(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzc:Lcom/google/android/gms/internal/ads/zzcgc;

    iget-object v3, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzao;->zza:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzao;->zzb:Ljava/lang/String;

    .line 36
    invoke-interface {v1, v3, p1, v0}, Lcom/google/android/gms/internal/ads/zzcgc;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzf:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzp(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Lcom/google/android/gms/internal/ads/zzdzm;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzo(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    const-string v12, "tqgt"

    .line 37
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v12, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v6

    new-instance v3, Landroid/util/Pair;

    const-string v7, "tpc"

    const-string v8, "na"

    sget-object v12, Lcom/google/android/gms/internal/ads/zzbjj;->zziC:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 38
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbjh;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzbjh;->zzb(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object v12

    .line 39
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v12, :cond_6

    goto :goto_1

    .line 15
    :cond_6
    :try_start_5
    const-string v12, "extras"

    .line 40
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "accept_3p_cookie"

    .line 41
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v8, "1"

    goto :goto_1

    :cond_7
    const-string v8, "0"
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v11

    .line 15
    :try_start_6
    const-string v12, "Error retrieving JSONObject from the requestJson, "

    .line 42
    invoke-static {v12, v11}, Lcom/google/android/gms/ads/internal/util/zze;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    :goto_1
    invoke-direct {v3, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v10

    .line 44
    invoke-static {v0, p1, v2, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzc(Lcom/google/android/gms/internal/ads/zzdzm;Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/String;[Landroid/util/Pair;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    .line 45
    invoke-interface {p1, v10}, Lcom/google/android/gms/internal/ads/zzfol;->zzf(Z)Lcom/google/android/gms/internal/ads/zzfol;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbks;->zze:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v4, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    .line 15
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzfow;->zza(Lcom/google/android/gms/internal/ads/zzfol;)Lcom/google/android/gms/internal/ads/zzfow;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfow;->zzg()V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    .line 50
    :try_start_7
    const-string v2, "Failed to create JSON object from the request string."

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zzj(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzc:Lcom/google/android/gms/internal/ads/zzcgc;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzcgc;->zzb(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzf:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    invoke-static {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzp(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Lcom/google/android/gms/internal/ads/zzdzm;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzo(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v2

    new-array v7, v10, [Landroid/util/Pair;

    new-instance v8, Landroid/util/Pair;

    const-string v10, "request_invalid"

    .line 19
    invoke-direct {v8, v1, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v7, v6

    invoke-static {v3, v2, v0, v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzc(Lcom/google/android/gms/internal/ads/zzdzm;Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/String;[Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    .line 20
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfol;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfol;

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/ads/zzfol;->zzf(Z)Lcom/google/android/gms/internal/ads/zzfol;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcgx;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p1, v5}, Lcom/google/android/gms/internal/ads/zzcgx;->zzu(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbks;->zze:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v4, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    .line 15
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzfow;->zza(Lcom/google/android/gms/internal/ads/zzfol;)Lcom/google/android/gms/internal/ads/zzfow;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfow;->zzg()V

    return-void

    .line 6
    :goto_2
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    .line 46
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfol;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfol;

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/ads/zzfol;->zzf(Z)Lcom/google/android/gms/internal/ads/zzfol;

    .line 47
    invoke-static {v9, p1}, Lcom/google/android/gms/internal/ads/zzcho;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcgx;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p1, v5}, Lcom/google/android/gms/internal/ads/zzcgx;->zzu(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbks;->zze:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v4, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    .line 15
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzfow;->zza(Lcom/google/android/gms/internal/ads/zzfol;)Lcom/google/android/gms/internal/ads/zzfow;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfow;->zzg()V

    :cond_8
    return-void

    .line 14
    :goto_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbks;->zze:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v4, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzd:Lcom/google/android/gms/internal/ads/zzfol;

    .line 15
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfow;->zza(Lcom/google/android/gms/internal/ads/zzfol;)Lcom/google/android/gms/internal/ads/zzfow;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfow;->zzg()V

    .line 50
    :cond_9
    throw p1
.end method
