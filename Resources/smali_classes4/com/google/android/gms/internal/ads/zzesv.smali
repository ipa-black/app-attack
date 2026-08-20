.class public final synthetic Lcom/google/android/gms/internal/ads/zzesv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzesx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzesx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zza:Lcom/google/android/gms/internal/ads/zzesx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesv;->zza:Lcom/google/android/gms/internal/ads/zzesx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzesx;->zze:Lcom/google/android/gms/internal/ads/zzesy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzesy;->zzd(Lcom/google/android/gms/internal/ads/zzesy;)Lcom/google/android/gms/internal/ads/zzeso;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeso;->zzb()Lcom/google/android/gms/internal/ads/zzdgb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdgb;->zzn()V

    return-void
.end method
