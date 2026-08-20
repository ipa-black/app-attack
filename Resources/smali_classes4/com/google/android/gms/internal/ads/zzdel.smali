.class public final Lcom/google/android/gms/internal/ads/zzdel;
.super Lcom/google/android/gms/internal/ads/zzdjx;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zza;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdjx;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdek;->zza:Lcom/google/android/gms/internal/ads/zzdek;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdjx;->zzo(Lcom/google/android/gms/internal/ads/zzdjw;)V

    return-void
.end method
