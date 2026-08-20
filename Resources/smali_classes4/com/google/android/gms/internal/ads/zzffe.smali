.class final Lcom/google/android/gms/internal/ads/zzffe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzflm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfga;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfga;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffe;->zza:Lcom/google/android/gms/internal/ads/zzfga;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfln;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffe;->zza:Lcom/google/android/gms/internal/ads/zzfga;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzfgb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfff;->zza:Lcom/google/android/gms/internal/ads/zzffz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzffb;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzffb;->zzb(Lcom/google/android/gms/internal/ads/zzfgb;Lcom/google/android/gms/internal/ads/zzffz;Lcom/google/android/gms/internal/ads/zzddw;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzflb;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffe;->zza:Lcom/google/android/gms/internal/ads/zzfga;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzffb;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffb;->zza()Lcom/google/android/gms/internal/ads/zzddw;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzflb;->zza:Lcom/google/android/gms/internal/ads/zzddw;

    return-void
.end method
