.class final Lcom/google/android/gms/internal/ads/zzfmy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgen;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfmo;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfna;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfna;Lcom/google/android/gms/internal/ads/zzfmo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmy;->zzb:Lcom/google/android/gms/internal/ads/zzfna;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfmy;->zza:Lcom/google/android/gms/internal/ads/zzfmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmy;->zzb:Lcom/google/android/gms/internal/ads/zzfna;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfna;->zza:Lcom/google/android/gms/internal/ads/zzfnb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfnb;->zzc(Lcom/google/android/gms/internal/ads/zzfnb;)Lcom/google/android/gms/internal/ads/zzfnc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmy;->zza:Lcom/google/android/gms/internal/ads/zzfmo;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfnc;->zzb(Lcom/google/android/gms/internal/ads/zzfmo;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmy;->zzb:Lcom/google/android/gms/internal/ads/zzfna;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfna;->zza:Lcom/google/android/gms/internal/ads/zzfnb;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfnb;->zzc(Lcom/google/android/gms/internal/ads/zzfnb;)Lcom/google/android/gms/internal/ads/zzfnc;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmy;->zza:Lcom/google/android/gms/internal/ads/zzfmo;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfnc;->zzd(Lcom/google/android/gms/internal/ads/zzfmo;)V

    return-void
.end method
