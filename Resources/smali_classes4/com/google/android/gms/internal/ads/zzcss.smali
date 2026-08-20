.class final Lcom/google/android/gms/internal/ads/zzcss;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeaq;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbra;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcre;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcss;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhfc;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcre;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbra;Lcom/google/android/gms/internal/ads/zzcsr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzd:Lcom/google/android/gms/internal/ads/zzcss;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzc:Lcom/google/android/gms/internal/ads/zzcre;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcss;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzb:Lcom/google/android/gms/internal/ads/zzbra;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzheq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhep;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcss;->zze:Lcom/google/android/gms/internal/ads/zzhfc;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzheq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhep;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzf:Lcom/google/android/gms/internal/ads/zzhfc;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzeam;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzeam;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzg:Lcom/google/android/gms/internal/ads/zzhfc;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeao;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzeao;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;)V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzh:Lcom/google/android/gms/internal/ads/zzhfc;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzcss;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcss;->zza:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzcss;)Lcom/google/android/gms/internal/ads/zzeal;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzb:Lcom/google/android/gms/internal/ads/zzbra;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeam;->zzc(Lcom/google/android/gms/internal/ads/zzbra;)Lcom/google/android/gms/internal/ads/zzeal;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzeah;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzc:Lcom/google/android/gms/internal/ads/zzcre;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzd:Lcom/google/android/gms/internal/ads/zzcss;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcsm;-><init>(Lcom/google/android/gms/internal/ads/zzcre;Lcom/google/android/gms/internal/ads/zzcss;Lcom/google/android/gms/internal/ads/zzcsl;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzh:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzean;

    return-object v0
.end method
