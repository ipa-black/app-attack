.class final Lcom/google/android/gms/internal/ads/zzaxz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzayf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxz;->zza:Lcom/google/android/gms/internal/ads/zzayf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxz;->zza:Lcom/google/android/gms/internal/ads/zzayf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayf;->zzz(Lcom/google/android/gms/internal/ads/zzayf;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayf;->zzm(Lcom/google/android/gms/internal/ads/zzayf;)Lcom/google/android/gms/internal/ads/zzayi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzayi;->zze(Lcom/google/android/gms/internal/ads/zzayx;)V

    :cond_0
    return-void
.end method
