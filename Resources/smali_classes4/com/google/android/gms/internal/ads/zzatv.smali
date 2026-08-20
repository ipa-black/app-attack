.class final Lcom/google/android/gms/internal/ads/zzatv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzatd;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzatz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzatz;Lcom/google/android/gms/internal/ads/zzatd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzb:Lcom/google/android/gms/internal/ads/zzatz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzatv;->zza:Lcom/google/android/gms/internal/ads/zzatd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzb:Lcom/google/android/gms/internal/ads/zzatz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzatz;->zza(Lcom/google/android/gms/internal/ads/zzatz;)Lcom/google/android/gms/internal/ads/zzaua;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatv;->zza:Lcom/google/android/gms/internal/ads/zzatd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaua;->zzh(Lcom/google/android/gms/internal/ads/zzatd;)V

    return-void
.end method
