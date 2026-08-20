.class final Lcom/google/android/gms/internal/ads/zzro;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsr;
.implements Lcom/google/android/gms/internal/ads/zzpj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzrq;

.field private final zzb:Ljava/lang/Object;

.field private zzc:Lcom/google/android/gms/internal/ads/zzsq;

.field private zzd:Lcom/google/android/gms/internal/ads/zzpi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzrq;Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zza:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzri;->zze(Lcom/google/android/gms/internal/ads/zzsh;)Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzri;->zzc(Lcom/google/android/gms/internal/ads/zzsh;)Lcom/google/android/gms/internal/ads/zzpi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzpi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzro;->zzb:Ljava/lang/Object;

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzsd;)Lcom/google/android/gms/internal/ads/zzsd;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zza:Lcom/google/android/gms/internal/ads/zzrq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzb:Ljava/lang/Object;

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zzsd;->zzc:J

    invoke-virtual {v0, v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzrq;->zzw(Ljava/lang/Object;J)J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zza:Lcom/google/android/gms/internal/ads/zzrq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzb:Ljava/lang/Object;

    iget-wide v10, p1, Lcom/google/android/gms/internal/ads/zzsd;->zzd:J

    .line 2
    invoke-virtual {v0, v1, v10, v11}, Lcom/google/android/gms/internal/ads/zzrq;->zzw(Ljava/lang/Object;J)J

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzsd;->zzc:J

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzsd;->zzd:J

    cmp-long v0, v10, v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsd;

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzsd;->zza:I

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzsd;->zzb:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzsd;-><init>(IILcom/google/android/gms/internal/ads/zzaf;ILjava/lang/Object;JJ)V

    return-object v0
.end method

.method private final zzg(ILcom/google/android/gms/internal/ads/zzsh;)Z
    .locals 3

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zza:Lcom/google/android/gms/internal/ads/zzrq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzb:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzrq;->zzx(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzsh;)Lcom/google/android/gms/internal/ads/zzsh;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zza:Lcom/google/android/gms/internal/ads/zzrq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzb:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzrq;->zzv(Ljava/lang/Object;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzsq;

    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzsq;->zza:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsq;->zzb:Lcom/google/android/gms/internal/ads/zzsh;

    .line 4
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzen;->zzT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zza:Lcom/google/android/gms/internal/ads/zzrq;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzri;->zzf(ILcom/google/android/gms/internal/ads/zzsh;J)Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzsq;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzpi;

    .line 5
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzpi;->zza:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpi;->zzb:Lcom/google/android/gms/internal/ads/zzsh;

    .line 6
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzen;->zzT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zza:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzri;->zzd(ILcom/google/android/gms/internal/ads/zzsh;)Lcom/google/android/gms/internal/ads/zzpi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzpi;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final zzaf(ILcom/google/android/gms/internal/ads/zzsh;Lcom/google/android/gms/internal/ads/zzsd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzro;->zzg(ILcom/google/android/gms/internal/ads/zzsh;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzsq;

    .line 2
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzro;->zzf(Lcom/google/android/gms/internal/ads/zzsd;)Lcom/google/android/gms/internal/ads/zzsd;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzsq;->zzc(Lcom/google/android/gms/internal/ads/zzsd;)V

    :cond_0
    return-void
.end method

.method public final zzag(ILcom/google/android/gms/internal/ads/zzsh;Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzsd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzro;->zzg(ILcom/google/android/gms/internal/ads/zzsh;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzsq;

    .line 2
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/zzro;->zzf(Lcom/google/android/gms/internal/ads/zzsd;)Lcom/google/android/gms/internal/ads/zzsd;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzsq;->zze(Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzsd;)V

    :cond_0
    return-void
.end method

.method public final zzah(ILcom/google/android/gms/internal/ads/zzsh;Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzsd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzro;->zzg(ILcom/google/android/gms/internal/ads/zzsh;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzsq;

    .line 2
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/zzro;->zzf(Lcom/google/android/gms/internal/ads/zzsd;)Lcom/google/android/gms/internal/ads/zzsd;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzsq;->zzg(Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzsd;)V

    :cond_0
    return-void
.end method

.method public final zzai(ILcom/google/android/gms/internal/ads/zzsh;Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzsd;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzro;->zzg(ILcom/google/android/gms/internal/ads/zzsh;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzsq;

    .line 2
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/zzro;->zzf(Lcom/google/android/gms/internal/ads/zzsd;)Lcom/google/android/gms/internal/ads/zzsd;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/google/android/gms/internal/ads/zzsq;->zzi(Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzsd;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public final zzaj(ILcom/google/android/gms/internal/ads/zzsh;Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzsd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzro;->zzg(ILcom/google/android/gms/internal/ads/zzsh;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzsq;

    .line 2
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/zzro;->zzf(Lcom/google/android/gms/internal/ads/zzsd;)Lcom/google/android/gms/internal/ads/zzsd;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzsq;->zzk(Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzsd;)V

    :cond_0
    return-void
.end method
