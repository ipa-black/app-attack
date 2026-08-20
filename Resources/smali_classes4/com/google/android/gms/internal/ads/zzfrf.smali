.class final Lcom/google/android/gms/internal/ads/zzfrf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfrk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfrk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrf;->zza:Lcom/google/android/gms/internal/ads/zzfrk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrf;->zza:Lcom/google/android/gms/internal/ads/zzfrk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfrk;->zzc(Lcom/google/android/gms/internal/ads/zzfrk;)Lcom/google/android/gms/internal/ads/zzfre;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfre;->zzb()V

    return-void
.end method
