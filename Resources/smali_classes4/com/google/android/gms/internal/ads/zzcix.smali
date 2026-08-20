.class final Lcom/google/android/gms/internal/ads/zzcix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcjb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjb;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzc:Lcom/google/android/gms/internal/ads/zzcjb;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcix;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzc:Lcom/google/android/gms/internal/ads/zzcjb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjb;->zzi(Lcom/google/android/gms/internal/ads/zzcjb;)Lcom/google/android/gms/internal/ads/zzcjc;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjb;->zzi(Lcom/google/android/gms/internal/ads/zzcjb;)Lcom/google/android/gms/internal/ads/zzcjc;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcix;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzb:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcjc;->zzj(II)V

    :cond_0
    return-void
.end method
