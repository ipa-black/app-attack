.class public final Lcom/google/android/gms/internal/ads/zzfva;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@21.5.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfux;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzfux;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfuz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuz;-><init>(Lcom/google/android/gms/internal/ads/zzfuy;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfva;->zza:Lcom/google/android/gms/internal/ads/zzfux;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfva;->zzb:Lcom/google/android/gms/internal/ads/zzfux;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfux;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfva;->zzb:Lcom/google/android/gms/internal/ads/zzfux;

    return-object v0
.end method
