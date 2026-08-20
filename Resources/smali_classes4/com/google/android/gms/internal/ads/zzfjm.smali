.class public final synthetic Lcom/google/android/gms/internal/ads/zzfjm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbqd;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfpo;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzekc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfpo;Lcom/google/android/gms/internal/ads/zzekc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjm;->zza:Lcom/google/android/gms/internal/ads/zzfpo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjm;->zzb:Lcom/google/android/gms/internal/ads/zzekc;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjm;->zza:Lcom/google/android/gms/internal/ads/zzfpo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjm;->zzb:Lcom/google/android/gms/internal/ads/zzekc;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcnf;

    .line 1
    const-string v2, "u"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    const-string p1, "URL missing from httpTrack GMSG."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzj(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcnf;->zzF()Lcom/google/android/gms/internal/ads/zzfil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzfil;->zzak:Z

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, v6, p1}, Lcom/google/android/gms/internal/ads/zzfpo;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfow;)V

    return-void

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzeke;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcol;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcol;->zzR()Lcom/google/android/gms/internal/ads/zzfio;

    move-result-object p1

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzfio;->zzb:Ljava/lang/String;

    const/4 v7, 0x2

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzeke;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 7
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzekc;->zzd(Lcom/google/android/gms/internal/ads/zzeke;)V

    return-void
.end method
