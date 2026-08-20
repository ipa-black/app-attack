.class public final Lcom/google/android/gms/internal/ads/zzdva;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdel;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdfu;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdgh;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdgt;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdjh;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfil;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfio;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzdfu;Lcom/google/android/gms/internal/ads/zzdgh;Lcom/google/android/gms/internal/ads/zzdgt;Lcom/google/android/gms/internal/ads/zzdjh;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfio;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdva;->zza:Lcom/google/android/gms/internal/ads/zzdel;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzb:Lcom/google/android/gms/internal/ads/zzdfu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzc:Lcom/google/android/gms/internal/ads/zzdgh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzd:Lcom/google/android/gms/internal/ads/zzdgt;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdva;->zze:Lcom/google/android/gms/internal/ads/zzdjh;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzf:Lcom/google/android/gms/internal/ads/zzfil;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzg:Lcom/google/android/gms/internal/ads/zzfio;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdve;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdve;->zzb(Lcom/google/android/gms/internal/ads/zzdve;)Lcom/google/android/gms/internal/ads/zzduy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdva;->zza:Lcom/google/android/gms/internal/ads/zzdel;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzc:Lcom/google/android/gms/internal/ads/zzdgh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzd:Lcom/google/android/gms/internal/ads/zzdgt;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdva;->zze:Lcom/google/android/gms/internal/ads/zzdjh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzb:Lcom/google/android/gms/internal/ads/zzdfu;

    .line 2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzduz;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzduz;-><init>(Lcom/google/android/gms/internal/ads/zzdfu;)V

    move-object v5, v6

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzduy;->zzh(Lcom/google/android/gms/internal/ads/zzduy;Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/internal/ads/zzbow;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/internal/overlay/zzz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzf:Lcom/google/android/gms/internal/ads/zzfil;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzg:Lcom/google/android/gms/internal/ads/zzfio;

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdve;->zze(Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfio;)V

    return-void
.end method
