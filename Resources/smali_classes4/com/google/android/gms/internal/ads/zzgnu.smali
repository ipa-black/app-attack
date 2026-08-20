.class public final Lcom/google/android/gms/internal/ads/zzgnu;
.super Lcom/google/android/gms/internal/ads/zzgoc;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgns;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgnr;


# direct methods
.method synthetic constructor <init>(IILcom/google/android/gms/internal/ads/zzgns;Lcom/google/android/gms/internal/ads/zzgnr;Lcom/google/android/gms/internal/ads/zzgnt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgoc;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zzc:Lcom/google/android/gms/internal/ads/zzgns;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zzd:Lcom/google/android/gms/internal/ads/zzgnr;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgnu;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgnu;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgnu;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zza:I

    if-ne v0, v2, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgnu;->zzb()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnu;->zzb()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgnu;->zzc:Lcom/google/android/gms/internal/ads/zzgns;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zzc:Lcom/google/android/gms/internal/ads/zzgns;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgnu;->zzd:Lcom/google/android/gms/internal/ads/zzgnr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zzd:Lcom/google/android/gms/internal/ads/zzgnr;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zzb:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zzc:Lcom/google/android/gms/internal/ads/zzgns;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zzd:Lcom/google/android/gms/internal/ads/zzgnr;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zzc:Lcom/google/android/gms/internal/ads/zzgns;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zzd:Lcom/google/android/gms/internal/ads/zzgnr;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zzb:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zza:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HMAC Parameters (variant: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hashType: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte tags, and "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte key)"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zza:I

    return v0
.end method

.method public final zzb()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zzc:Lcom/google/android/gms/internal/ads/zzgns;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgns;->zzd:Lcom/google/android/gms/internal/ads/zzgns;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zzb:I

    return v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgns;->zza:Lcom/google/android/gms/internal/ads/zzgns;

    if-ne v0, v1, :cond_1

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zzb:I

    add-int/lit8 v0, v0, 0x5

    return v0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgns;->zzb:Lcom/google/android/gms/internal/ads/zzgns;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgns;->zzc:Lcom/google/android/gms/internal/ads/zzgns;

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgns;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zzc:Lcom/google/android/gms/internal/ads/zzgns;

    return-object v0
.end method

.method public final zzd()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnu;->zzc:Lcom/google/android/gms/internal/ads/zzgns;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgns;->zzd:Lcom/google/android/gms/internal/ads/zzgns;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
