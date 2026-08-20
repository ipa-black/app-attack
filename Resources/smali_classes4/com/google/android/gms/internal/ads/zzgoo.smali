.class public final Lcom/google/android/gms/internal/ads/zzgoo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzggo;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzghb;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzggo;ILcom/google/android/gms/internal/ads/zzghb;Lcom/google/android/gms/internal/ads/zzgon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zza:Lcom/google/android/gms/internal/ads/zzggo;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzc:Lcom/google/android/gms/internal/ads/zzghb;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgoo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgoo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zza:Lcom/google/android/gms/internal/ads/zzggo;

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzgoo;->zza:Lcom/google/android/gms/internal/ads/zzggo;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzb:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzgoo;->zzb:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzc:Lcom/google/android/gms/internal/ads/zzghb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgoo;->zzc:Lcom/google/android/gms/internal/ads/zzghb;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zza:Lcom/google/android/gms/internal/ads/zzggo;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzc:Lcom/google/android/gms/internal/ads/zzghb;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zza:Lcom/google/android/gms/internal/ads/zzggo;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzc:Lcom/google/android/gms/internal/ads/zzghb;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(status=%s, keyId=%s, parameters=\'%s\')"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzb:I

    return v0
.end method
