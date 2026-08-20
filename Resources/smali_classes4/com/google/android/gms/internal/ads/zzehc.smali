.class public final synthetic Lcom/google/android/gms/internal/ads/zzehc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzehm;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgfb;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzgfb;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzccb;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzfol;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzehm;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzccb;Lcom/google/android/gms/internal/ads/zzfol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehc;->zza:Lcom/google/android/gms/internal/ads/zzehm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzc:Lcom/google/android/gms/internal/ads/zzgfb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzd:Lcom/google/android/gms/internal/ads/zzccb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehc;->zze:Lcom/google/android/gms/internal/ads/zzfol;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->zza:Lcom/google/android/gms/internal/ads/zzehm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzc:Lcom/google/android/gms/internal/ads/zzgfb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzd:Lcom/google/android/gms/internal/ads/zzccb;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzehc;->zze:Lcom/google/android/gms/internal/ads/zzfol;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzehm;->zzj(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzccb;Lcom/google/android/gms/internal/ads/zzfol;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
