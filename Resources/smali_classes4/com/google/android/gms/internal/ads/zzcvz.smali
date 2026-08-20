.class public final Lcom/google/android/gms/internal/ads/zzcvz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdeq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfio;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfix;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfpk;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfpo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfpo;Lcom/google/android/gms/internal/ads/zzfpk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzb:Lcom/google/android/gms/internal/ads/zzfix;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzd:Lcom/google/android/gms/internal/ads/zzfpo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzc:Lcom/google/android/gms/internal/ads/zzfpk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfix;->zzb:Lcom/google/android/gms/internal/ads/zzfiw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzfio;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zza:Lcom/google/android/gms/internal/ads/zzfio;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzd:Lcom/google/android/gms/internal/ads/zzfpo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzc:Lcom/google/android/gms/internal/ads/zzfpk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzb:Lcom/google/android/gms/internal/ads/zzfix;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zza:Lcom/google/android/gms/internal/ads/zzfio;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfio;->zza:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfpk;->zzc(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfpo;->zzd(Ljava/util/List;)V

    return-void
.end method
