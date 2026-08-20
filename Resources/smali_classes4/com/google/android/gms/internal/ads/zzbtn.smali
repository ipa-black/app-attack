.class public final synthetic Lcom/google/android/gms/internal/ads/zzbtn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbuf;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbue;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbta;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbuf;Lcom/google/android/gms/internal/ads/zzbue;Lcom/google/android/gms/internal/ads/zzbta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtn;->zza:Lcom/google/android/gms/internal/ads/zzbuf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtn;->zzb:Lcom/google/android/gms/internal/ads/zzbue;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtn;->zzc:Lcom/google/android/gms/internal/ads/zzbta;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtn;->zza:Lcom/google/android/gms/internal/ads/zzbuf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtn;->zzb:Lcom/google/android/gms/internal/ads/zzbue;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtn;->zzc:Lcom/google/android/gms/internal/ads/zzbta;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbuf;->zzi(Lcom/google/android/gms/internal/ads/zzbue;Lcom/google/android/gms/internal/ads/zzbta;)V

    return-void
.end method
