.class final Lcom/google/android/gms/internal/ads/zzgky;
.super Lcom/google/android/gms/internal/ads/zzglb;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgkz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgwa;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgkz;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgky;->zza:Lcom/google/android/gms/internal/ads/zzgkz;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzglb;-><init>(Lcom/google/android/gms/internal/ads/zzgwa;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgla;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgmh;Lcom/google/android/gms/internal/ads/zzghn;)Lcom/google/android/gms/internal/ads/zzggf;
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/ads/zzghn;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgky;->zza:Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgkz;->zza(Lcom/google/android/gms/internal/ads/zzgmh;Lcom/google/android/gms/internal/ads/zzghn;)Lcom/google/android/gms/internal/ads/zzggf;

    move-result-object p1

    return-object p1
.end method
