.class final Lcom/google/android/gms/internal/ads/zzcfa;
.super Lcom/google/android/gms/internal/ads/zzcfu;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zzb:Lcom/google/android/gms/common/util/Clock;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcfa;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzhfc;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzcft;Lcom/google/android/gms/internal/ads/zzcez;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfu;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzc:Lcom/google/android/gms/internal/ads/zzcfa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzb:Lcom/google/android/gms/common/util/Clock;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzheq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhep;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzd:Lcom/google/android/gms/internal/ads/zzhfc;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzheq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhep;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zze:Lcom/google/android/gms/internal/ads/zzhfc;

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzheq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhep;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzf:Lcom/google/android/gms/internal/ads/zzhfc;

    new-instance p5, Lcom/google/android/gms/internal/ads/zzces;

    invoke-direct {p5, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzces;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;)V

    .line 4
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzg:Lcom/google/android/gms/internal/ads/zzhfc;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzheq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhep;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzh:Lcom/google/android/gms/internal/ads/zzhfc;

    new-instance p5, Lcom/google/android/gms/internal/ads/zzceu;

    invoke-direct {p5, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzceu;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;)V

    .line 6
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzi:Lcom/google/android/gms/internal/ads/zzhfc;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzcew;

    invoke-direct {p4, p2, p3}, Lcom/google/android/gms/internal/ads/zzcew;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzj:Lcom/google/android/gms/internal/ads/zzhfc;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcfz;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzcfz;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;)V

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzk:Lcom/google/android/gms/internal/ads/zzhfc;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/ads/zzcer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzg:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcer;

    return-object v0
.end method

.method final zzb()Lcom/google/android/gms/internal/ads/zzcev;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcev;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzb:Lcom/google/android/gms/common/util/Clock;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzi:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcet;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcev;-><init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzcet;)V

    return-object v0
.end method

.method final zzc()Lcom/google/android/gms/internal/ads/zzcfy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzk:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfy;

    return-object v0
.end method
