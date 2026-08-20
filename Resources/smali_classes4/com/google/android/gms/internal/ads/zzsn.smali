.class public final synthetic Lcom/google/android/gms/internal/ads/zzsn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzsq;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzsr;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzry;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzsd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzsq;Lcom/google/android/gms/internal/ads/zzsr;Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzsd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzsq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzb:Lcom/google/android/gms/internal/ads/zzsr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzc:Lcom/google/android/gms/internal/ads/zzry;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzd:Lcom/google/android/gms/internal/ads/zzsd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzsq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzb:Lcom/google/android/gms/internal/ads/zzsr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzc:Lcom/google/android/gms/internal/ads/zzry;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzd:Lcom/google/android/gms/internal/ads/zzsd;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzsq;->zza:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsq;->zzb:Lcom/google/android/gms/internal/ads/zzsh;

    invoke-interface {v1, v4, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzsr;->zzaj(ILcom/google/android/gms/internal/ads/zzsh;Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzsd;)V

    return-void
.end method
