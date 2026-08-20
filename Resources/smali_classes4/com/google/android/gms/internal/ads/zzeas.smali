.class public final Lcom/google/android/gms/internal/ads/zzeas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeag;


# instance fields
.field private final zza:J

.field private final zzb:Lcom/google/android/gms/internal/ads/zzesj;


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzeal;Lcom/google/android/gms/internal/ads/zzcpj;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzeas;->zza:J

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzcpj;->zzu()Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfgq;

    new-instance p2, Lcom/google/android/gms/ads/internal/client/zzq;

    invoke-direct {p2}, Lcom/google/android/gms/ads/internal/client/zzq;-><init>()V

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Lcom/google/android/gms/ads/internal/client/zzq;)Lcom/google/android/gms/internal/ads/zzfgq;

    .line 3
    invoke-interface {p1, p6}, Lcom/google/android/gms/internal/ads/zzfgq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgq;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfgq;->zzd()Lcom/google/android/gms/internal/ads/zzfgr;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfgr;->zza()Lcom/google/android/gms/internal/ads/zzesj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeas;->zzb:Lcom/google/android/gms/internal/ads/zzesj;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzear;

    .line 6
    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/ads/zzear;-><init>(Lcom/google/android/gms/internal/ads/zzeas;Lcom/google/android/gms/internal/ads/zzeal;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzesj;->zzD(Lcom/google/android/gms/ads/internal/client/zzbh;)V

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzeas;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeas;->zza:J

    return-wide v0
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeas;->zzb:Lcom/google/android/gms/internal/ads/zzesj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesj;->zzx()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/client/zzl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeas;->zzb:Lcom/google/android/gms/internal/ads/zzesj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzesj;->zzaa(Lcom/google/android/gms/ads/internal/client/zzl;)Z

    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeas;->zzb:Lcom/google/android/gms/internal/ads/zzesj;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzesj;->zzW(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method
