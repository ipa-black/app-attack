.class public final Lcom/google/android/gms/internal/ads/zzfjp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfil;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfio;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzekc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfpo;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfow;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzekc;Lcom/google/android/gms/internal/ads/zzfpo;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfio;Lcom/google/android/gms/internal/ads/zzfow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zza:Lcom/google/android/gms/internal/ads/zzfil;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zzb:Lcom/google/android/gms/internal/ads/zzfio;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zzc:Lcom/google/android/gms/internal/ads/zzekc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zzd:Lcom/google/android/gms/internal/ads/zzfpo;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zze:Lcom/google/android/gms/internal/ads/zzfow;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjp;->zzb(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zza:Lcom/google/android/gms/internal/ads/zzfil;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfil;->zzak:Z

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zzd:Lcom/google/android/gms/internal/ads/zzfpo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zze:Lcom/google/android/gms/internal/ads/zzfow;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzfpo;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfow;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeke;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zzb:Lcom/google/android/gms/internal/ads/zzfio;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfio;->zzb:Ljava/lang/String;

    move-object v1, v0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzeke;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjp;->zzc:Lcom/google/android/gms/internal/ads/zzekc;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzekc;->zzd(Lcom/google/android/gms/internal/ads/zzeke;)V

    return-void
.end method

.method public final zzc(Ljava/util/List;I)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzfjp;->zzb(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
