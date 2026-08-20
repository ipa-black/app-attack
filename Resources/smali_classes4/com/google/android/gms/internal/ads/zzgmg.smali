.class public final Lcom/google/android/gms/internal/ads/zzgmg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgmh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgwa;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgtb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgtb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmg;->zzb:Lcom/google/android/gms/internal/ads/zzgtb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgtb;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgmq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgwa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmg;->zza:Lcom/google/android/gms/internal/ads/zzgwa;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzgtb;)Lcom/google/android/gms/internal/ads/zzgmg;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgmg;-><init>(Lcom/google/android/gms/internal/ads/zzgtb;)V

    return-object v0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzgtb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmg;->zzb:Lcom/google/android/gms/internal/ads/zzgtb;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgwa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmg;->zza:Lcom/google/android/gms/internal/ads/zzgwa;

    return-object v0
.end method
