.class public final Lcom/google/android/gms/internal/ads/zzddz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfjg;

.field private final zzc:Landroid/os/Bundle;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfiy;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzddx;Lcom/google/android/gms/internal/ads/zzddy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzddx;->zza(Lcom/google/android/gms/internal/ads/zzddx;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzddz;->zza:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzddx;->zzi(Lcom/google/android/gms/internal/ads/zzddx;)Lcom/google/android/gms/internal/ads/zzfjg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzb:Lcom/google/android/gms/internal/ads/zzfjg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzddx;->zzb(Lcom/google/android/gms/internal/ads/zzddx;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzc:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzddx;->zzh(Lcom/google/android/gms/internal/ads/zzddx;)Lcom/google/android/gms/internal/ads/zzfiy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzd:Lcom/google/android/gms/internal/ads/zzfiy;

    return-void
.end method


# virtual methods
.method final zza(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddz;->zza:Landroid/content/Context;

    return-object p1
.end method

.method final zzb()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzc:Landroid/os/Bundle;

    return-object v0
.end method

.method final zzc()Lcom/google/android/gms/internal/ads/zzddx;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzddx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzddx;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddz;->zza:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzddx;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzddx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzb:Lcom/google/android/gms/internal/ads/zzfjg;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzddx;->zzf(Lcom/google/android/gms/internal/ads/zzfjg;)Lcom/google/android/gms/internal/ads/zzddx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzc:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzddx;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzddx;

    return-object v0
.end method

.method final zzd()Lcom/google/android/gms/internal/ads/zzfiy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzd:Lcom/google/android/gms/internal/ads/zzfiy;

    return-object v0
.end method

.method final zze()Lcom/google/android/gms/internal/ads/zzfjg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzb:Lcom/google/android/gms/internal/ads/zzfjg;

    return-object v0
.end method
