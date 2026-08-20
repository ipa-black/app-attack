.class public final synthetic Lcom/google/android/gms/internal/ads/zzenl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzenq;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgfb;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzgfb;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfix;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzfil;

.field public final synthetic zzf:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzenq;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenl;->zza:Lcom/google/android/gms/internal/ads/zzenq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzc:Lcom/google/android/gms/internal/ads/zzgfb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzd:Lcom/google/android/gms/internal/ads/zzfix;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzenl;->zze:Lcom/google/android/gms/internal/ads/zzfil;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzf:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenl;->zza:Lcom/google/android/gms/internal/ads/zzenq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzc:Lcom/google/android/gms/internal/ads/zzgfb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzd:Lcom/google/android/gms/internal/ads/zzfix;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzenl;->zze:Lcom/google/android/gms/internal/ads/zzfil;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzf:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzenq;->zzc(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdqb;

    move-result-object v0

    return-object v0
.end method
