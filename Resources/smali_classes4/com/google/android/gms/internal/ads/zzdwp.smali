.class public final Lcom/google/android/gms/internal/ads/zzdwp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcoa;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzapj;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbki;

.field private final zze:Lcom/google/android/gms/internal/ads/zzchu;

.field private final zzf:Lcom/google/android/gms/ads/internal/zza;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbew;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdhc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoa;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapj;Lcom/google/android/gms/internal/ads/zzbki;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbew;Lcom/google/android/gms/internal/ads/zzdhc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwp;->zza:Lcom/google/android/gms/internal/ads/zzcoa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwp;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdwp;->zzc:Lcom/google/android/gms/internal/ads/zzapj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdwp;->zzd:Lcom/google/android/gms/internal/ads/zzbki;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdwp;->zze:Lcom/google/android/gms/internal/ads/zzchu;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdwp;->zzf:Lcom/google/android/gms/ads/internal/zza;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdwp;->zzg:Lcom/google/android/gms/internal/ads/zzbew;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdwp;->zzh:Lcom/google/android/gms/internal/ads/zzdhc;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzdwp;)Lcom/google/android/gms/internal/ads/zzdhc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdwp;->zzh:Lcom/google/android/gms/internal/ads/zzdhc;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfio;)Lcom/google/android/gms/internal/ads/zzcno;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcnz;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdwp;->zzb:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcpd;->zzc(Lcom/google/android/gms/ads/internal/client/zzq;)Lcom/google/android/gms/internal/ads/zzcpd;

    move-result-object v2

    move-object/from16 v3, p1

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/zzq;->zza:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdwp;->zzc:Lcom/google/android/gms/internal/ads/zzapj;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdwp;->zzd:Lcom/google/android/gms/internal/ads/zzbki;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzdwp;->zze:Lcom/google/android/gms/internal/ads/zzchu;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzdwe;

    invoke-direct {v10, p0}, Lcom/google/android/gms/internal/ads/zzdwe;-><init>(Lcom/google/android/gms/internal/ads/zzdwp;)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzdwp;->zzf:Lcom/google/android/gms/ads/internal/zza;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzdwp;->zzg:Lcom/google/android/gms/internal/ads/zzbew;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 2
    invoke-static/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/zzcoa;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcpd;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzapj;Lcom/google/android/gms/internal/ads/zzbki;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzbjy;Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbew;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfio;)Lcom/google/android/gms/internal/ads/zzcno;

    move-result-object v1

    return-object v1
.end method
