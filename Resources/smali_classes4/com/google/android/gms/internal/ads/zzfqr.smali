.class public final Lcom/google/android/gms/internal/ads/zzfqr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfqt;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfqs;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfqt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zza:Lcom/google/android/gms/internal/ads/zzfqt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfqs;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfqs;-><init>(Lcom/google/android/gms/internal/ads/zzfqq;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzb:Lcom/google/android/gms/internal/ads/zzfqs;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfqq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zzb:Lcom/google/android/gms/internal/ads/zzfqs;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfqq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->zza:Lcom/google/android/gms/internal/ads/zzfqt;

    return-object v0
.end method
