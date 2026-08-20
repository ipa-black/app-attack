.class public Lcom/google/android/gms/internal/ads/zzcys;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdal;

.field private final zzb:Landroid/view/View;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfim;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcno;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcno;Lcom/google/android/gms/internal/ads/zzdal;Lcom/google/android/gms/internal/ads/zzfim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcys;->zzb:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcys;->zzd:Lcom/google/android/gms/internal/ads/zzcno;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcys;->zza:Lcom/google/android/gms/internal/ads/zzdal;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcys;->zzc:Lcom/google/android/gms/internal/ads/zzfim;

    return-void
.end method

.method public static final zzf(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfjg;)Lcom/google/android/gms/internal/ads/zzdlu;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdlu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcyq;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcyq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfjg;)V

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcib;->zzf:Lcom/google/android/gms/internal/ads/zzgfc;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzdlu;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static final zzg(Lcom/google/android/gms/internal/ads/zzdac;)Ljava/util/Set;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdlu;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcib;->zzf:Lcom/google/android/gms/internal/ads/zzgfc;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdlu;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final zzh(Lcom/google/android/gms/internal/ads/zzdaa;)Lcom/google/android/gms/internal/ads/zzdlu;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdlu;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcib;->zze:Lcom/google/android/gms/internal/ads/zzgfc;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdlu;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcys;->zzb:Landroid/view/View;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzcno;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcys;->zzd:Lcom/google/android/gms/internal/ads/zzcno;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzdal;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcys;->zza:Lcom/google/android/gms/internal/ads/zzdal;

    return-object v0
.end method

.method public zzd(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzdfz;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdfz;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzfim;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcys;->zzc:Lcom/google/android/gms/internal/ads/zzfim;

    return-object v0
.end method
