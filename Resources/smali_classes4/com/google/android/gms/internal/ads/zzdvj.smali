.class public final Lcom/google/android/gms/internal/ads/zzdvj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdel;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdfu;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdgh;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdgt;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdjh;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdma;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzdfu;Lcom/google/android/gms/internal/ads/zzdgh;Lcom/google/android/gms/internal/ads/zzdgt;Lcom/google/android/gms/internal/ads/zzdjh;Lcom/google/android/gms/internal/ads/zzdma;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvj;->zza:Lcom/google/android/gms/internal/ads/zzdel;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdvj;->zzb:Lcom/google/android/gms/internal/ads/zzdfu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdvj;->zzc:Lcom/google/android/gms/internal/ads/zzdgh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdvj;->zzd:Lcom/google/android/gms/internal/ads/zzdgt;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdvj;->zze:Lcom/google/android/gms/internal/ads/zzdjh;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdvj;->zzf:Lcom/google/android/gms/internal/ads/zzdma;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdvk;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdvk;->zza(Lcom/google/android/gms/internal/ads/zzdvk;)Lcom/google/android/gms/internal/ads/zzdvh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvj;->zza:Lcom/google/android/gms/internal/ads/zzdel;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdvj;->zzc:Lcom/google/android/gms/internal/ads/zzdgh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdvj;->zzd:Lcom/google/android/gms/internal/ads/zzdgt;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdvj;->zze:Lcom/google/android/gms/internal/ads/zzdjh;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvj;->zzb:Lcom/google/android/gms/internal/ads/zzdfu;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdvi;

    invoke-direct {v5, p1}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>(Lcom/google/android/gms/internal/ads/zzdfu;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdvj;->zzf:Lcom/google/android/gms/internal/ads/zzdma;

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdvh;->zzh(Lcom/google/android/gms/internal/ads/zzdvh;Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/internal/ads/zzbow;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/internal/overlay/zzz;Lcom/google/android/gms/internal/ads/zzdmc;)V

    return-void
.end method
