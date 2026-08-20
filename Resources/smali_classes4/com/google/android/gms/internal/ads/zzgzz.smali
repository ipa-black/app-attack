.class final Lcom/google/android/gms/internal/ads/zzgzz;
.super Lcom/google/android/gms/internal/ads/zzgwn;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhad;

.field zzb:Lcom/google/android/gms/internal/ads/zzgwp;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzhaf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhaf;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzz;->zzc:Lcom/google/android/gms/internal/ads/zzhaf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgwn;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhad;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzhad;-><init>(Lcom/google/android/gms/internal/ads/zzgwv;Lcom/google/android/gms/internal/ads/zzhac;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzz;->zza:Lcom/google/android/gms/internal/ads/zzhad;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzz;->zzb()Lcom/google/android/gms/internal/ads/zzgwp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzz;->zzb:Lcom/google/android/gms/internal/ads/zzgwp;

    return-void
.end method

.method private final zzb()Lcom/google/android/gms/internal/ads/zzgwp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzz;->zza:Lcom/google/android/gms/internal/ads/zzhad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhad;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhad;->zza()Lcom/google/android/gms/internal/ads/zzgwq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwv;->zzs()Lcom/google/android/gms/internal/ads/zzgwp;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzz;->zzb:Lcom/google/android/gms/internal/ads/zzgwp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzz;->zzb:Lcom/google/android/gms/internal/ads/zzgwp;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgwp;->zza()B

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzz;->zzb:Lcom/google/android/gms/internal/ads/zzgwp;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgwp;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzz;->zzb()Lcom/google/android/gms/internal/ads/zzgwp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzz;->zzb:Lcom/google/android/gms/internal/ads/zzgwp;

    :cond_0
    return v0

    .line 1
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
