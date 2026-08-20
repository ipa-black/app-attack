.class final Lcom/google/android/gms/internal/ads/zzbud;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcik;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbue;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbue;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbud;->zza:Lcom/google/android/gms/internal/ads/zzbue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbta;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcib;->zze:Lcom/google/android/gms/internal/ads/zzgfc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbuc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbuc;-><init>(Lcom/google/android/gms/internal/ads/zzbud;Lcom/google/android/gms/internal/ads/zzbta;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfc;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
