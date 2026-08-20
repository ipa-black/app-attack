.class public final Lcom/google/android/gms/internal/ads/zzgva;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgwa;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgwa;


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwa;->zzb([B)Lcom/google/android/gms/internal/ads/zzgwa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgva;->zza:Lcom/google/android/gms/internal/ads/zzgwa;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgwa;->zzb([B)Lcom/google/android/gms/internal/ads/zzgwa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgva;->zzb:Lcom/google/android/gms/internal/ads/zzgwa;

    return-void
.end method


# virtual methods
.method public final zza()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgva;->zza:Lcom/google/android/gms/internal/ads/zzgwa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwa;->zzc()[B

    move-result-object v0

    return-object v0
.end method

.method public final zzb()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgva;->zzb:Lcom/google/android/gms/internal/ads/zzgwa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwa;->zzc()[B

    move-result-object v0

    return-object v0
.end method
