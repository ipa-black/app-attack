.class public final synthetic Lcom/google/android/gms/internal/ads/zzfhk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzffn;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzccr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzccr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zza:Lcom/google/android/gms/internal/ads/zzccr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zza:Lcom/google/android/gms/internal/ads/zzccr;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcdn;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzceb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccr;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccr;->zzb()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzceb;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzcdn;->zzk(Lcom/google/android/gms/internal/ads/zzcdh;)V

    return-void
.end method
