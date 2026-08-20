.class final Lcom/google/android/gms/internal/ads/zzdba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgen;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgen;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdbb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdbb;Lcom/google/android/gms/internal/ads/zzgen;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzb:Lcom/google/android/gms/internal/ads/zzdbb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdba;->zza:Lcom/google/android/gms/internal/ads/zzgen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzb:Lcom/google/android/gms/internal/ads/zzdbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbb;->zzc(Lcom/google/android/gms/internal/ads/zzdbb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdba;->zza:Lcom/google/android/gms/internal/ads/zzgen;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgen;->zza(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdan;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzb:Lcom/google/android/gms/internal/ads/zzdbb;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbb;->zzc(Lcom/google/android/gms/internal/ads/zzdbb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdba;->zza:Lcom/google/android/gms/internal/ads/zzgen;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzb(Ljava/lang/Object;)V

    return-void
.end method
