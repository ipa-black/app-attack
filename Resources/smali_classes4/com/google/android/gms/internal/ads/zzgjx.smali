.class public final Lcom/google/android/gms/internal/ads/zzgjx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzggw;)Lcom/google/android/gms/internal/ads/zzgge;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgjz;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzghm;->zzo(Lcom/google/android/gms/internal/ads/zzghj;)V

    const-class v0, Lcom/google/android/gms/internal/ads/zzgge;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzggw;->zzd(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgge;

    return-object p0
.end method
