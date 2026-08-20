.class public final synthetic Lcom/google/android/gms/internal/ads/zzbje;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfyu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbjh;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbjb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbjh;Lcom/google/android/gms/internal/ads/zzbjb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbje;->zza:Lcom/google/android/gms/internal/ads/zzbjh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbje;->zzb:Lcom/google/android/gms/internal/ads/zzbjb;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbje;->zza:Lcom/google/android/gms/internal/ads/zzbjh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbje;->zzb:Lcom/google/android/gms/internal/ads/zzbjb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjh;->zzc(Lcom/google/android/gms/internal/ads/zzbjb;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
