.class public abstract Lcom/google/android/gms/internal/ads/zzcjd;
.super Landroid/view/TextureView;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcka;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzcjr;

.field protected final zzb:Lcom/google/android/gms/internal/ads/zzckb;

.field protected final zzc:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjr;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcjr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjd;->zza:Lcom/google/android/gms/internal/ads/zzcjr;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzckb;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzckb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcka;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjd;->zzb:Lcom/google/android/gms/internal/ads/zzckb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjd;->zzc:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public zzA(I)V
    .locals 0

    return-void
.end method

.method public zzB(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcjd;->zzs(Ljava/lang/String;)V

    return-void
.end method

.method public abstract zza()I
.end method

.method public abstract zzb()I
.end method

.method public abstract zzc()I
.end method

.method public abstract zzd()I
.end method

.method public abstract zze()I
.end method

.method public abstract zzf()J
.end method

.method public abstract zzg()J
.end method

.method public abstract zzh()J
.end method

.method public abstract zzj()Ljava/lang/String;
.end method

.method public abstract zzn()V
.end method

.method public abstract zzo()V
.end method

.method public abstract zzp()V
.end method

.method public abstract zzq(I)V
.end method

.method public abstract zzr(Lcom/google/android/gms/internal/ads/zzcjc;)V
.end method

.method public abstract zzs(Ljava/lang/String;)V
.end method

.method public abstract zzt()V
.end method

.method public abstract zzu(FF)V
.end method

.method public zzw(I)V
    .locals 0

    return-void
.end method

.method public zzx(I)V
    .locals 0

    return-void
.end method

.method public zzy(I)V
    .locals 0

    return-void
.end method

.method public zzz(I)V
    .locals 0

    return-void
.end method
