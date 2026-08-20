.class public final Lcom/google/android/gms/internal/ads/zzkn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field public final zza:J

.field public final zzb:Lcom/google/android/gms/internal/ads/zzcn;

.field public final zzc:I

.field public final zzd:Lcom/google/android/gms/internal/ads/zzsh;

.field public final zze:J

.field public final zzf:Lcom/google/android/gms/internal/ads/zzcn;

.field public final zzg:I

.field public final zzh:Lcom/google/android/gms/internal/ads/zzsh;

.field public final zzi:J

.field public final zzj:J


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/ads/zzcn;ILcom/google/android/gms/internal/ads/zzsh;JLcom/google/android/gms/internal/ads/zzcn;ILcom/google/android/gms/internal/ads/zzsh;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzkn;->zza:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzb:Lcom/google/android/gms/internal/ads/zzcn;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzc:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzd:Lcom/google/android/gms/internal/ads/zzsh;

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzkn;->zze:J

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzf:Lcom/google/android/gms/internal/ads/zzcn;

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzg:I

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzh:Lcom/google/android/gms/internal/ads/zzsh;

    iput-wide p11, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzi:J

    iput-wide p13, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzj:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzkn;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkn;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzkn;->zza:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzc:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzkn;->zzc:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkn;->zze:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzkn;->zze:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzg:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzkn;->zzg:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzi:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzkn;->zzi:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzj:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzkn;->zzj:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzb:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzkn;->zzb:Lcom/google/android/gms/internal/ads/zzcn;

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfxz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzd:Lcom/google/android/gms/internal/ads/zzsh;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzkn;->zzd:Lcom/google/android/gms/internal/ads/zzsh;

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfxz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzf:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzkn;->zzf:Lcom/google/android/gms/internal/ads/zzcn;

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfxz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzh:Lcom/google/android/gms/internal/ads/zzsh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkn;->zzh:Lcom/google/android/gms/internal/ads/zzsh;

    .line 5
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzfxz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkn;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzb:Lcom/google/android/gms/internal/ads/zzcn;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzc:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzd:Lcom/google/android/gms/internal/ads/zzsh;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkn;->zze:J

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzf:Lcom/google/android/gms/internal/ads/zzcn;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzg:I

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzh:Lcom/google/android/gms/internal/ads/zzsh;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzi:J

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkn;->zzj:J

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
