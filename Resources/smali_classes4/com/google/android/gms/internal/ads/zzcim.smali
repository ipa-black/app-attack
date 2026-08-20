.class final Lcom/google/android/gms/internal/ads/zzcim;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgen;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcik;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcii;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcin;Lcom/google/android/gms/internal/ads/zzcik;Lcom/google/android/gms/internal/ads/zzcii;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcim;->zza:Lcom/google/android/gms/internal/ads/zzcik;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzb:Lcom/google/android/gms/internal/ads/zzcii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzb:Lcom/google/android/gms/internal/ads/zzcii;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcii;->zza()V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcim;->zza:Lcom/google/android/gms/internal/ads/zzcik;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcik;->zza(Ljava/lang/Object;)V

    return-void
.end method
