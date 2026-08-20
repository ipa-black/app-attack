.class final Lcom/google/android/gms/internal/ads/zzeqh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcig;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfix;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfil;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzeqn;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzeqi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeqi;Lcom/google/android/gms/internal/ads/zzcig;Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzeqn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqh;->zze:Lcom/google/android/gms/internal/ads/zzeqi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeqh;->zza:Lcom/google/android/gms/internal/ads/zzcig;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeqh;->zzb:Lcom/google/android/gms/internal/ads/zzfix;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeqh;->zzc:Lcom/google/android/gms/internal/ads/zzfil;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeqh;->zzd:Lcom/google/android/gms/internal/ads/zzeqn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqh;->zza:Lcom/google/android/gms/internal/ads/zzcig;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqh;->zze:Lcom/google/android/gms/internal/ads/zzeqi;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeqi;->zzd(Lcom/google/android/gms/internal/ads/zzeqi;)Lcom/google/android/gms/internal/ads/zzeqr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeqh;->zzb:Lcom/google/android/gms/internal/ads/zzfix;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeqh;->zzc:Lcom/google/android/gms/internal/ads/zzfil;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeqh;->zzd:Lcom/google/android/gms/internal/ads/zzeqn;

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzeqr;->zza(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzeqn;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcig;->zzd(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method
