.class public final synthetic Lcom/google/android/gms/internal/ads/zzdbn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdbu;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgfb;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzgfb;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzgfb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdbu;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgfb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbn;->zza:Lcom/google/android/gms/internal/ads/zzdbu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbn;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdbn;->zzc:Lcom/google/android/gms/internal/ads/zzgfb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdbn;->zzd:Lcom/google/android/gms/internal/ads/zzgfb;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbn;->zza:Lcom/google/android/gms/internal/ads/zzdbu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbn;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdbn;->zzc:Lcom/google/android/gms/internal/ads/zzgfb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdbn;->zzd:Lcom/google/android/gms/internal/ads/zzgfb;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdbu;->zzg(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v0

    return-object v0
.end method
