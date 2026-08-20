.class public final synthetic Lcom/google/android/gms/internal/ads/zzdds;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzddt;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgfb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzddt;Lcom/google/android/gms/internal/ads/zzgfb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdds;->zza:Lcom/google/android/gms/internal/ads/zzddt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdds;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdds;->zza:Lcom/google/android/gms/internal/ads/zzddt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdds;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzddt;->zza(Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzccb;

    move-result-object v0

    return-object v0
.end method
