.class public final Lcom/google/android/gms/internal/ads/zzere;
.super Lcom/google/android/gms/ads/internal/client/zzbp;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzfje;

.field final zzb:Lcom/google/android/gms/internal/ads/zzdqp;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcpj;

.field private zze:Lcom/google/android/gms/ads/internal/client/zzbh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcpj;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbp;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfje;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzere;->zza:Lcom/google/android/gms/internal/ads/zzfje;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdqp;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdqp;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzere;->zzb:Lcom/google/android/gms/internal/ads/zzdqp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzere;->zzd:Lcom/google/android/gms/internal/ads/zzcpj;

    .line 3
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzfje;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfje;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzere;->zzc:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zze()Lcom/google/android/gms/ads/internal/client/zzbn;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzere;->zzb:Lcom/google/android/gms/internal/ads/zzdqp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqp;->zzg()Lcom/google/android/gms/internal/ads/zzdqr;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzere;->zza:Lcom/google/android/gms/internal/ads/zzfje;

    .line 2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdqr;->zzi()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfje;->zzB(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfje;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzere;->zza:Lcom/google/android/gms/internal/ads/zzfje;

    .line 3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdqr;->zzh()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfje;->zzC(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfje;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzere;->zza:Lcom/google/android/gms/internal/ads/zzfje;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfje;->zzg()Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzq;->zzc()Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfje;->zzr(Lcom/google/android/gms/ads/internal/client/zzq;)Lcom/google/android/gms/internal/ads/zzfje;

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzerf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzere;->zzc:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzere;->zzd:Lcom/google/android/gms/internal/ads/zzcpj;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzere;->zza:Lcom/google/android/gms/internal/ads/zzfje;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzere;->zze:Lcom/google/android/gms/ads/internal/client/zzbh;

    move-object v1, v0

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzerf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcpj;Lcom/google/android/gms/internal/ads/zzfje;Lcom/google/android/gms/internal/ads/zzdqr;Lcom/google/android/gms/ads/internal/client/zzbh;)V

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbnj;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzere;->zzb:Lcom/google/android/gms/internal/ads/zzdqp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqp;->zza(Lcom/google/android/gms/internal/ads/zzbnj;)Lcom/google/android/gms/internal/ads/zzdqp;

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbnm;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzere;->zzb:Lcom/google/android/gms/internal/ads/zzdqp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqp;->zzb(Lcom/google/android/gms/internal/ads/zzbnm;)Lcom/google/android/gms/internal/ads/zzdqp;

    return-void
.end method

.method public final zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbns;Lcom/google/android/gms/internal/ads/zzbnp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzere;->zzb:Lcom/google/android/gms/internal/ads/zzdqp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqp;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbns;Lcom/google/android/gms/internal/ads/zzbnp;)Lcom/google/android/gms/internal/ads/zzdqp;

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbsu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzere;->zzb:Lcom/google/android/gms/internal/ads/zzdqp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqp;->zzd(Lcom/google/android/gms/internal/ads/zzbsu;)Lcom/google/android/gms/internal/ads/zzdqp;

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzbnw;Lcom/google/android/gms/ads/internal/client/zzq;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzere;->zzb:Lcom/google/android/gms/internal/ads/zzdqp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqp;->zze(Lcom/google/android/gms/internal/ads/zzbnw;)Lcom/google/android/gms/internal/ads/zzdqp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzere;->zza:Lcom/google/android/gms/internal/ads/zzfje;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfje;->zzr(Lcom/google/android/gms/ads/internal/client/zzq;)Lcom/google/android/gms/internal/ads/zzfje;

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzbnz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzere;->zzb:Lcom/google/android/gms/internal/ads/zzdqp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqp;->zzf(Lcom/google/android/gms/internal/ads/zzbnz;)Lcom/google/android/gms/internal/ads/zzdqp;

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/ads/internal/client/zzbh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzere;->zze:Lcom/google/android/gms/ads/internal/client/zzbh;

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzere;->zza:Lcom/google/android/gms/internal/ads/zzfje;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfje;->zzq(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfje;

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzbsl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzere;->zza:Lcom/google/android/gms/internal/ads/zzfje;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfje;->zzv(Lcom/google/android/gms/internal/ads/zzbsl;)Lcom/google/android/gms/internal/ads/zzfje;

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzblz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzere;->zza:Lcom/google/android/gms/internal/ads/zzfje;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfje;->zzA(Lcom/google/android/gms/internal/ads/zzblz;)Lcom/google/android/gms/internal/ads/zzfje;

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzere;->zza:Lcom/google/android/gms/internal/ads/zzfje;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfje;->zzD(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfje;

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/ads/internal/client/zzcf;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzere;->zza:Lcom/google/android/gms/internal/ads/zzfje;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfje;->zzQ(Lcom/google/android/gms/ads/internal/client/zzcf;)Lcom/google/android/gms/internal/ads/zzfje;

    return-void
.end method
