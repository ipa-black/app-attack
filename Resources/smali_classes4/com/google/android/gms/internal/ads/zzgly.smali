.class public Lcom/google/android/gms/internal/ads/zzgly;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgwa;

.field private final zzb:Ljava/lang/Class;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgwa;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzglx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgly;->zza:Lcom/google/android/gms/internal/ads/zzgwa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgly;->zzb:Ljava/lang/Class;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzglw;Lcom/google/android/gms/internal/ads/zzgwa;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgly;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzglv;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzglv;-><init>(Lcom/google/android/gms/internal/ads/zzgwa;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzglw;)V

    return-object v0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzgwa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgly;->zza:Lcom/google/android/gms/internal/ads/zzgwa;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgly;->zzb:Ljava/lang/Class;

    return-object v0
.end method
