.class final Lcom/google/android/gms/internal/ads/zzgdf$zzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzgdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgdf<",
            "TV;>;"
        }
    .end annotation
.end field

.field final zzb:Lcom/google/android/gms/internal/ads/zzgfb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgfb<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgdf;Lcom/google/android/gms/internal/ads/zzgfb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdf$zzf;->zza:Lcom/google/android/gms/internal/ads/zzgdf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdf$zzf;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf$zzf;->zza:Lcom/google/android/gms/internal/ads/zzgdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdf;->zzk(Lcom/google/android/gms/internal/ads/zzgdf;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf$zzf;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdf;->zzl(Lcom/google/android/gms/internal/ads/zzgfb;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdf;->zzh()Lcom/google/android/gms/internal/ads/zzgdf$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdf$zzf;->zza:Lcom/google/android/gms/internal/ads/zzgdf;

    .line 3
    invoke-virtual {v1, v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzgdf$zza;->zzf(Lcom/google/android/gms/internal/ads/zzgdf;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf$zzf;->zza:Lcom/google/android/gms/internal/ads/zzgdf;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdf;->zzq(Lcom/google/android/gms/internal/ads/zzgdf;Z)V

    :cond_1
    return-void
.end method
