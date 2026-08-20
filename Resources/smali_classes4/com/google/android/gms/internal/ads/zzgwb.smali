.class public final Lcom/google/android/gms/internal/ads/zzgwb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgwa;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgwa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwb;->zza:Lcom/google/android/gms/internal/ads/zzgwa;

    return-void
.end method

.method public static zzb([BLcom/google/android/gms/internal/ads/zzghn;)Lcom/google/android/gms/internal/ads/zzgwb;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgwb;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgwa;->zzb([B)Lcom/google/android/gms/internal/ads/zzgwa;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgwb;-><init>(Lcom/google/android/gms/internal/ads/zzgwa;)V

    return-object p1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwb;->zza:Lcom/google/android/gms/internal/ads/zzgwa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwa;->zza()I

    move-result v0

    return v0
.end method
