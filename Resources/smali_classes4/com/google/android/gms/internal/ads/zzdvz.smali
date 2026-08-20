.class public final Lcom/google/android/gms/internal/ads/zzdvz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhep;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhfc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvz;->zza:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdvz;->zzb:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdvz;->zzc:Lcom/google/android/gms/internal/ads/zzhfc;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvz;->zza:Lcom/google/android/gms/internal/ads/zzhfc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvz;->zzb:Lcom/google/android/gms/internal/ads/zzhfc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdvz;->zzc:Lcom/google/android/gms/internal/ads/zzhfc;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdee;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdee;->zza()Lcom/google/android/gms/internal/ads/zzfjg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfjg;->zzo:Lcom/google/android/gms/internal/ads/zzfit;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfit;->zza:I

    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzepx;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzepx;->zza()Lcom/google/android/gms/internal/ads/zzepw;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzepx;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzepx;->zza()Lcom/google/android/gms/internal/ads/zzepw;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
