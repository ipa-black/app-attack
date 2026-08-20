.class final Lcom/google/android/gms/internal/ads/zzbbm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzatd;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbbr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbr;Lcom/google/android/gms/internal/ads/zzatd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzb:Lcom/google/android/gms/internal/ads/zzbbr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zza:Lcom/google/android/gms/internal/ads/zzatd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzb:Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbr;->zza(Lcom/google/android/gms/internal/ads/zzbbr;)Lcom/google/android/gms/internal/ads/zzbbs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zza:Lcom/google/android/gms/internal/ads/zzatd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbs;->zzn(Lcom/google/android/gms/internal/ads/zzatd;)V

    return-void
.end method
