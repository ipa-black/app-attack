.class public final Lcom/google/android/gms/internal/ads/zzcsg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcpm;

.field private zzb:Lcom/google/android/gms/internal/ads/zzctt;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfnn;

.field private zzd:Lcom/google/android/gms/internal/ads/zzcug;

.field private zze:Lcom/google/android/gms/internal/ads/zzfkh;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcsf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcpj;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zza:Lcom/google/android/gms/internal/ads/zzcpm;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcpm;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzb:Lcom/google/android/gms/internal/ads/zzctt;

    const-class v1, Lcom/google/android/gms/internal/ads/zzctt;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzc:Lcom/google/android/gms/internal/ads/zzfnn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfnn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzc:Lcom/google/android/gms/internal/ads/zzfnn;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzd:Lcom/google/android/gms/internal/ads/zzcug;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcug;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcug;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzd:Lcom/google/android/gms/internal/ads/zzcug;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zze:Lcom/google/android/gms/internal/ads/zzfkh;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfkh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zze:Lcom/google/android/gms/internal/ads/zzfkh;

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcre;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zza:Lcom/google/android/gms/internal/ads/zzcpm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzb:Lcom/google/android/gms/internal/ads/zzctt;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzc:Lcom/google/android/gms/internal/ads/zzfnn;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzd:Lcom/google/android/gms/internal/ads/zzcug;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zze:Lcom/google/android/gms/internal/ads/zzfkh;

    const/4 v7, 0x0

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzcre;-><init>(Lcom/google/android/gms/internal/ads/zzcpm;Lcom/google/android/gms/internal/ads/zzctt;Lcom/google/android/gms/internal/ads/zzfnn;Lcom/google/android/gms/internal/ads/zzcug;Lcom/google/android/gms/internal/ads/zzfkh;Lcom/google/android/gms/internal/ads/zzcrd;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcpm;)Lcom/google/android/gms/internal/ads/zzcsg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zza:Lcom/google/android/gms/internal/ads/zzcpm;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzctt;)Lcom/google/android/gms/internal/ads/zzcsg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzb:Lcom/google/android/gms/internal/ads/zzctt;

    return-object p0
.end method
