.class public final synthetic Lcom/google/android/gms/internal/ads/zzfor;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfmm;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfol;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfor;->zza:Lcom/google/android/gms/internal/ads/zzfol;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfor;->zza:Lcom/google/android/gms/internal/ads/zzfol;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbks;->zzc:Lcom/google/android/gms/internal/ads/zzbkl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbkl;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfol;->zzh()Lcom/google/android/gms/internal/ads/zzfol;

    :cond_0
    return-object p1
.end method
