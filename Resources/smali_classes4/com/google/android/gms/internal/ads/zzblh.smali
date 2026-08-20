.class public final Lcom/google/android/gms/internal/ads/zzblh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@21.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbkl;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbkl;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzbkl;

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzbkl;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzbkl;

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzbkl;

.field public static final zzg:Lcom/google/android/gms/internal/ads/zzbkl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "gads:dynamite_load:fail:sample_rate"

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbkl;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblh;->zza:Lcom/google/android/gms/internal/ads/zzbkl;

    .line 2
    const-string v0, "gads:report_dynamite_crash_in_background_thread"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkl;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblh;->zzb:Lcom/google/android/gms/internal/ads/zzbkl;

    const-string v0, "gads:public_beta:traffic_multiplier"

    const-string v2, "1.0"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbkl;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblh;->zzc:Lcom/google/android/gms/internal/ads/zzbkl;

    const-string v0, "gads:sdk_crash_report_class_prefix"

    const-string v2, "com.google."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbkl;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblh;->zzd:Lcom/google/android/gms/internal/ads/zzbkl;

    const-string v0, "gads:sdk_crash_report_enabled"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkl;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblh;->zze:Lcom/google/android/gms/internal/ads/zzbkl;

    const-string v0, "gads:sdk_crash_report_full_stacktrace"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkl;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblh;->zzf:Lcom/google/android/gms/internal/ads/zzbkl;

    const-string v0, "gads:trapped_exception_sample_rate"

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbkl;->zza(Ljava/lang/String;D)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblh;->zzg:Lcom/google/android/gms/internal/ads/zzbkl;

    return-void
.end method
