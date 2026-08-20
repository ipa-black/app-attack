.class public final synthetic Lcom/google/android/gms/internal/ads/zzepe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcoz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdwt;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcno;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdwt;Lcom/google/android/gms/internal/ads/zzcno;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepe;->zza:Lcom/google/android/gms/internal/ads/zzdwt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepe;->zzb:Lcom/google/android/gms/internal/ads/zzcno;

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepe;->zza:Lcom/google/android/gms/internal/ads/zzdwt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepe;->zzb:Lcom/google/android/gms/internal/ads/zzcno;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwt;->zzb()V

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcno;->zzaa()V

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcno;->zzP()Lcom/google/android/gms/internal/ads/zzcpb;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcpb;->zzp()V

    return-void
.end method
