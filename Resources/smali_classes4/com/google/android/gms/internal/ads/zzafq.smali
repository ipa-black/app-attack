.class final Lcom/google/android/gms/internal/ads/zzafq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzafw;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzafz;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzaaq;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzaar;

.field public zze:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzafw;Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzaaq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafq;->zza:Lcom/google/android/gms/internal/ads/zzafw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafq;->zzb:Lcom/google/android/gms/internal/ads/zzafz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzafq;->zzc:Lcom/google/android/gms/internal/ads/zzaaq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzafw;->zzf:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->zzm:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaar;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaar;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafq;->zzd:Lcom/google/android/gms/internal/ads/zzaar;

    return-void
.end method
