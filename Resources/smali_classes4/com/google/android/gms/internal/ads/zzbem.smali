.class final Lcom/google/android/gms/internal/ads/zzbem;
.super Lcom/google/android/gms/internal/ads/zzcig;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbes;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbes;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbem;->zza:Lcom/google/android/gms/internal/ads/zzbes;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcig;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbem;->zza:Lcom/google/android/gms/internal/ads/zzbes;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbes;->zze(Lcom/google/android/gms/internal/ads/zzbes;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzcig;->cancel(Z)Z

    move-result p1

    return p1
.end method
