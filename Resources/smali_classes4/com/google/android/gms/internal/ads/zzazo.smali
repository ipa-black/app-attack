.class public abstract Lcom/google/android/gms/internal/ads/zzazo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzazn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zzc([Lcom/google/android/gms/internal/ads/zzatj;Lcom/google/android/gms/internal/ads/zzaza;)Lcom/google/android/gms/internal/ads/zzazp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzasp;
        }
    .end annotation
.end method

.method public abstract zzd(Ljava/lang/Object;)V
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzazn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazo;->zza:Lcom/google/android/gms/internal/ads/zzazn;

    return-void
.end method

.method protected final zzg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazo;->zza:Lcom/google/android/gms/internal/ads/zzazn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzazn;->zzh()V

    :cond_0
    return-void
.end method
