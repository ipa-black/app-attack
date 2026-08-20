.class final Lcom/google/android/gms/internal/ads/zzawo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzawx;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzavp;

.field public zzc:Lcom/google/android/gms/internal/ads/zzawv;

.field public zzd:Lcom/google/android/gms/internal/ads/zzawl;

.field public zze:I

.field public zzf:I

.field public zzg:I

.field public zzh:Lcom/google/android/gms/internal/ads/zzavo;

.field public zzi:Lcom/google/android/gms/internal/ads/zzaww;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzavp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zza:Lcom/google/android/gms/internal/ads/zzawx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzb:Lcom/google/android/gms/internal/ads/zzavp;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/zzawl;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzc:Lcom/google/android/gms/internal/ads/zzawv;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzd:Lcom/google/android/gms/internal/ads/zzawl;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzb:Lcom/google/android/gms/internal/ads/zzavp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzawv;->zzf:Lcom/google/android/gms/internal/ads/zzatd;

    .line 1
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzavp;->zza(Lcom/google/android/gms/internal/ads/zzatd;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzawo;->zzb()V

    return-void
.end method

.method public final zzb()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zza:Lcom/google/android/gms/internal/ads/zzawx;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzawx;->zzd:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzawx;->zzr:J

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzawx;->zzl:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzawx;->zzq:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzawx;->zzn:Lcom/google/android/gms/internal/ads/zzaww;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zze:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzg:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzf:I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzh:Lcom/google/android/gms/internal/ads/zzavo;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzi:Lcom/google/android/gms/internal/ads/zzaww;

    return-void
.end method
