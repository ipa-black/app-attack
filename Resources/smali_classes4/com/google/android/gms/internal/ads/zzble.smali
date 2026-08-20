.class public final Lcom/google/android/gms/internal/ads/zzble;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@21.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbkl;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbkl;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzbkl;

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzbkl;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzbkl;

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzbkl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "gads:adapter_initialization:red_button"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkl;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzble;->zza:Lcom/google/android/gms/internal/ads/zzbkl;

    const-string v0, "gads:ads_service_force_stop:red_button"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkl;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzble;->zzb:Lcom/google/android/gms/internal/ads/zzbkl;

    .line 3
    const-string v0, "gads:ad_serving:enabled"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbkl;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzble;->zzc:Lcom/google/android/gms/internal/ads/zzbkl;

    const-string v0, "gads:adaptive_banner:fail_invalid_ad_size"

    .line 4
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbkl;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzble;->zzd:Lcom/google/android/gms/internal/ads/zzbkl;

    const-string v0, "gads:sdk_use_dynamic_module"

    .line 5
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbkl;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzble;->zze:Lcom/google/android/gms/internal/ads/zzbkl;

    const-string v0, "gads:signal_adapters:red_button"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkl;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzble;->zzf:Lcom/google/android/gms/internal/ads/zzbkl;

    return-void
.end method
