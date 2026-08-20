.class public final Lcom/google/android/gms/internal/ads/zzghe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:[B

.field private final zzc:Lcom/google/android/gms/internal/ads/zzguc;

.field private final zzd:I

.field private final zze:Lcom/google/android/gms/internal/ads/zzggf;

.field private final zzf:I


# direct methods
.method constructor <init>(Ljava/lang/Object;[BILcom/google/android/gms/internal/ads/zzguc;ILcom/google/android/gms/internal/ads/zzggf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghe;->zza:Ljava/lang/Object;

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghe;->zzb:[B

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzghe;->zzf:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzghe;->zzc:Lcom/google/android/gms/internal/ads/zzguc;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzghe;->zzd:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzghe;->zze:Lcom/google/android/gms/internal/ads/zzggf;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzghe;->zzd:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzggf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghe;->zze:Lcom/google/android/gms/internal/ads/zzggf;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzghb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghe;->zze:Lcom/google/android/gms/internal/ads/zzggf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzggf;->zza()Lcom/google/android/gms/internal/ads/zzghb;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzguc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghe;->zzc:Lcom/google/android/gms/internal/ads/zzguc;

    return-object v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghe;->zza:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzf()[B
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghe;->zzb:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v1, v0

    .line 1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final zzg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzghe;->zzf:I

    return v0
.end method
