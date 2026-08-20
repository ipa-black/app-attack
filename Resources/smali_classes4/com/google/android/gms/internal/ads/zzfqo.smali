.class public final Lcom/google/android/gms/internal/ads/zzfqo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzfqo;


# instance fields
.field private zzb:F

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfqh;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfqf;

.field private zze:Lcom/google/android/gms/internal/ads/zzfqg;

.field private zzf:Lcom/google/android/gms/internal/ads/zzfqi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfqh;Lcom/google/android/gms/internal/ads/zzfqf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfqo;->zzb:F

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqo;->zzc:Lcom/google/android/gms/internal/ads/zzfqh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfqo;->zzd:Lcom/google/android/gms/internal/ads/zzfqf;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzfqo;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqo;->zza:Lcom/google/android/gms/internal/ads/zzfqo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfqf;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfqh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfqh;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfqo;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfqo;-><init>(Lcom/google/android/gms/internal/ads/zzfqh;Lcom/google/android/gms/internal/ads/zzfqf;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfqo;->zza:Lcom/google/android/gms/internal/ads/zzfqo;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqo;->zza:Lcom/google/android/gms/internal/ads/zzfqo;

    return-object v0
.end method


# virtual methods
.method public final zza()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfqo;->zzb:F

    return v0
.end method

.method public final zzc(Landroid/content/Context;)V
    .locals 7

    .line 1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfqe;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzfqe;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfqg;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v4, p0

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfqg;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfqe;Lcom/google/android/gms/internal/ads/zzfqo;[B)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzfqo;->zze:Lcom/google/android/gms/internal/ads/zzfqg;

    return-void
.end method

.method public final zzd(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfqo;->zzb:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqo;->zzf:Lcom/google/android/gms/internal/ads/zzfqi;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqi;->zza()Lcom/google/android/gms/internal/ads/zzfqi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqo;->zzf:Lcom/google/android/gms/internal/ads/zzfqi;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqo;->zzf:Lcom/google/android/gms/internal/ads/zzfqi;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqi;->zzb()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfpx;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfpx;->zzg()Lcom/google/android/gms/internal/ads/zzfqu;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfqu;->zzh(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zze()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqj;->zza()Lcom/google/android/gms/internal/ads/zzfqj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfqj;->zzd(Lcom/google/android/gms/internal/ads/zzfqo;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqj;->zza()Lcom/google/android/gms/internal/ads/zzfqj;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqj;->zzb()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrk;->zzd()Lcom/google/android/gms/internal/ads/zzfrk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrk;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqo;->zze:Lcom/google/android/gms/internal/ads/zzfqg;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqg;->zza()V

    return-void
.end method

.method public final zzf()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrk;->zzd()Lcom/google/android/gms/internal/ads/zzfrk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrk;->zzj()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqj;->zza()Lcom/google/android/gms/internal/ads/zzfqj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqj;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqo;->zze:Lcom/google/android/gms/internal/ads/zzfqg;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqg;->zzb()V

    return-void
.end method
